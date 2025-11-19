uint64_t sub_1D6BE3564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FormatFile.kind.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 9;
      goto LABEL_17;
    case 2u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 1;
      goto LABEL_17;
    case 3u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 2;
      goto LABEL_17;
    case 4u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 10;
      goto LABEL_17;
    case 5u:
      v8 = 3;
      goto LABEL_12;
    case 6u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 4;
      goto LABEL_17;
    case 7u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 5;
      goto LABEL_17;
    case 8u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 6;
      goto LABEL_17;
    case 9u:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 7;
      goto LABEL_17;
    case 0xAu:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 8;
      goto LABEL_17;
    case 0xBu:
      v8 = 11;
LABEL_12:
      *a1 = v8;
      return sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
    case 0xCu:
      result = sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
      v10 = 12;
LABEL_17:
      *a1 = v10;
      return result;
    default:
      *a1 = 0;
      return sub_1D6BE50A0(v7, type metadata accessor for FormatFile);
  }
}

uint64_t sub_1D6BE3824()
{
  v1 = type metadata accessor for FormatBindingContent();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5DF6830(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = *v16;
      v34 = *(v16 + 52) | (v16[106] << 16);
      v35 = *(v16 + 12);

      sub_1D62B6F70(v35, v34);
      break;
    case 2u:
      v24 = *(v16 + 7);
      *v50 = *(v16 + 6);
      *&v50[16] = v24;
      v51 = *(v16 + 8);
      v25 = *(v16 + 1);
      v44 = *v16;
      v26 = *(v16 + 2);
      v27 = *(v16 + 3);
      v45 = v25;
      v46 = v26;
      v28 = *(v16 + 4);
      v49 = *(v16 + 5);
      v47 = v27;
      v48 = v28;
      v17 = v44;

      sub_1D5D68304(&v44);
      break;
    case 3u:
      v29 = *(v16 + 5);
      v48 = *(v16 + 4);
      v49 = v29;
      *v50 = *(v16 + 6);
      *&v50[9] = *(v16 + 105);
      v30 = *(v16 + 1);
      v44 = *v16;
      v31 = *(v16 + 2);
      v32 = *(v16 + 3);
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v17 = v44;

      sub_1D66876CC(&v44);
      break;
    case 4u:
      v17 = *v16;

      break;
    case 5u:
      sub_1D6BE3564(v16, v8, type metadata accessor for FormatPackage);
      v17 = *v8;

      sub_1D6BE50A0(v8, type metadata accessor for FormatPackage);
      break;
    case 6u:
      v17 = *v16;

      break;
    case 7u:
      v33 = *v16;
      swift_beginAccess();
      v17 = *(v33 + 16);

      break;
    case 8u:
      v17 = *v16;

      break;
    case 9u:
      v17 = *v16;

      break;
    case 0xAu:
      v17 = *v16;
      v36 = *(v16 + 4);
      v37 = *(v16 + 5);
      v38 = *(v16 + 6);
      v39 = *(v16 + 7);
      v40 = *(v16 + 8);
      v41 = *(v16 + 9);
      v42 = v16[80];

      sub_1D60CF6F4(v36, v37, v38, v39, v40, v41, v42);
      break;
    case 0xBu:
      sub_1D6BE3564(v16, v4, type metadata accessor for FormatBindingContent);
      v17 = *v4;

      sub_1D6BE50A0(v4, type metadata accessor for FormatBindingContent);
      break;
    case 0xCu:
      v18 = *(v16 + 9);
      v51 = *(v16 + 8);
      v52 = v18;
      v53[0] = *(v16 + 10);
      *(v53 + 15) = *(v16 + 175);
      v19 = *(v16 + 5);
      v48 = *(v16 + 4);
      v49 = v19;
      v20 = *(v16 + 7);
      *v50 = *(v16 + 6);
      *&v50[16] = v20;
      v21 = *(v16 + 1);
      v44 = *v16;
      v22 = *(v16 + 2);
      v23 = *(v16 + 3);
      v45 = v21;
      v46 = v22;
      v47 = v23;
      v17 = v44;

      sub_1D5ECF21C(&v44);
      break;
    default:
      sub_1D6BE3564(v16, v12, type metadata accessor for FormatContent);
      v17 = *v12;

      sub_1D6BE50A0(v12, type metadata accessor for FormatContent);
      break;
  }

  return v17;
}

uint64_t sub_1D6BE3D70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  MEMORY[0x1DA6FC0B0](a4);

  return sub_1D72621EC();
}

uint64_t sub_1D6BE3DFC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D7264A0C();
  sub_1D6BE3D70(v5, v1, v2, v3);
  return sub_1D7264A5C();
}

uint64_t sub_1D6BE3E64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D7264A0C();
  sub_1D6BE3D70(v5, v1, v2, v3);
  return sub_1D7264A5C();
}

uint64_t sub_1D6BE3ED8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_5;
    case 2:
      if (a6 == 2)
      {
        goto LABEL_5;
      }

      return 0;
    case 3:
      if (a6 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    case 4:
      if (a6 == 4)
      {
        goto LABEL_5;
      }

      return 0;
    case 5:
      if (a6 == 5)
      {
        goto LABEL_5;
      }

      return 0;
    case 6:
      if (a6 == 6)
      {
        goto LABEL_5;
      }

      return 0;
    case 7:
      if (a6 == 7)
      {
        goto LABEL_5;
      }

      return 0;
    case 8:
      if (a6 == 8)
      {
        goto LABEL_5;
      }

      return 0;
    case 9:
      if (a6 == 9)
      {
        goto LABEL_5;
      }

      return 0;
    case 10:
      if (a6 == 10)
      {
        goto LABEL_5;
      }

      return 0;
    case 11:
      if (a6 == 11)
      {
        goto LABEL_5;
      }

      return 0;
    case 12:
      if (a6 == 12)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_5:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_1D72646CC();
      }
  }
}

uint64_t _s8NewsFeed10FormatFileO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v216 = a1;
  *&v217 = a2;
  v2 = type metadata accessor for FormatBindingContent();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v208 = (&v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v207 = &v205 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v206 = (&v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v11, v12);
  v215 = &v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v210 = (&v205 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v214 = &v205 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v213 = (&v205 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v212 = &v205 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v205 - v28);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v205 - v32);
  MEMORY[0x1EEE9AC00](v34, v35);
  v209 = (&v205 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = (&v205 - v39);
  MEMORY[0x1EEE9AC00](v41, v42);
  v211 = (&v205 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v205 - v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = (&v205 - v50);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = (&v205 - v54);
  sub_1D6BE503C();
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v205 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = &v59[*(v60 + 56)];
  sub_1D5DF6830(v216, v59);
  v62 = v217;
  *&v217 = v61;
  sub_1D5DF6830(v62, v61);
  v63 = v59;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D5DF6830(v59, v51);
      v156 = v51[5];
      v248 = v51[4];
      v249[0] = v156;
      *(v249 + 11) = *(v51 + 91);
      v157 = v51[1];
      v244 = *v51;
      v245 = v157;
      v158 = v51[3];
      v246 = v51[2];
      v247 = v158;
      v159 = v217;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v160 = v159[3];
        v161 = v159[5];
        v239 = v159[4];
        v240[0] = v161;
        *(v240 + 11) = *(v159 + 91);
        v162 = v159[1];
        v236 = *v159;
        v237[0] = v162;
        v163 = v159[3];
        v165 = *v159;
        v164 = v159[1];
        v237[1] = v159[2];
        v238 = v163;
        v166 = v51[5];
        v231 = v51[4];
        v232[0] = v166;
        *(v232 + 11) = *(v51 + 91);
        v167 = v51[1];
        v227 = *v51;
        v228 = v167;
        v168 = v51[3];
        v229 = v51[2];
        v230 = v168;
        v169 = v159[5];
        v222 = v239;
        v223[0] = v169;
        *(v223 + 11) = *(v159 + 91);
        v218 = v165;
        v219 = v164;
        v220 = v237[1];
        v221 = v160;
        v68 = _s8NewsFeed16FormatDecorationV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D6687720(&v236);
        sub_1D6687720(&v244);
        goto LABEL_50;
      }

      sub_1D6687720(&v244);
      goto LABEL_45;
    case 2u:
      sub_1D5DF6830(v59, v47);
      v122 = v47[7];
      v249[1] = v47[6];
      v249[2] = v122;
      v250 = v47[8];
      v123 = v47[3];
      v246 = v47[2];
      v247 = v123;
      v124 = v47[5];
      v248 = v47[4];
      v249[0] = v124;
      v125 = v47[1];
      v244 = *v47;
      v245 = v125;
      v126 = v217;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v127 = v126[5];
        v128 = v126[7];
        v240[1] = v126[6];
        v240[2] = v128;
        v129 = v126[7];
        v241 = v126[8];
        v130 = v126[1];
        v131 = v126[3];
        v237[1] = v126[2];
        v238 = v131;
        v132 = v126[3];
        v133 = v126[5];
        v239 = v126[4];
        v240[0] = v133;
        v134 = v126[1];
        v236 = *v126;
        v237[0] = v134;
        v135 = v47[7];
        v232[1] = v47[6];
        v232[2] = v135;
        v233 = v47[8];
        v136 = v47[3];
        v229 = v47[2];
        v230 = v136;
        v137 = v47[5];
        v231 = v47[4];
        v232[0] = v137;
        v138 = v47[1];
        v227 = *v47;
        v228 = v138;
        v223[1] = v240[1];
        v223[2] = v129;
        v224 = v126[8];
        v220 = v237[1];
        v221 = v132;
        v222 = v239;
        v223[0] = v127;
        v218 = v236;
        v219 = v130;
        v68 = _s8NewsFeed11FormatGroupV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D5D68304(&v236);
        sub_1D5D68304(&v244);
        goto LABEL_50;
      }

      sub_1D5D68304(&v244);
      goto LABEL_45;
    case 3u:
      v139 = v211;
      sub_1D5DF6830(v59, v211);
      v140 = v139[5];
      v248 = v139[4];
      v249[0] = v140;
      v249[1] = v139[6];
      *(&v249[1] + 9) = *(v139 + 105);
      v141 = v139[1];
      v244 = *v139;
      v245 = v141;
      v142 = v139[3];
      v246 = v139[2];
      v247 = v142;
      v143 = v217;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v144 = v143[5];
        v145 = v143[3];
        v239 = v143[4];
        v240[0] = v144;
        v146 = v143[5];
        v240[1] = v143[6];
        *(&v240[1] + 9) = *(v143 + 105);
        v147 = v143[1];
        v236 = *v143;
        v237[0] = v147;
        v148 = v143[3];
        v150 = *v143;
        v149 = v143[1];
        v237[1] = v143[2];
        v238 = v148;
        v151 = v139[5];
        v231 = v139[4];
        v232[0] = v151;
        v232[1] = v139[6];
        *(&v232[1] + 9) = *(v139 + 105);
        v152 = v139[1];
        v227 = *v139;
        v228 = v152;
        v153 = v139[3];
        v229 = v139[2];
        v230 = v153;
        v222 = v239;
        v223[0] = v146;
        v223[1] = v143[6];
        *(&v223[1] + 9) = *(v143 + 105);
        v218 = v150;
        v219 = v149;
        v220 = v237[1];
        v221 = v145;
        v68 = _s8NewsFeed10FormatItemV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D66876CC(&v236);
        sub_1D66876CC(&v244);
        goto LABEL_50;
      }

      sub_1D66876CC(&v244);
      goto LABEL_45;
    case 4u:
      sub_1D5DF6830(v59, v40);
      v71 = v40[1];
      v72 = v40[3];
      v73 = v40[5];
      v74 = v40[6];
      v75 = v217;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v76 = v40[4];
        v77 = v40[2];
        v78 = *v40;
        v79 = *v75;
        v80 = v75[1];
        v81 = v75[2];
        v82 = v75[5];
        v83 = v75[6];
        *&v244 = v78;
        *(&v244 + 1) = v71;
        *&v245 = v77;
        *(&v245 + 1) = v72;
        *&v246 = v76;
        *(&v246 + 1) = v73;
        *&v247 = v74;
        *&v236 = v79;
        *(&v236 + 1) = v80;
        v217 = *(v75 + 3);
        *(v237 + 8) = v217;
        *&v237[0] = v81;
        *(&v237[1] + 1) = v82;
        *&v238 = v83;
        v68 = _s8NewsFeed18FormatLocalizationV2eeoiySbAC_ACtFZ_0(&v244, &v236);

        goto LABEL_50;
      }

      goto LABEL_45;
    case 5u:
      v65 = v209;
      sub_1D5DF6830(v59, v209);
      v170 = v217;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v171 = v207;
        sub_1D6BE3564(v170, v207, type metadata accessor for FormatPackage);
        v68 = _s8NewsFeed13FormatPackageV2eeoiySbAC_ACtFZ_0(v65, v171);
        sub_1D6BE50A0(v171, type metadata accessor for FormatPackage);
        v70 = v65;
        v172 = type metadata accessor for FormatPackage;
        goto LABEL_49;
      }

      v201 = type metadata accessor for FormatPackage;
      goto LABEL_41;
    case 6u:
      sub_1D5DF6830(v59, v33);
      v174 = *v33;
      v173 = v33[1];
      v175 = v33[2];
      v176 = v217;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_45;
      }

      v177 = *v176;
      v178 = v176[1];
      v179 = v176[2];
      if (v174 == v177 && v173 == v178 || (sub_1D72646CC() & 1) != 0)
      {
        v180 = sub_1D634D33C(v175, v179);

        if (v180)
        {
          sub_1D6BE50A0(v63, type metadata accessor for FormatFile);
          v68 = 1;
          return v68 & 1;
        }
      }

      else
      {
      }

      v202 = type metadata accessor for FormatFile;
      goto LABEL_46;
    case 7u:
      sub_1D5DF6830(v59, v29);
      v154 = *v29;
      v155 = v217;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v68 = _s8NewsFeed13FormatSnippetC2eeoiySbAC_ACtFZ_0(v154, *v155);

        goto LABEL_50;
      }

      goto LABEL_45;
    case 8u:
      v191 = v212;
      sub_1D5DF6830(v59, v212);
      v192 = *(v191 + 48);
      v246 = *(v191 + 32);
      v247 = v192;
      *&v248 = *(v191 + 64);
      v193 = *(v191 + 16);
      v244 = *v191;
      v245 = v193;
      v194 = v217;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v195 = v194[1];
        v196 = v194[3];
        v237[1] = v194[2];
        v238 = v196;
        v197 = v194[1];
        v236 = *v194;
        v237[0] = v197;
        v198 = *(v191 + 48);
        v229 = *(v191 + 32);
        v230 = v198;
        v199 = *(v191 + 16);
        v227 = *v191;
        v228 = v199;
        v200 = v194[3];
        v220 = v237[1];
        v221 = v200;
        *&v239 = *(v194 + 8);
        *&v231 = *(v191 + 64);
        *&v222 = *(v194 + 8);
        v218 = v236;
        v219 = v195;
        v68 = _s8NewsFeed11FormatStyleV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D6687624(&v236);
        sub_1D6687624(&v244);
        goto LABEL_50;
      }

      sub_1D6687624(&v244);
      goto LABEL_45;
    case 9u:
      v107 = v213;
      sub_1D5DF6830(v59, v213);
      v108 = v107[5];
      v248 = v107[4];
      v249[0] = v108;
      *(v249 + 9) = *(v107 + 89);
      v109 = v107[1];
      v244 = *v107;
      v245 = v109;
      v110 = v107[3];
      v246 = v107[2];
      v247 = v110;
      v111 = v217;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v112 = v111[3];
        v113 = v111[5];
        v239 = v111[4];
        v240[0] = v113;
        *(v240 + 9) = *(v111 + 89);
        v114 = v111[1];
        v236 = *v111;
        v237[0] = v114;
        v115 = v111[3];
        v117 = *v111;
        v116 = v111[1];
        v237[1] = v111[2];
        v238 = v115;
        v118 = v107[5];
        v231 = v107[4];
        v232[0] = v118;
        *(v232 + 9) = *(v107 + 89);
        v119 = v107[1];
        v227 = *v107;
        v228 = v119;
        v120 = v107[3];
        v229 = v107[2];
        v230 = v120;
        v121 = v111[5];
        v222 = v239;
        v223[0] = v121;
        *(v223 + 9) = *(v111 + 89);
        v218 = v117;
        v219 = v116;
        v220 = v237[1];
        v221 = v112;
        v68 = _s8NewsFeed19FormatSupplementaryV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D62E2300(&v236);
        sub_1D62E2300(&v244);
        goto LABEL_50;
      }

      sub_1D62E2300(&v244);
      goto LABEL_45;
    case 0xAu:
      v181 = v214;
      sub_1D5DF6830(v59, v214);
      v182 = *(v181 + 48);
      v246 = *(v181 + 32);
      v247 = v182;
      v248 = *(v181 + 64);
      LOBYTE(v249[0]) = *(v181 + 80);
      v183 = *(v181 + 16);
      v244 = *v181;
      v245 = v183;
      v184 = v217;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v185 = v184[3];
        v186 = v184[1];
        v237[1] = v184[2];
        v238 = v185;
        v187 = v184[3];
        v239 = v184[4];
        v188 = v184[1];
        v236 = *v184;
        v237[0] = v188;
        v189 = *(v181 + 48);
        v229 = *(v181 + 32);
        v230 = v189;
        v231 = *(v181 + 64);
        v190 = *(v181 + 16);
        v227 = *v181;
        v228 = v190;
        v220 = v237[1];
        v221 = v187;
        v222 = v184[4];
        LOBYTE(v240[0]) = *(v184 + 80);
        LOBYTE(v232[0]) = *(v181 + 80);
        LOBYTE(v223[0]) = *(v184 + 80);
        v218 = v236;
        v219 = v186;
        v68 = _s8NewsFeed10FormatTypeV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D62B7D78(&v236);
        sub_1D62B7D78(&v244);
        goto LABEL_50;
      }

      sub_1D62B7D78(&v244);
      goto LABEL_45;
    case 0xBu:
      v65 = v210;
      sub_1D5DF6830(v59, v210);
      v66 = v217;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v67 = v208;
        sub_1D6BE3564(v66, v208, type metadata accessor for FormatBindingContent);
        v68 = _s8NewsFeed20FormatBindingContentV2eeoiySbAC_ACtFZ_0(v65, v67);
        v69 = type metadata accessor for FormatBindingContent;
        sub_1D6BE50A0(v67, type metadata accessor for FormatBindingContent);
        v70 = v65;
        goto LABEL_48;
      }

      v201 = type metadata accessor for FormatBindingContent;
LABEL_41:
      sub_1D6BE50A0(v65, v201);
      goto LABEL_45;
    case 0xCu:
      v84 = v215;
      sub_1D5DF6830(v59, v215);
      v85 = *(v84 + 144);
      v250 = *(v84 + 128);
      v251 = v85;
      v252[0] = *(v84 + 160);
      *(v252 + 15) = *(v84 + 175);
      v86 = *(v84 + 80);
      v248 = *(v84 + 64);
      v249[0] = v86;
      v87 = *(v84 + 112);
      v249[1] = *(v84 + 96);
      v249[2] = v87;
      v88 = *(v84 + 16);
      v244 = *v84;
      v245 = v88;
      v89 = *(v84 + 48);
      v246 = *(v84 + 32);
      v247 = v89;
      v90 = v217;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v91 = v90[9];
        v92 = v90[7];
        v241 = v90[8];
        v242 = v91;
        v93 = v90[9];
        v243[0] = v90[10];
        v94 = v90[5];
        v95 = v90[3];
        v239 = v90[4];
        v240[0] = v94;
        v96 = v90[5];
        v97 = v90[7];
        v240[1] = v90[6];
        v240[2] = v97;
        v98 = v90[1];
        v236 = *v90;
        v237[0] = v98;
        v99 = v90[3];
        v101 = *v90;
        v100 = v90[1];
        v237[1] = v90[2];
        v238 = v99;
        v102 = *(v84 + 144);
        v233 = *(v84 + 128);
        v234 = v102;
        v235[0] = *(v84 + 160);
        v103 = *(v84 + 80);
        v231 = *(v84 + 64);
        v232[0] = v103;
        v104 = *(v84 + 112);
        v232[1] = *(v84 + 96);
        v232[2] = v104;
        v105 = *(v84 + 16);
        v227 = *v84;
        v228 = v105;
        v106 = *(v84 + 48);
        v229 = *(v84 + 32);
        v230 = v106;
        v224 = v241;
        v225 = v93;
        v226[0] = v90[10];
        v222 = v239;
        v223[0] = v96;
        v223[1] = v240[1];
        v223[2] = v92;
        v218 = v101;
        v219 = v100;
        *(v243 + 15) = *(v90 + 175);
        *(v235 + 15) = *(v84 + 175);
        *(v226 + 15) = *(v90 + 175);
        v220 = v237[1];
        v221 = v95;
        v68 = _s8NewsFeed15FormatWorkspaceV2eeoiySbAC_ACtFZ_0(&v227, &v218);
        sub_1D5ECF21C(&v236);
        sub_1D5ECF21C(&v244);
        goto LABEL_50;
      }

      sub_1D5ECF21C(&v244);
      goto LABEL_45;
    default:
      sub_1D5DF6830(v59, v55);
      v64 = v217;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D6BE50A0(v55, type metadata accessor for FormatContent);
LABEL_45:
        v202 = sub_1D6BE503C;
LABEL_46:
        sub_1D6BE50A0(v63, v202);
        v68 = 0;
      }

      else
      {
        v203 = v206;
        sub_1D6BE3564(v64, v206, type metadata accessor for FormatContent);
        v68 = _s8NewsFeed13FormatContentV2eeoiySbAC_ACtFZ_0(v55, v203);
        v69 = type metadata accessor for FormatContent;
        sub_1D6BE50A0(v203, type metadata accessor for FormatContent);
        v70 = v55;
LABEL_48:
        v172 = v69;
LABEL_49:
        sub_1D6BE50A0(v70, v172);
LABEL_50:
        sub_1D6BE50A0(v63, type metadata accessor for FormatFile);
      }

      return v68 & 1;
  }
}

uint64_t sub_1D6BE4EB4(uint64_t a1)
{
  result = sub_1D6BE4F84(&qword_1EC8934F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BE4EF8(void *a1)
{
  a1[1] = sub_1D6BE4F84(&qword_1EDF34750);
  a1[2] = sub_1D6BE4F84(&qword_1EC8857F0);
  result = sub_1D6BE4F84(&qword_1EC8934F8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BE4F84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFile();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6BE4FE8()
{
  result = qword_1EC893500;
  if (!qword_1EC893500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893500);
  }

  return result;
}

void sub_1D6BE503C()
{
  if (!qword_1EC893508)
  {
    type metadata accessor for FormatFile();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC893508);
    }
  }
}

uint64_t sub_1D6BE50A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BundleSessionNotificationsStatus.rawValue.getter()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

NewsFeed::BundleSessionNotificationsStatus_optional __swiftcall BundleSessionNotificationsStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6BE51C8()
{
  result = qword_1EC893510;
  if (!qword_1EC893510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893510);
  }

  return result;
}

unint64_t sub_1D6BE52E8()
{
  result = qword_1EC893518;
  if (!qword_1EC893518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893518);
  }

  return result;
}

uint64_t FormatOptionValue.type.getter@<X0>(char *a1@<X8>)
{
  switch(*v1 >> 60)
  {
    case 1:
      v2 = 2;
      goto LABEL_15;
    case 2:
      v2 = 1;
      goto LABEL_15;
    case 3:
      v2 = 3;
      goto LABEL_15;
    case 4:
      v2 = 4;
      goto LABEL_15;
    case 5:
      v2 = 5;
      goto LABEL_15;
    case 6:
      v2 = 6;
      goto LABEL_15;
    case 7:
      v2 = 7;
      goto LABEL_15;
    case 8:
      return FormatOptionValue.type.getter();
    case 9:
      v2 = 8;
      goto LABEL_15;
    case 0xALL:
      v2 = 9;
      goto LABEL_15;
    case 0xBLL:
      v2 = *((*v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      goto LABEL_15;
    case 0xCLL:
      v2 = 10;
      goto LABEL_15;
    case 0xDLL:
      v2 = 11;
LABEL_15:
      *a1 = v2;
      break;
    default:
      *a1 = 0;
      break;
  }

  return result;
}

uint64_t static FormatOptionValue.date(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  v5 = v4;
  v6 = swift_allocBox();
  v8 = v7;
  v9 = sub_1D725891C();
  result = (*(*(v9 - 8) + 16))(v8, a1, v9);
  *(v8 + *(v5 + 36)) = MEMORY[0x1E69E7CC0];
  *a2 = v6 | 0x2000000000000000;
  return result;
}

unint64_t *sub_1D6BE54C8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v6 = *v4;
  v7 = *v4 >> 60;
  switch(v7)
  {
    case 1uLL:
      v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v14 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (v5 >> 60 == 1)
      {
        v27 = (v5 & 0xFFFFFFFFFFFFFFFLL);
        v28 = v27[2];
        v29 = v27[3];
        v30 = v27[4];
        v31 = v27[5];
        v32 = v27[6];
        v49 = v10;
        v50 = v11;
        v51 = v13;
        v52 = v12;
        v53 = v14;
        v44 = v28;
        v45 = v29;
        v46 = v30;
        v47 = v31;
        v48 = v32;

        sub_1D6E18698(&v44, a2);
      }

      else
      {
        if (v5 >> 60 != 5)
        {
          goto LABEL_27;
        }

        v15 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v16 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v17 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v49 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v50 = v11;
        v51 = v13;
        v52 = v12;
        v53 = v14;
        v44 = v10;
        v45 = v11;
        v46 = v15;
        v47 = v16;
        v48 = v17;

        sub_1D6E18698(&v44, a2);
      }

    case 2uLL:
      if (v5 >> 60 != 2)
      {
        goto LABEL_27;
      }

      return result;
    case 3uLL:
      if (v5 >> 60 != 3)
      {
        goto LABEL_27;
      }

      return result;
    case 4uLL:
      if (v5 >> 60 != 4)
      {
        goto LABEL_27;
      }

      return result;
    case 5uLL:
      if (v5 >> 60 == 1)
      {
        v34 = (v6 & 0xFFFFFFFFFFFFFFFLL);
        v35 = v34[3];
        v36 = v34[4];
        v37 = v34[2];
        v38 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v40 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v41 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v42 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v49 = v38;
        v50 = v39;
        v51 = v40;
        v52 = v41;
        v53 = v42;
        v44 = v38;
        v45 = v39;
        v46 = v37;
        v47 = v35;
        v48 = v36;

        swift_bridgeObjectRetain_n();

        v54 = v35;

        sub_1D6E18698(&v44, a2);

        return swift_bridgeObjectRelease_n();
      }

      else if (v5 >> 60 != 5)
      {
        goto LABEL_27;
      }

      return result;
    case 6uLL:
      if (v5 >> 60 != 6)
      {
        goto LABEL_27;
      }

      return result;
    case 7uLL:
      if (v5 >> 60 != 7)
      {
        goto LABEL_27;
      }

      return result;
    case 8uLL:
      goto LABEL_27;
    case 9uLL:
      if (v5 >> 60 == 9)
      {
        return result;
      }

      goto LABEL_27;
    case 0xAuLL:
      if (v5 >> 60 == 10)
      {
        return result;
      }

      goto LABEL_27;
    case 0xBuLL:
      goto LABEL_31;
    case 0xCuLL:
      if (v5 >> 60 == 12)
      {
        return result;
      }

      goto LABEL_27;
    case 0xDuLL:
      if (v5 >> 60 == 13)
      {
        return result;
      }

      goto LABEL_27;
    default:
      if (!(v5 >> 60))
      {
        return result;
      }

LABEL_27:
      v19 = v5 >> 60;
      if (v5 >> 60 == 11)
      {
LABEL_31:
        type metadata accessor for FormatLayoutError();
        sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v22 = a3;
        v22[1] = a4;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      if (v19 == 8)
      {
        if (v7 == 8)
        {
          v20 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v49 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v44 = v20;

          swift_retain_n();
          sub_1D6BE54C8(&v44, a2, a3, a4);

LABEL_36:
        }
      }

      else if (v7 == 8)
      {
        v49 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v44 = v5;
        swift_retain_n();

        sub_1D6BE54C8(&v44, a2, a3, a4);
      }

      if (v19 == 8)
      {
        v24 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v49 = *v4;
        v44 = v24;
        swift_retain_n();

        sub_1D6BE54C8(&v44, a2, a3, a4);

        goto LABEL_36;
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v26 = v6;
      v26[1] = v5;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
  }
}

uint64_t static FormatOptionValue.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49 - v10;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  v20 = *a1;
  v21 = *a2;
  v22 = *a1 >> 60;
  if (v22 > 4)
  {
    if (v22 <= 6)
    {
      if (v22 != 5)
      {
        if (v21 >> 60 != 6)
        {
          goto LABEL_41;
        }

        v28 = swift_projectBox();
        v29 = swift_projectBox();
        sub_1D6BE8848(v28, v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
        sub_1D6BE8848(v29, v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);

        v30 = sub_1D72583DC();
        v32 = v31;
        if (v30 == sub_1D72583DC() && v32 == v33)
        {
          v23 = 1;
        }

        else
        {
          v23 = sub_1D72646CC();
        }

        sub_1D6BE8040(v7, &qword_1EDF40040, sub_1D5CF49AC);
        v39 = v11;
        v40 = &qword_1EDF40040;
        v41 = sub_1D5CF49AC;
        goto LABEL_64;
      }

      v35 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v21 >> 60 == 1)
      {
        if (v35 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x20) && v36 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x28))
        {
          v23 = 1;
        }

        else
        {
          v23 = sub_1D72646CC();
        }

        goto LABEL_69;
      }

      if (v21 >> 60 == 5)
      {
        if (v35 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && v36 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_55;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (v22 == 7)
      {
        if (v21 >> 60 != 7)
        {
          goto LABEL_41;
        }

        v42 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v49 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v50 = v42;

        v25 = static FormatColor.== infix(_:_:)(&v50, &v49);
LABEL_38:
        v23 = v25;

LABEL_69:

        return v23 & 1;
      }

      if (v22 == 8)
      {
        v44 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (v21 >> 60 == 8)
        {
          v49 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v50 = v44;

          v23 = static FormatOptionValue.== infix(_:_:)(&v50, &v49);
        }

        else
        {
          v49 = *a2;
          v50 = v44;

          v23 = static FormatOptionValue.== infix(_:_:)(&v50, &v49);
        }

        goto LABEL_69;
      }

      if (v22 == 12 && v21 >> 60 == 12)
      {
        v24 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v49 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v50 = v24;

        v25 = static FormatFont.== infix(_:_:)(&v50, &v49);
        goto LABEL_38;
      }
    }

LABEL_41:
    if (v21 >> 60 == 9)
    {
      if (v22 == 9)
      {
        v43 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v49 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v50 = v43;

        v23 = static FormatAsyncImageContent.== infix(_:_:)(&v50, &v49);

        goto LABEL_69;
      }
    }

    else if (v21 >> 60 == 8)
    {
      v49 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v50 = v20;

      v23 = static FormatOptionValue.== infix(_:_:)(&v50, &v49);

      goto LABEL_69;
    }

LABEL_56:
    v23 = 0;
    return v23 & 1;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      if (v22 == 3)
      {
        if (v21 >> 60 == 3)
        {
          v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          return v23 & 1;
        }
      }

      else if (v21 >> 60 == 4)
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        return v23 & 1;
      }

      goto LABEL_41;
    }

    if (v21 >> 60 != 2)
    {
      goto LABEL_41;
    }

    v37 = swift_projectBox();
    v38 = swift_projectBox();
    sub_1D6BE8848(v37, v19, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
    sub_1D6BE8848(v38, v15, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);

    v23 = sub_1D72588AC();
    sub_1D6BE8040(v15, &qword_1EDF40030, sub_1D5FB9EDC);
    v39 = v19;
    v40 = &qword_1EDF40030;
    v41 = sub_1D5FB9EDC;
LABEL_64:
    sub_1D6BE8040(v39, v40, v41);

    goto LABEL_69;
  }

  if (!v22)
  {
    if (!(v21 >> 60))
    {
      v23 = *(v20 + 16) ^ *(v21 + 16) ^ 1;
      return v23 & 1;
    }

    goto LABEL_41;
  }

  if (v22 != 1)
  {
    goto LABEL_41;
  }

  v26 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v27 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  if (v21 >> 60 != 1)
  {
    if (v21 >> 60 == 5)
    {
      if (v26 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && v27 == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
      {
        v23 = 1;
      }

      else
      {
        v23 = sub_1D72646CC();
      }

      return v23 & 1;
    }

    goto LABEL_41;
  }

  v45 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v46 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  if ((*((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v26 == v45 && v27 == v46)
  {
LABEL_55:
    v23 = 1;
    return v23 & 1;
  }

LABEL_71:

  return sub_1D72646CC();
}

uint64_t static FormatOptionValue.url(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v5 = v4;
  v6 = swift_allocBox();
  v8 = v7;
  v9 = sub_1D72585BC();
  result = (*(*(v9 - 8) + 16))(v8, a1, v9);
  *(v8 + *(v5 + 36)) = MEMORY[0x1E69E7CC0];
  *a2 = v6 | 0x6000000000000000;
  return result;
}

uint64_t sub_1D6BE6348@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  *(a3 + 24) = MEMORY[0x1E69E6370];
  *a3 = a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v5, 0);
    v6 = v17;
    v7 = (a2 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v17 + 16);
      v12 = *(v17 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997AD0((v12 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v13 = v17 + 48 * v11;
      *(v13 + 32) = v10;
      *(v13 + 48) = *&v16[15];
      *(v13 + 33) = *v16;
      *(v13 + 56) = MEMORY[0x1E69E6370];
      *(v13 + 64) = v9;
      *(v13 + 72) = v8;
      v7 += 24;
      --v5;
    }

    while (v5);

    v4 = a3;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 32) = v6;
  return result;
}

uint64_t sub_1D6BE6484@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5FB9EDC(0, &qword_1EDF3A6D0, type metadata accessor for FormatSelectorValueSelector);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  v10 = sub_1D725891C();
  a2[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v12 = *(v10 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a1, v10);
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  v14 = *(v13 + 36);
  v15 = a1;
  v16 = *(a1 + v14);
  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v15;
    v32 = a2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v17, 0);
    v18 = v36;
    v19 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_1D6BE8848(v19, v9, &qword_1EDF3A6D0, type metadata accessor for FormatSelectorValueSelector, sub_1D5FB9EDC);
      v21 = *(v5 + 36);
      *(&v34 + 1) = v10;
      v22 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*(v12 + 32))(v22, &v9[v21], v10);
      v23 = *(v9 + 1);
      *&v35 = *v9;
      *(&v35 + 1) = v23;
      v36 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D6997AD0((v24 > 1), v25 + 1, 1);
        v18 = v36;
      }

      *(v18 + 16) = v25 + 1;
      v26 = (v18 + 48 * v25);
      v27 = v33;
      v28 = v35;
      v26[3] = v34;
      v26[4] = v28;
      v26[2] = v27;
      v19 += v20;
      --v17;
    }

    while (v17);
    result = sub_1D6BE8040(v31, &qword_1EDF40030, sub_1D5FB9EDC);
    a2 = v32;
  }

  else
  {
    result = sub_1D6BE8040(v15, &qword_1EDF40030, sub_1D5FB9EDC);
    v18 = MEMORY[0x1E69E7CC0];
  }

  a2[4] = v18;
  return result;
}

uint64_t sub_1D6BE675C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a2;
  v5 = MEMORY[0x1E69E7DE0];
  *(a2 + 24) = MEMORY[0x1E69E7DE0];
  *a2 = a3;
  v6 = *(a1 + 16);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v6, 0);
    v7 = v18;
    v8 = (a1 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1D6997AD0((v12 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 48 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v17;
      *(v14 + 56) = v5;
      *(v14 + 64) = v10;
      *(v14 + 72) = v9;
      v8 += 3;
      --v6;
    }

    while (v6);

    v4 = a2;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 32) = v7;
  return result;
}

uint64_t sub_1D6BE6890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  a3[3] = MEMORY[0x1E69E6530];
  *a3 = a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v5, 0);
    v6 = v17;
    v7 = (a2 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v17 + 16);
      v12 = *(v17 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1D6997AD0((v12 > 1), v11 + 1, 1);
      }

      v7 += 3;
      *(v17 + 16) = v11 + 1;
      v13 = v17 + 48 * v11;
      *(v13 + 32) = v10;
      *(v13 + 40) = v16;
      *(v13 + 56) = MEMORY[0x1E69E6530];
      *(v13 + 64) = v9;
      *(v13 + 72) = v8;
      --v5;
    }

    while (v5);

    v4 = a3;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v4[4] = v6;
  return result;
}

uint64_t sub_1D6BE69C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a4;
  a4[3] = MEMORY[0x1E69E6158];
  *a4 = a1;
  a4[1] = a2;
  v6 = *(a3 + 16);
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v6, 0);
    v7 = v18;
    v8 = (a3 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v13 = *(v18 + 16);
      v14 = *(v18 + 24);

      if (v13 >= v14 >> 1)
      {
        sub_1D6997AD0((v14 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v15 = (v18 + 48 * v13);
      v15[4] = v11;
      v15[5] = v12;
      v15[7] = MEMORY[0x1E69E6158];
      v15[8] = v9;
      v15[9] = v10;
      v8 += 4;
      --v6;
    }

    while (v6);

    v5 = a4;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v5[4] = v7;
  return result;
}

uint64_t sub_1D6BE6AF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5CF49AC(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  v10 = sub_1D72585BC();
  a2[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v12 = *(v10 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1, a1, v10);
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v14 = *(v13 + 36);
  v15 = a1;
  v16 = *(a1 + v14);
  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v15;
    v32 = a2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D6997AD0(0, v17, 0);
    v18 = v36;
    v19 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_1D6BE8848(v19, v9, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector, sub_1D5CF49AC);
      v21 = *(v5 + 36);
      *(&v34 + 1) = v10;
      v22 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*(v12 + 32))(v22, &v9[v21], v10);
      v23 = *(v9 + 1);
      *&v35 = *v9;
      *(&v35 + 1) = v23;
      v36 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D6997AD0((v24 > 1), v25 + 1, 1);
        v18 = v36;
      }

      *(v18 + 16) = v25 + 1;
      v26 = (v18 + 48 * v25);
      v27 = v33;
      v28 = v35;
      v26[3] = v34;
      v26[4] = v28;
      v26[2] = v27;
      v19 += v20;
      --v17;
    }

    while (v17);
    result = sub_1D6BE8040(v31, &qword_1EDF40040, sub_1D5CF49AC);
    a2 = v32;
  }

  else
  {
    result = sub_1D6BE8040(v15, &qword_1EDF40040, sub_1D5CF49AC);
    v18 = MEMORY[0x1E69E7CC0];
  }

  a2[4] = v18;
  return result;
}

uint64_t static FormatOptionValue.< infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - v10;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  v20 = *a1;
  v21 = *a2;
  v22 = *a1 >> 60;
  if (v22 <= 4)
  {
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v22 == 1 && v21 >> 60 == 1)
        {
          goto LABEL_45;
        }
      }

      else if (!(v21 >> 60))
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (v22 != 2)
    {
      if (v22 == 3)
      {
        if (v21 >> 60 != 3)
        {
          goto LABEL_43;
        }

        v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) < *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      else
      {
        if (v21 >> 60 != 4)
        {
          goto LABEL_43;
        }

        v23 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) < *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      return v23 & 1;
    }

    if (v21 >> 60 == 2)
    {
      v31 = swift_projectBox();
      v32 = swift_projectBox();
      sub_1D6BE8848(v31, v19, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
      sub_1D6BE8848(v32, v15, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);

      v23 = sub_1D725883C();
      sub_1D6BE8040(v15, &qword_1EDF40030, sub_1D5FB9EDC);
      v33 = v19;
      v34 = &qword_1EDF40030;
      v35 = sub_1D5FB9EDC;
LABEL_52:
      sub_1D6BE8040(v33, v34, v35);

      goto LABEL_53;
    }

LABEL_43:
    if (v21 >> 60 != 8)
    {
LABEL_45:
      v23 = 0;
      return v23 & 1;
    }

    v39 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v40 = v20;

    v23 = static FormatOptionValue.< infix(_:_:)(&v40, &v39);

LABEL_53:

    return v23 & 1;
  }

  if (v22 > 7)
  {
    if (v22 == 8)
    {
      v38 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v21 >> 60 == 8)
      {
        v39 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v40 = v38;

        v23 = static FormatOptionValue.< infix(_:_:)(&v40, &v39);
      }

      else
      {
        v39 = *a2;
        v40 = v38;

        v23 = static FormatOptionValue.< infix(_:_:)(&v40, &v39);
      }

      goto LABEL_53;
    }

    if (v22 == 9)
    {
      if (v21 >> 60 == 9)
      {
        goto LABEL_45;
      }
    }

    else if (v22 == 12 && v21 >> 60 == 12)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v22 != 5)
  {
    if (v22 != 6)
    {
      if (v21 >> 60 == 7)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (v21 >> 60 == 6)
    {
      v24 = swift_projectBox();
      v25 = swift_projectBox();
      sub_1D6BE8848(v24, v11, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
      sub_1D6BE8848(v25, v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);

      v26 = sub_1D72583DC();
      v28 = v27;
      if (v26 == sub_1D72583DC() && v28 == v29)
      {
        v23 = 0;
      }

      else
      {
        v23 = sub_1D72646CC();
      }

      sub_1D6BE8040(v7, &qword_1EDF40040, sub_1D5CF49AC);
      v33 = v11;
      v34 = &qword_1EDF40040;
      v35 = sub_1D5CF49AC;
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  if (v21 >> 60 != 5)
  {
    goto LABEL_43;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
  {
    goto LABEL_45;
  }

  return sub_1D72646CC();
}

void sub_1D6BE73AC(uint64_t *a1@<X8>)
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v40 - v5;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = v40 - v10;
  v12 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v26 = (v12 & 0xFFFFFFFFFFFFFFFLL);
      v28 = v26[2];
      v27 = v26[3];
      v30 = v26[4];
      v29 = v26[5];
      v31 = v26[6];
      a1[3] = &type metadata for FormatOptionEnum;
      v32 = swift_allocObject();
      *a1 = v32;
      v32[2] = v28;
      v32[3] = v27;
      v32[4] = v30;
      v32[5] = v29;
      v32[6] = v31;

      goto LABEL_13;
    case 2uLL:
      v19 = swift_projectBox();
      v20 = &qword_1EDF40030;
      sub_1D6BE8848(v19, v11, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
      v21 = sub_1D725891C();
      a1[3] = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v11, v21);
      v23 = sub_1D5FB9EDC;
      v24 = v11;
      goto LABEL_18;
    case 3uLL:
      v25 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = MEMORY[0x1E69E7DE0];
      *a1 = v25;
      return;
    case 4uLL:
      v14 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = MEMORY[0x1E69E6530];
      *a1 = v14;
      return;
    case 5uLL:
      v33 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = v35;
      a1[1] = v34;
LABEL_13:

      return;
    case 6uLL:
      v37 = swift_projectBox();
      v20 = &qword_1EDF40040;
      sub_1D6BE8848(v37, v6, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
      v38 = sub_1D72585BC();
      a1[3] = v38;
      v39 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(*(v38 - 8) + 16))(v39, v6, v38);
      v23 = sub_1D5CF49AC;
      v24 = v6;
LABEL_18:
      sub_1D6BE8040(v24, v20, v23);
      return;
    case 7uLL:
      v17 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = &type metadata for FormatColor;
      goto LABEL_10;
    case 8uLL:
      v40[1] = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D6BE73AC(v9);
      return;
    case 9uLL:
      v17 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v18 = &type metadata for FormatAsyncImageContent;
LABEL_10:
      a1[3] = v18;
      *a1 = v17;
      goto LABEL_21;
    case 0xAuLL:
      v15 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = &type metadata for FormatVideoNodeContent;
      goto LABEL_20;
    case 0xBuLL:
      a1[3] = &type metadata for FormatAbstract;
      return;
    case 0xCuLL:
      v15 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = &type metadata for FormatFont;
LABEL_20:
      a1[3] = v16;
      *a1 = v15;
      goto LABEL_21;
    case 0xDuLL:
      v36 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      a1[3] = &type metadata for FormatVideoPlayerContent;
      *a1 = v36;
LABEL_21:

      break;
    default:
      v13 = *(v12 + 16);
      a1[3] = MEMORY[0x1E69E6370];
      *a1 = v13;
      break;
  }
}

uint64_t sub_1D6BE77CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 60;
  if (v4 > 0xD)
  {
    goto LABEL_8;
  }

  if (((1 << v4) & 0x3EEC) != 0)
  {
    return 0;
  }

  if (v4 == 4)
  {
    v6 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);

    v9 = sub_1D5FA1B60(a1, v7, v8);

    v22[0] = v9;
    sub_1D5E4049C();
    return sub_1D7263ADC();
  }

  if (v4 == 8)
  {
    v22[0] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    v10 = sub_1D6BE77CC(a1);

    return v10;
  }

  else
  {
LABEL_8:
    if (v4)
    {

      sub_1D6E182F8(a1, v22);

      v19 = v22[2];
      v20 = v22[3];
      v21 = v22[0];

      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v19, v20);

      return v21;
    }

    else
    {
      v11 = *(v3 + 16);
      v12 = *(v3 + 24);
      v13 = *(v12 + 16);
      if (v13)
      {

        v14 = (v12 + 48);
        do
        {
          v15 = *v14;
          v17 = *(v14 - 2);
          v16 = *(v14 - 1);

          v18 = sub_1D5FAC504(a1, v17, v16, v15);

          if (v18 != 2)
          {
            v11 = v18;
          }

          v14 += 24;
          --v13;
        }

        while (v13);
      }

      if (v11)
      {
        return 1702195828;
      }

      else
      {
        return 0x65736C6166;
      }
    }
  }
}

uint64_t sub_1D6BE7A38(uint64_t a1)
{
  v3 = *v1 >> 60;
  result = 2;
  if (((1 << v3) & 0x3EDF) == 0)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFFFFLL;
    if (v3 == 5)
    {
      v6 = *((*v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *(v5 + 24);
      v8 = *(v5 + 32);

      v9 = sub_1D5FA1BF4(a1, v6, v7, v8);
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      return v12 == 0;
    }

    else
    {
      swift_retain_n();

      v13 = sub_1D6BE7A38(a1);

      return v13;
    }
  }

  return result;
}

uint64_t static FormatOptionValue.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *a3 = v6 | 0x5000000000000000;
}

uint64_t static FormatOptionValue.float(_:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *a1 = result | 0x3000000000000000;
  return result;
}

void sub_1D6BE7C10(uint64_t a1@<X8>)
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v45[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45[-1] - v9;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v45[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v45[-1] - v18;
  v20 = *v1;
  v21 = *v1 >> 60;
  if (v21 > 6)
  {
    if ((v21 - 9) < 5 || v21 == 7)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      v45[0] = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D6BE7C10(v17);
    }

    return;
  }

  if (v21 > 2)
  {
    if (v21 <= 4)
    {
      v22 = v20 & 0xFFFFFFFFFFFFFFFLL;
      if (v21 == 3)
      {
        v23 = *(v22 + 16);

        sub_1D6BE675C(v24, a1, v23);
      }

      else
      {
        v41 = *(v22 + 16);
        v42 = *(v22 + 24);

        sub_1D6BE6890(v41, v42, a1);
      }

      return;
    }

    if (v21 == 5)
    {
      v31 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v32 = v31[2];
      v33 = v31[3];
      v34 = v31[4];

      sub_1D6BE69C4(v32, v33, v34, a1);
      return;
    }

    v43 = swift_projectBox();
    v38 = &qword_1EDF40040;
    sub_1D6BE8848(v43, v10, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
    sub_1D6BE8848(v10, v6, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
    sub_1D6BE6AF8(v6, a1);
    v39 = sub_1D5CF49AC;
    v40 = v10;
LABEL_29:
    sub_1D6BE8040(v40, v38, v39);
    return;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v26 = (v20 & 0xFFFFFFFFFFFFFFFLL);
      v27 = v26[3];
      v28 = v26[4];
      v29 = v26[5];
      v30 = v26[6];
      v45[0] = v26[2];
      v45[1] = v27;
      v45[2] = v28;
      v45[3] = v29;
      v45[4] = v30;

      sub_1D6183294(v45, a1);
      return;
    }

    v37 = swift_projectBox();
    v38 = &qword_1EDF40030;
    sub_1D6BE8848(v37, v19, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
    sub_1D6BE8848(v19, v14, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
    sub_1D6BE6484(v14, a1);
    v39 = sub_1D5FB9EDC;
    v40 = v19;
    goto LABEL_29;
  }

  v35 = *(v20 + 16);
  v36 = *(v20 + 24);

  sub_1D6BE6348(v35, v36, a1);
}

uint64_t sub_1D6BE8040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t (*)()))
{
  v4 = a3(0, a2, type metadata accessor for FormatSelectorValue);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_1D6BE80BC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (static FormatOptionValue.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL sub_1D6BE80F8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return (static FormatOptionValue.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t sub_1D6BE8134(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return static FormatOptionValue.< infix(_:_:)(&v4, &v5) & 1;
}

uint64_t static FormatOptionValue.BOOLean(_:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  *a2 = result;
  return result;
}

uint64_t static FormatOptionValue.integer(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v5;
  *a2 = result | 0x4000000000000000;
  return result;
}

uint64_t FormatOptionValue.description.getter()
{
  sub_1D5CF49AC(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v36 - v3;
  sub_1D5FB9EDC(0, &qword_1EDF40030, type metadata accessor for FormatSelectorValue);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - v7;
  v9 = *v0;
  switch(*v0 >> 60)
  {
    case 1uLL:
      v26 = (v9 & 0xFFFFFFFFFFFFFFFLL);
      v27 = v26[3];
      v28 = v26[4];
      v29 = v26[5];
      v37 = v26[2];
      *&v38 = v27;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v28, v29);

      return v37;
    case 2uLL:
      v19 = swift_projectBox();
      sub_1D6BE8848(v19, v8, &qword_1EDF40030, type metadata accessor for FormatSelectorValue, sub_1D5FB9EDC);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      sub_1D7263F9C();
      v20 = v37;
      sub_1D6BE8040(v8, &qword_1EDF40030, sub_1D5FB9EDC);
      return v20;
    case 3uLL:
      v22 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v23;
      *(&v39 + 1) = v24;
      sub_1D6BE86D0();
      goto LABEL_17;
    case 4uLL:
      v14 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v16;
      *(&v39 + 1) = v15;
      v12 = &qword_1EDF2C0C0;
      goto LABEL_5;
    case 5uLL:
      v30 = v9 & 0xFFFFFFFFFFFFFFFLL;
      v31 = *(v30 + 16);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      v37 = v31;
      v38 = *(v30 + 24);
      sub_1D6BE8730(0, &qword_1EDF40010);
      sub_1D7263F9C();
      return v39;
    case 6uLL:
      v33 = swift_projectBox();
      sub_1D6BE8848(v33, v4, &qword_1EDF40040, type metadata accessor for FormatSelectorValue, sub_1D5CF49AC);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      sub_1D7263F9C();
      v34 = v37;
      sub_1D6BE8040(v4, &qword_1EDF40040, sub_1D5CF49AC);
      return v34;
    case 7uLL:
      v25 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v25;
      goto LABEL_17;
    case 8uLL:
      v37 = 0;
      *&v38 = 0xE000000000000000;
      v39 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D666651C();
      goto LABEL_17;
    case 9uLL:
      v18 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v18;
      goto LABEL_17;
    case 0xAuLL:
      v35 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v35;
      goto LABEL_17;
    case 0xBuLL:
      v13 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      LOBYTE(v39) = v13;
      goto LABEL_17;
    case 0xCuLL:
      v17 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v17;
      goto LABEL_17;
    case 0xDuLL:
      v32 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      *&v39 = v32;
      goto LABEL_17;
    default:
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v37 = 0;
      *&v38 = 0xE000000000000000;
      LOBYTE(v39) = v10;
      *(&v39 + 1) = v11;
      v12 = &qword_1EDF40000;
LABEL_5:
      sub_1D6BE8730(0, v12);
LABEL_17:
      sub_1D7263F9C();
      return v37;
  }
}

void sub_1D6BE86D0()
{
  if (!qword_1EDF40020)
  {
    sub_1D5B577E4();
    v0 = type metadata accessor for FormatSelectorValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF40020);
    }
  }
}

void sub_1D6BE8730(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for FormatSelectorValue();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D6BE8780(uint64_t a1)
{
  result = sub_1D6666588();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BE87AC()
{
  result = qword_1EC893520;
  if (!qword_1EC893520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893520);
  }

  return result;
}

unint64_t sub_1D6BE8800(void *a1)
{
  a1[1] = sub_1D5C8DE68();
  a1[2] = sub_1D66A6130();
  result = sub_1D6BE87AC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BE8848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t TagImageShareAttributeProviderType.createShareSportsEventImage(for:size:logoWidth:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v6 + 56) = a2;
  *(v6 + 64) = v5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 32) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6BE8900, 0, 0);
}

uint64_t sub_1D6BE8900()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  *(v3 + 40) = v7;
  *(v3 + 56) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  sub_1D6851ABC();
  *v4 = v0;
  v4[1] = sub_1D6BE8A24;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD000000000000030, 0x80000001D73EBD50, sub_1D6BE8D10, v3, v5);
}

uint64_t sub_1D6BE8A24()
{

  return MEMORY[0x1EEE6DFA0](sub_1D68E9CAC, 0, 0);
}

void sub_1D6BE8B3C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  sub_1D6BEBEC0();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12, v16);
  (*(v14 + 16))(aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v17);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  aBlock[4] = sub_1D6BEBF28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5C3BF74;
  aBlock[3] = &block_descriptor_73;
  v20 = _Block_copy(aBlock);

  [a2 createShareSportsEventImageFor:a3 size:v20 logoWidth:a4 completion:{a5, a6}];
  _Block_release(v20);
}

uint64_t sub_1D6BE8D24(void *a1)
{
  sub_1D6BEBEC0();
  v2 = a1;
  return sub_1D726287C();
}

uint64_t sub_1D6BE8D80(uint64_t a1)
{
  v2 = FCTagProviding.iconColor.getter();
  v3 = [objc_opt_self() systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB950]];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v2 _isSimilarToColor_withinPercentage_];

  if (v6)
  {
    v7 = [v4 blackColor];

    v2 = v7;
  }

  v11 = 0x4014000000000000;
  v12 = v2;
  v13 = v3;
  v14 = 0;
  v8 = FCTagProviding.createTagImage(imageSize:style:)(&v11, a1, 50.0, 50.0);
  v9 = v12;

  return v8;
}

id sub_1D6BE8ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

void TagImageShareAttributeProvider.createSportsShareImage(for:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  sub_1D6BEAEB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - v10;
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  ObjectType = swift_getObjectType();
  v21 = FCSportsProviding.navigationBarBackgroundColor.getter();
  v22 = [a1 sportsTheme];
  if (v22 && (v23 = [v22 sportsLogoImageAssetHandle], swift_unknownObjectRelease(), v23) && (v24 = objc_msgSend(v23, sel_filePath), v23, v24) || (v25 = objc_msgSend(a1, sel_sportsTheme)) != 0 && (v26 = objc_msgSend(v25, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), v26) && (v24 = objc_msgSend(v26, sel_filePath), v26, v24))
  {
    sub_1D726207C();

    sub_1D725855C();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1D5E3E404(v11);
      goto LABEL_18;
    }

    (*(v13 + 32))(v20, v11, v12);
    sub_1D725852C();
    v30 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v31 = sub_1D726203C();

    v32 = [v30 initWithContentsOfFile_];

    if (!v32)
    {
      (*(v13 + 8))(v20, v12);
      goto LABEL_18;
    }

    v33 = sub_1D6BE9524(v21);

    (*(v13 + 8))(v20, v12);
LABEL_16:
    (v46)(v33);
    v36 = v21;
    v21 = v33;
    goto LABEL_22;
  }

  v27 = [a1 feedNavImageAssetHandle];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 filePath];

    if (v29)
    {
      sub_1D726207C();

      sub_1D725855C();

      if ((*(v13 + 48))(v7, 1, v12) == 1)
      {
        sub_1D5E3E404(v7);
        goto LABEL_18;
      }

      (*(v13 + 32))(v16, v7, v12);
      sub_1D725852C();
      v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v35 = sub_1D726203C();

      v33 = [v34 initWithContentsOfFile_];

      (*(v13 + 8))(v16, v12);
      if (!v33)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

LABEL_18:
  v37 = [a1 sportsTheme];
  if (v37 && (v38 = [v37 sportsLogoImageAssetHandle], swift_unknownObjectRelease(), v38))
  {
    sub_1D5E42B34();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D72816C0;
    *(v39 + 32) = v38;
    v40 = swift_allocObject();
    v41 = v46;
    v42 = v47;
    v40[2] = v38;
    v40[3] = v41;
    v40[4] = v42;
    v40[5] = a1;
    v40[6] = v21;
    v43 = v38;

    swift_unknownObjectRetain();
    v36 = v21;
    sub_1D6BEAF20(v39, sub_1D6BEAF1C, v40);

    v21 = v43;
  }

  else
  {
    v36 = sub_1D6BE8D80(ObjectType);
    v46();
  }

LABEL_22:
}

uint64_t sub_1D6BE9524(void *a1)
{
  v3 = [v1 imageRendererFormat];
  [v3 setOpaque_];
  [v1 scale];
  [v3 setScale_];
  [v1 size];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v3 format:{v4, v5}];
  [v1 size];
  v21.size.width = v7;
  v21.size.height = v8;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v22 = CGRectIntegral(v21);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  v13[3] = x;
  v13[4] = y;
  v13[5] = width;
  v13[6] = height;
  *(v13 + 7) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D6BEBE40;
  *(v14 + 24) = v13;
  v20[4] = sub_1D61395B0;
  v20[5] = v14;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D62E78B0;
  v20[3] = &block_descriptor_55_0;
  v15 = _Block_copy(v20);
  v16 = a1;
  v17 = v1;

  v18 = [v6 imageWithActions_];

  _Block_release(v15);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if ((v3 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6BE9774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = [a1 filePath];
  if (v9 && (v10 = v9, v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_], v10, v11))
  {
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v11;
    v12[5] = a5;

    v13 = v11;
    v14 = a5;
    sub_1D725BFFC();
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = a4;

    swift_unknownObjectRetain();
    sub_1D725BFFC();
  }
}

void sub_1D6BE98AC(void (*a1)(void))
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D6BE8D80(ObjectType);
  a1();
}

uint64_t TagImageShareAttributeProvider.createShareSportsEventImage(for:size:logoWidth:completion:)(void *a1, uint64_t (*a2)(void), uint64_t a3, double a4, double a5, double a6)
{
  v11 = [a1 eventCompetitorTags];
  if (!v11)
  {
    return a2(0);
  }

  v12 = v11;
  sub_1D5EC01D0();
  v13 = sub_1D726267C();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  result = sub_1D7263BFC();
  if (result < 2)
  {
LABEL_20:

    return a2(0);
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1DA6FB460](0, v13);
    v17 = MEMORY[0x1DA6FB460](1, v13);
    goto LABEL_8;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v15 == 1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v16 = *(v13 + 32);
  v17 = *(v13 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
LABEL_8:

  v18 = [v16 sportsTheme];
  if (v18)
  {
    v19 = [v18 sportsLogoImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = [v17 sportsTheme];
      if (v20)
      {
        v21 = [v20 sportsLogoImageCompactAssetHandle];
        swift_unknownObjectRelease();
        if (v21)
        {
          sub_1D5E42B34();
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D72816D0;
          *(v22 + 32) = v19;
          *(v22 + 40) = v21;
          v23 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          *(v24 + 24) = v19;
          *(v24 + 32) = v21;
          *(v24 + 40) = a2;
          *(v24 + 48) = a3;
          *(v24 + 56) = a4;
          *(v24 + 64) = a5;
          *(v24 + 72) = v16;
          *(v24 + 80) = v17;
          *(v24 + 88) = a6;
          v25 = v19;
          v26 = v21;
          v27 = v25;
          v28 = v26;

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_1D6BEAF20(v22, sub_1D6BEB0C4, v24);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  a2(0);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D6BE9CF4(double a1, double a2, double a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a9;
  v52 = a10;
  v17 = sub_1D7261ABC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7261B2C();
  v53 = *(v22 - 8);
  v54 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v27 = Strong;
  v50 = v18;
  v28 = [a5 filePath];
  if (!v28)
  {
    v29 = v27;
LABEL_9:

LABEL_10:
    v45 = swift_allocObject();
    *(v45 + 16) = a7;
    *(v45 + 24) = a8;

    sub_1D725BFFC();
  }

  v29 = v28;
  v30 = [a6 filePath];
  if (!v30)
  {

    goto LABEL_9;
  }

  v31 = v30;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

  if (v32)
  {
    v33 = v32;
    v34 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

    if (v34)
    {
      sub_1D5B5A498(0, &qword_1EDF1AA30);
      v49 = sub_1D726308C();
      v35 = swift_allocObject();
      *(v35 + 16) = a1;
      *(v35 + 24) = a2;
      v36 = v51;
      *(v35 + 32) = v27;
      *(v35 + 40) = v36;
      *(v35 + 48) = v52;
      *(v35 + 56) = a3;
      *(v35 + 64) = v33;
      *(v35 + 72) = v34;
      *(v35 + 80) = a7;
      *(v35 + 88) = a8;
      aBlock[4] = sub_1D6BEBB20;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D5B6B06C;
      aBlock[3] = &block_descriptor_85;
      v48 = _Block_copy(aBlock);
      v37 = v27;
      v38 = v33;
      v39 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v40 = v38;
      v41 = v34;

      sub_1D7261AEC();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D5F5D6D4();
      sub_1D6BEAEB8(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D5F5D72C();
      sub_1D7263B6C();
      v43 = v48;
      v42 = v49;
      MEMORY[0x1DA6FA730](0, v25, v21, v48);
      _Block_release(v43);

      (*(v50 + 8))(v21, v17);
      return (*(v53 + 8))(v25, v54);
    }

    v31 = v32;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = a7;
  *(v46 + 24) = a8;

  sub_1D725BFFC();
}

uint64_t sub_1D6BEA198(double a1, double a2, CGFloat a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = sub_1D6BEBB3C(a5, a6, 0.0, 0.0, a1, a2);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = a1;
  v36.size.height = a2;
  v19 = (CGRectGetHeight(v36) - a3) * 0.5;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = a1;
  v37.size.height = a2;
  v20 = (CGRectGetWidth(v37) - (a3 + a3)) * 0.25;
  v38.origin.x = v20;
  v38.origin.y = v19;
  v38.size.width = a3;
  v38.size.height = a3;
  v21 = CGRectGetMaxX(v38) + v20 + v20;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  [v22 setImage_];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  [v23 setImage_];
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 addSubview_];
  [v18 setAccessibilityIgnoresInvertColors_];

  [v18 setNeedsDisplay];
  [v18 bounds];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1D6BEBDF0;
  *(v28 + 24) = v27;
  v35[4] = sub_1D6139588;
  v35[5] = v28;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_1D62E78B0;
  v35[3] = &block_descriptor_42_1;
  v29 = _Block_copy(v35);
  v30 = v18;

  v31 = [v26 imageWithActions_];
  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    v33 = swift_allocObject();
    v33[2] = a9;
    v33[3] = a10;
    v33[4] = v31;

    v34 = v31;
    sub_1D725BFFC();
  }

  return result;
}

id TagImageShareAttributeProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TagImageShareAttributeProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TagImageShareAttributeProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D6BEA6A4(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = [a1 CGContext];
  v15 = [a2 CGColor];
  CGContextSetFillColorWithColor(v14, v15);

  v16 = [a1 CGContext];
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGContextFillRect(v16, v19);

  return [a3 drawInRect_];
}

uint64_t _s8NewsFeed30TagImageShareAttributeProviderC05shareD03forSo7UIImageCSo14FCTagProviding_p_tF_0(void *a1)
{
  sub_1D6BEAEB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v46 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v46 - v17;
  ObjectType = swift_getObjectType();
  if ([a1 isMySports])
  {
    v20 = [objc_opt_self() blackColor];
    v21 = objc_opt_self();
    v22 = [v21 configurationWithHierarchicalColor_];

    v23 = v22;
    v24 = sub_1D726203C();
    v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

    sub_1D5B5A498(0, &qword_1EDF1A720);
    v26 = sub_1D726338C();
    v27 = [v21 configurationWithFont:v26 scale:3];

    v28 = v25;
    v29 = [v28 imageByApplyingSymbolConfiguration_];

    result = v29;
    if (v29)
    {
      return result;
    }

    return sub_1D6BE8D80(ObjectType);
  }

  v31 = [a1 feedNavImageAssetHandle];
  v32 = &selRef_accountStore;
  if (v31)
  {
    v33 = v11;
    v34 = ObjectType;
    v35 = v31;
    v36 = [v31 filePath];

    ObjectType = v34;
    v11 = v33;
    v32 = &selRef_accountStore;
    if (v36)
    {
      sub_1D726207C();

      sub_1D725855C();

      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v18, v9, v10);
        sub_1D725852C();
        v37 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        v38 = sub_1D726203C();

        v39 = [v37 initWithContentsOfFile_];

        if (!v39)
        {
          v39 = sub_1D6BE8D80(ObjectType);
        }

        (*(v11 + 8))(v18, v10);
        return v39;
      }

      goto LABEL_14;
    }
  }

  v40 = [a1 coverImageAssetHandle];
  if (!v40)
  {
    return sub_1D6BE8D80(ObjectType);
  }

  v41 = v40;
  v42 = [v40 v32[25]];

  if (!v42)
  {
    return sub_1D6BE8D80(ObjectType);
  }

  sub_1D726207C();

  sub_1D725855C();

  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    v9 = v5;
LABEL_14:
    sub_1D5E3E404(v9);
    return sub_1D6BE8D80(ObjectType);
  }

  (*(v11 + 32))(v14, v5, v10);
  sub_1D725852C();
  v43 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v44 = sub_1D726203C();

  v45 = [v43 initWithContentsOfFile_];

  if (!v45)
  {
    v45 = sub_1D6BE8D80(ObjectType);
  }

  (*(v11 + 8))(v14, v10);
  return v45;
}

uint64_t _s8NewsFeed30TagImageShareAttributeProviderC08mySportseD03forSo7UIImageCSo14FCTagProviding_p_tF_0()
{
  v0 = [objc_opt_self() blackColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = v2;
  v4 = sub_1D726203C();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  sub_1D5B5A498(0, &qword_1EDF1A720);
  v6 = sub_1D726338C();
  v7 = [v1 configurationWithFont:v6 scale:3];

  v8 = v5;
  v9 = [v8 imageByApplyingSymbolConfiguration_];

  if (v9)
  {
    return v9;
  }

  ObjectType = swift_getObjectType();
  return sub_1D6BE8D80(ObjectType);
}

void sub_1D6BEAEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6BEAF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69B51C8]);
  sub_1D5B5A498(0, &qword_1EDF1AB50);
  v6 = sub_1D726265C();
  v7 = [v5 initWithAssetHandles_];

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v12[4] = sub_1D5F39624;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D5C38428;
  v12[3] = &block_descriptor_61;
  v9 = _Block_copy(v12);
  v10 = v7;

  [v10 setFetchCompletionBlock_];
  _Block_release(v9);

  sub_1D725AC4C();
  sub_1D725AC0C();
  if ([objc_opt_self() isMainThread])
  {
    sub_1D725AC2C();
  }

  else
  {
    [v10 start];
  }
}

void sub_1D6BEB0EC(void *a1, void (**a2)(void, void))
{
  sub_1D6BEAEB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - v10;
  v12 = sub_1D72585BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  ObjectType = swift_getObjectType();
  _Block_copy(a2);
  v45 = ObjectType;
  v47 = FCSportsProviding.navigationBarBackgroundColor.getter();
  v22 = [a1 sportsTheme];
  if (v22 && (v23 = [v22 sportsLogoImageAssetHandle], swift_unknownObjectRelease(), v23) && (v24 = objc_msgSend(v23, sel_filePath), v23, v24) || (v25 = objc_msgSend(a1, sel_sportsTheme)) != 0 && (v26 = objc_msgSend(v25, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), v26) && (v24 = objc_msgSend(v26, sel_filePath), v26, v24))
  {
    sub_1D726207C();

    sub_1D725855C();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v27 = v11;
LABEL_13:
      sub_1D5E3E404(v27);
      goto LABEL_14;
    }

    (*(v13 + 32))(v20, v11, v12);
    sub_1D725852C();
    v38 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v39 = sub_1D726203C();

    v40 = [v38 initWithContentsOfFile_];

    if (!v40)
    {
      (*(v13 + 8))(v20, v12);
      goto LABEL_14;
    }

    v41 = sub_1D6BE9524(v47);

    (*(v13 + 8))(v20, v12);
    goto LABEL_21;
  }

  v28 = [a1 feedNavImageAssetHandle];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 filePath];

    if (v30)
    {
      sub_1D726207C();

      sub_1D725855C();

      if ((*(v13 + 48))(v7, 1, v12) == 1)
      {
        v27 = v7;
        goto LABEL_13;
      }

      (*(v13 + 32))(v16, v7, v12);
      sub_1D725852C();
      v42 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v43 = sub_1D726203C();

      v41 = [v42 initWithContentsOfFile_];

      (*(v13 + 8))(v16, v12);
      if (!v41)
      {
        goto LABEL_14;
      }

LABEL_21:
      (a2)[2](a2, v41);

      v37 = v47;
      v36 = v41;
      goto LABEL_22;
    }
  }

LABEL_14:
  v31 = [a1 sportsTheme];
  if (v31 && (v32 = [v31 sportsLogoImageAssetHandle], swift_unknownObjectRelease(), v32))
  {
    sub_1D5E42B34();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D72816C0;
    *(v33 + 32) = v32;
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = sub_1D6BEBAB4;
    v35 = v47;
    v34[4] = v46;
    v34[5] = a1;
    v34[6] = v35;
    v36 = v32;

    swift_unknownObjectRetain();
    v37 = v35;
    sub_1D6BEAF20(v33, sub_1D6BEBFAC, v34);
  }

  else
  {
    v37 = sub_1D6BE8D80(v45);
    (a2)[2](a2, v37);

    v36 = v47;
  }

LABEL_22:
}

uint64_t sub_1D6BEB728(void *a1, double a2, double a3, double a4, uint64_t a5, void (**a6)(void, void))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  _Block_copy(a6);
  v12 = [a1 eventCompetitorTags];
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  sub_1D5EC01D0();
  v14 = sub_1D726267C();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 2)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  result = sub_1D7263BFC();
  if (result < 2)
  {
LABEL_18:

LABEL_19:
    a6[2](a6, 0);
    goto LABEL_20;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1DA6FB460](0, v14);
    v18 = MEMORY[0x1DA6FB460](1, v14);
    goto LABEL_8;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v16 == 1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
LABEL_8:

  v19 = [v17 sportsTheme];
  if (v19)
  {
    v20 = [v19 sportsLogoImageCompactAssetHandle];
    swift_unknownObjectRelease();
    if (v20)
    {
      v21 = [v18 sportsTheme];
      if (v21)
      {
        v22 = [v21 sportsLogoImageCompactAssetHandle];
        swift_unknownObjectRelease();
        if (v22)
        {
          sub_1D5E42B34();
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1D72816D0;
          *(v23 + 32) = v20;
          *(v23 + 40) = v22;
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          *(v25 + 24) = v20;
          *(v25 + 32) = v22;
          *(v25 + 40) = sub_1D6BEBAB4;
          *(v25 + 48) = v11;
          *(v25 + 56) = a2;
          *(v25 + 64) = a3;
          *(v25 + 72) = v17;
          *(v25 + 80) = v18;
          *(v25 + 88) = a4;
          v26 = v20;
          v27 = v22;
          v28 = v26;
          v29 = v27;

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          sub_1D6BEAF20(v23, sub_1D6BEBFA8, v25);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

LABEL_20:
        }
      }
    }
  }

  a6[2](a6, 0);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id sub_1D6BEBB3C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1D725D00C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v36 - v19);
  sub_1D6BEAEB8(0, &qword_1EDF3B6D0, MEMORY[0x1E69D7830], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v36 - v23;
  v37 = [objc_allocWithZone(sub_1D725FC5C()) initWithFrame_];
  sub_1D5E42B34();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D72816D0;
  *(v25 + 32) = a1;
  *(v25 + 40) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v25);
  v27 = v26[2];
  *v20 = v27;
  v28 = *MEMORY[0x1E69D7768];
  v29 = *(v13 + 104);
  v29(v20, v28, v12);
  v30 = v26[3];
  *v16 = v30;
  v29(v16, v28, v12);
  v31 = v27;
  v32 = v30;
  sub_1D725D23C();
  v33 = sub_1D725D25C();
  (*(*(v33 - 8) + 56))(v24, 0, 1, v33);
  v34 = v37;
  sub_1D725FC4C();

  return v34;
}

id sub_1D6BEBDF0()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_1D6BEBE60()
{
  v1 = *(v0 + 16);
  v2 = sub_1D6BE9524(*(v0 + 40));
  v1();
}

void sub_1D6BEBEC0()
{
  if (!qword_1EC893538)
  {
    sub_1D6851ABC();
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893538);
    }
  }
}

uint64_t sub_1D6BEBF28(void *a1)
{
  sub_1D6BEBEC0();

  return sub_1D6BE8D24(a1);
}

uint64_t sub_1D6BEBFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v30 = a4;
  sub_1D5D27ED4(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for FormatOption();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  FormatOptionCollection.subscript.getter(a1, a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D6BECE50(v12, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if (v30 & 1) == 0 || (*(v5 + 48))
    {
      v18 = 1;
      v19 = v28;
      return (*(v14 + 56))(v19, v18, 1, v13);
    }

    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v26 = a1;
    v26[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    sub_1D5D247E0(v12, v17);
    v29 = v17[2];

    FormatOptionValue.type.getter(&v31);
    if (sub_1D6183C84(v31, a3))
    {

      v19 = v28;
      sub_1D5D247E0(v17, v28);
      v18 = 0;
      return (*(v14 + 56))(v19, v18, 1, v13);
    }

    type metadata accessor for FormatDerivedDataError();
    sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v22 = v21;
    v24 = *v17;
    v23 = v17[1];
    v29 = v17[2];

    FormatOptionValue.type.getter(&v31);
    v25 = v31;
    *v22 = v24;
    *(v22 + 8) = v23;
    *(v22 + 16) = v25;
    *(v22 + 24) = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1D5BE7B6C(v17, type metadata accessor for FormatOption);
  }
}

void *FormatNodeBinderContext.deinit()
{

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[16];

  sub_1D60B29F8(v1, v2, v3, v4, v5, v6);
  sub_1D5BE7B6C(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  sub_1D62E31A0(*(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40), *(v0 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));

  return v0;
}

uint64_t FormatNodeBinderContext.__deallocating_deinit()
{
  FormatNodeBinderContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BEC5F4(unint64_t a1, void *a2, _BYTE *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = a3;
      swift_beginAccess();
      *v6 = 1;
      a2 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks);

      v7 = 0;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](v7, a1);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

LABEL_12:
        v11 = v5;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = sub_1D5B69D90(v13, v12);
        v17 = a2[2];
        v18 = (v16 & 1) == 0;
        v19 = __OFADD__(v17, v18);
        v20 = v17 + v18;
        if (v19)
        {
          goto LABEL_23;
        }

        v21 = v16;
        if (a2[3] < v20)
        {
          sub_1D6D684A8(v20, isUniquelyReferenced_nonNull_native);
          v15 = sub_1D5B69D90(v13, v12);
          if ((v21 & 1) != (v22 & 1))
          {
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

LABEL_17:
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v26 = v15;
        sub_1D6D7F364();
        v15 = v26;
        if (v21)
        {
LABEL_4:
          v8 = v15;

          *(a2[7] + 8 * v8) = v9;

          goto LABEL_5;
        }

LABEL_18:
        a2[(v15 >> 6) + 8] |= 1 << v15;
        v23 = (a2[6] + 16 * v15);
        *v23 = v13;
        v23[1] = v12;
        *(a2[7] + 8 * v15) = v9;

        v24 = a2[2];
        v19 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v19)
        {
          goto LABEL_24;
        }

        a2[2] = v25;
LABEL_5:
        ++v7;
        v5 = v11;
        if (v10 == v11)
        {
          return a2;
        }
      }

      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v9 = *(a1 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v27 = a3;
      v28 = sub_1D7263BFC();
      a3 = v27;
      v5 = v28;
    }

    while (v28);
  }

  a2 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks);

  return a2;
}

uint64_t sub_1D6BEC878(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_1D67C8378(a1, &v13);
  if (v14)
  {
    sub_1D5B63F14(&v13, v15);
    swift_beginAccess();
    *a3 = 1;
    v6 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v5 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);
    v12[0] = v6;
    v12[1] = v5;
    v7 = v16;
    v8 = v17;
    v9 = __swift_project_boxed_opaque_existential_1(v15, v16);

    sub_1D720D93C(v9, v12, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12[0];
  }

  else
  {
    sub_1D6BECE50(&v13, &qword_1EDF34AB8, sub_1D5EFF46C);
    v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  }

  return v10;
}

uint64_t sub_1D6BEC994()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for GroupLayoutContext();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  if (v8 == 255 || (v8 & 1) != 0)
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v9 = v7[1];
    v57 = *v7;
    v48 = v9;
    v10 = v7[3];
    v47 = v7[2];
    v46 = v10;
    v12 = v7[4];
    v11 = v7[5];
    v45 = v12;
    v44 = v11;
    v36 = v1[3];
    v13 = v36;
    v39 = v1[2];
    v14 = *(v1 + 6);
    v53 = *(v1 + 5);
    v54 = v14;
    v55 = *(v1 + 7);
    v56 = v1[16];
    v15 = *(v1 + 4);
    v51 = *(v1 + 3);
    v52 = v15;
    v41 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v16 = v41;
    v42 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
    v17 = v42;
    sub_1D6BECDEC(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v6);
    v18 = v1[5];
    v35 = v1[4];
    v40 = v18;
    v34 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks);
    v33 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    v43 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
    sub_1D5B68374(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v50);
    v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8);
    v37 = *(v1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v38 = v19;
    v2 = swift_allocObject();
    *(v2 + 16) = v39;
    *(v2 + 24) = v13;
    v20 = v54;
    *(v2 + 80) = v53;
    *(v2 + 96) = v20;
    *(v2 + 112) = v55;
    *(v2 + 128) = v56;
    v21 = v52;
    *(v2 + 48) = v51;
    *(v2 + 64) = v21;
    *(v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v16;
    *(v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v17;
    sub_1D6BECDEC(v6, v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext);
    *(v2 + 32) = v35;
    *(v2 + 40) = v18;
    *(v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v34;
    *(v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v33;
    sub_1D5B68374(v50, v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v22 = v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v23 = v57;
    v24 = v48;
    *v22 = v57;
    *(v22 + 8) = v24;
    v25 = v47;
    v26 = v46;
    *(v22 + 16) = v47;
    *(v22 + 24) = v26;
    v27 = v45;
    v28 = v44;
    *(v22 + 32) = v45;
    *(v22 + 40) = v28;
    *(v22 + 48) = 1;
    v29 = (v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v30 = v38;
    *v29 = v37;
    v29[1] = v30;
    sub_1D62E312C(v23, v24, v25, v26, v27, v28, v8);

    sub_1D5CF6A5C(&v51, v49);

    v31 = v43;

    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1D5BE7B6C(v6, type metadata accessor for GroupLayoutContext);
    *(v2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v31;
  }

  return v2;
}

uint64_t sub_1D6BECDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupLayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BECE50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D27ED4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6BECEC0()
{
  v1 = 0xEA00000000002D2DLL;
  v2 = 0xE90000000000002DLL;
  v3 = 0x2D2D203A646E6962;
  v4 = 0x2D203A646C697562;
  if (!*(*v0 + 16))
  {
    v25 = 0;
    v16 = v0[1];
    if (v16 >> 62)
    {
      if (!sub_1D7263BFC())
      {
LABEL_12:
        MEMORY[0x1DA6F9910](v3, v2);

        MEMORY[0x1DA6F9910](10, 0xE100000000000000);
        v21 = v0[3];
        if (v21 >> 62)
        {
          if (!sub_1D7263BFC())
          {
            goto LABEL_16;
          }
        }

        else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        sub_1D5C384A0();
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D7273AE0;
        v15 = v0[4];
        v22 = MEMORY[0x1E69E6438];
        *(v14 + 56) = MEMORY[0x1E69E63B0];
        *(v14 + 64) = v22;
        goto LABEL_15;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    sub_1D5C384A0();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    v18 = v0[2];
    v19 = MEMORY[0x1E69E6438];
    *(v17 + 56) = MEMORY[0x1E69E63B0];
    *(v17 + 64) = v19;
    *(v17 + 32) = v18;
    v3 = sub_1D72620BC();
    v2 = v20;
    goto LABEL_12;
  }

  v25 = 91;
  v5 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](2653, 0xE200000000000000);
  v6 = v0[1];
  if (v6 >> 62)
  {
    v7 = sub_1D7263BFC();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E63B0];
  v9 = MEMORY[0x1E69E6438];
  if (v7)
  {
    sub_1D5C384A0();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    v11 = v0[2];
    *(v10 + 56) = v8;
    *(v10 + 64) = v9;
    *(v10 + 32) = v11;
    v3 = sub_1D72620BC();
    v2 = v12;
  }

  MEMORY[0x1DA6F9910](v3, v2);

  MEMORY[0x1DA6F9910](10, 0xE100000000000000);
  v13 = v0[3];
  if (v13 >> 62)
  {
    if (!sub_1D7263BFC())
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    sub_1D5C384A0();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    v15 = v0[4];
    *(v14 + 56) = v8;
    *(v14 + 64) = v9;
LABEL_15:
    *(v14 + 32) = v15;
    v4 = sub_1D72620BC();
    v1 = v23;
  }

LABEL_16:
  MEMORY[0x1DA6F9910](v4, v1);

  return v25;
}

uint64_t sub_1D6BED228@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  v59 = a1;
  if (v5)
  {
    v60 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    v6 = v60;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        MEMORY[0x1DA6FB460](v8, a2);
        v9 = sub_1D67181F8();
        v11 = v10;
        swift_unknownObjectRelease();
        v13 = *(v60 + 16);
        v12 = *(v60 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D5BFC364((v12 > 1), v13 + 1, 1);
        }

        ++v8;
        *(v60 + 16) = v13 + 1;
        v14 = v60 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = a2 + 32;
      do
      {

        v16 = sub_1D67181F8();
        v18 = v17;

        v20 = *(v60 + 16);
        v19 = *(v60 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5BFC364((v19 > 1), v20 + 1, 1);
        }

        *(v60 + 16) = v20 + 1;
        v21 = v60 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v15 += 8;
        --v5;
      }

      while (v5);
    }

    a1 = v59;
  }

  v22 = a1 >> 62;
  if (a1 >> 62)
  {
    v23 = sub_1D7263BFC();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v61 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v56 = a1 >> 62;
      v24 = v61;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        do
        {
          MEMORY[0x1DA6FB460](v25, v59);
          v26 = sub_1D67181F8();
          v28 = v27;
          swift_unknownObjectRelease();
          v30 = *(v61 + 16);
          v29 = *(v61 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          }

          ++v25;
          *(v61 + 16) = v30 + 1;
          v31 = v61 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
        }

        while (v23 != v25);
      }

      else
      {
        v32 = a1 + 32;
        do
        {

          v33 = sub_1D67181F8();
          v35 = v34;

          v37 = *(v61 + 16);
          v36 = *(v61 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1D5BFC364((v36 > 1), v37 + 1, 1);
          }

          *(v61 + 16) = v37 + 1;
          v38 = v61 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          v32 += 8;
          --v23;
        }

        while (v23);
      }

      a1 = v59;
      v22 = v56;
      goto LABEL_31;
    }

LABEL_67:
    __break(1u);
    return result;
  }

LABEL_31:
  sub_1D6985160(v24);
  v39 = sub_1D5B86020(v6);

  if (v58)
  {
LABEL_44:
    result = sub_1D7263BFC();
    v40 = result;
    if (result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v40 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
LABEL_33:
      v41 = 0;
      v42 = 0.0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1DA6FB460](v41, a2);
          v45 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          if (v41 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            v5 = sub_1D7263BFC();
            goto LABEL_3;
          }

          v45 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_43;
          }
        }

        if (*(v44 + 96))
        {

          v43 = -1.0;
        }

        else
        {
          v46 = *(v44 + 88);
          v47 = *(v44 + 48);

          v43 = (v46 - v47) * 1000.0;
        }

        v42 = v42 + v43;
        ++v41;
        if (v45 == v40)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v42 = 0.0;
LABEL_46:
  if (v22)
  {
    goto LABEL_59;
  }

  v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48)
  {
LABEL_48:
    v49 = 0;
    v50 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1DA6FB460](v49, a1);
        v53 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v49 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v53 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          result = sub_1D7263BFC();
          v48 = result;
          if (!result)
          {
            break;
          }

          goto LABEL_48;
        }
      }

      if (*(v52 + 96))
      {

        v51 = -1.0;
      }

      else
      {
        v54 = *(v52 + 88);
        v55 = *(v52 + 48);

        v51 = (v54 - v55) * 1000.0;
      }

      v50 = v50 + v51;
      ++v49;
      if (v53 == v48)
      {
        goto LABEL_61;
      }
    }
  }

  v50 = 0.0;
LABEL_61:
  *a3 = v39;
  *(a3 + 8) = a1;
  *(a3 + 16) = v50;
  *(a3 + 24) = a2;
  *(a3 + 32) = v42;
  return result;
}

id sub_1D6BED6FC(void *a1)
{
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v4 = v1[3];
  v14 = v1[2];
  v15 = v4;
  v16 = *(v1 + 32);
  if ((v13 & 0xFF00) == 0xC00)
  {
    sub_1D5C14A38();
    v5 = *(&v13 + 1);
    sub_1D5D3F188(&v12, v11);
    sub_1D6067380(v5);
    sub_1D5D41588(&v12);
    v6 = sub_1D726338C();
  }

  else
  {
    v11[71] = BYTE1(v13);
    v7 = sub_1D6F8A788();
    sub_1D5C14A38();
    v8 = *(&v13 + 1);
    sub_1D5D3F188(&v12, v11);
    sub_1D6067380(v8);
    sub_1D5D41588(&v12);
    v6 = sub_1D72633BC();
  }

  v9 = sub_1D6BEDA68(v6, a1, &v12);

  return v9;
}

void FormatSystemFont.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

__n128 FormatSystemFont.init(size:scaling:weight:traits:attributes:)@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *a1;
  v7 = *(a1 + 4);
  v8 = *a2;
  v9 = *(a4 + 32);
  *a5 = a6;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 18) = v8;
  *(a5 + 24) = a3;
  result = *a4;
  v11 = *(a4 + 16);
  *(a5 + 32) = *a4;
  *(a5 + 48) = v11;
  *(a5 + 64) = v9;
  return result;
}

uint64_t FormatSystemFont.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t FormatSystemFont.traits.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 FormatSystemFont.attributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FormatSystemFont.attributes.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v2;
  return result;
}

id sub_1D6BEDA68(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v11[0] = *(a3 + 32);
  v11[1] = v4;
  v12 = *(a3 + 64);
  if (*(sub_1D6EEBEAC(a2, v11) + 16))
  {
    v5 = [a1 fontDescriptor];
    type metadata accessor for AttributeName(0);
    sub_1D5BABD88();
    v6 = sub_1D7261D2C();

    v7 = [v5 fontDescriptorByAddingAttributes_];

    [a1 pointSize];
    v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

uint64_t _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v41 = v3;
  v42 = v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 18);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a2 + 16);
  v14 = *(a2 + 18);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  if ((v7 & 0xFF00) == 0xC00)
  {
    if ((v13 & 0xFF00) != 0xC00)
    {
      return 0;
    }
  }

  else
  {
    if ((v13 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v7)
    {
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v22 = 0;
      if (v13)
      {
        return v22;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (a3.n128_f64[0] != *(a2 + 8))
      {
        return v22;
      }
    }

    v32 = *(a1 + 48);
    v34 = *(a1 + 32);
    v29 = v8;
    v30 = v14;
    LOBYTE(v39[0]) = HIBYTE(v7);
    LOBYTE(v35[0]) = HIBYTE(v13);
    v23 = FormatFontScalingStyle.rawValue.getter(a3);
    v25 = v24;
    if (v23 == FormatFontScalingStyle.rawValue.getter(v26) && v25 == v27)
    {

      v8 = v29;
      v14 = v30;
      v11 = v32;
      v10 = v34;
    }

    else
    {
      v28 = sub_1D72646CC();

      v8 = v29;
      v14 = v30;
      v11 = v32;
      v10 = v34;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v31 = v11;
  v33 = v10;
  if (sub_1D6DE1504(v8, v14) & 1) != 0 && (sub_1D5E22704(v9, v15))
  {
    if ((v12 & 0xFF00) == 0x500)
    {
      if ((v20 & 0xFF00) == 0x500)
      {
        return 1;
      }
    }

    else
    {
      v39[0] = v33;
      v39[1] = v31;
      v40 = v12;
      if ((v20 & 0xFF00) != 0x500)
      {
        LOBYTE(v35[0]) = v16;
        v35[1] = v18;
        v36 = v17 & 1;
        v37 = v19;
        v38 = v20 & 0xFF01;
        if (_s8NewsFeed20FormatFontAttributesV2eeoiySbAC_ACtFZ_0(v39, v35))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

unint64_t sub_1D6BEDDBC(uint64_t a1)
{
  result = sub_1D6BEDDE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BEDDE4()
{
  result = qword_1EC893540;
  if (!qword_1EC893540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893540);
  }

  return result;
}

unint64_t sub_1D6BEDE38(void *a1)
{
  a1[1] = sub_1D5C37724();
  a1[2] = sub_1D5D3F4C8();
  result = sub_1D6BEDE70();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BEDE70()
{
  result = qword_1EC893548;
  if (!qword_1EC893548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893548);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

NewsFeed::FormatFlexBoxNodeWrap_optional __swiftcall FormatFlexBoxNodeWrap.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFlexBoxNodeWrap.rawValue.getter()
{
  v1 = 1885434487;
  if (*v0 != 1)
  {
    v1 = 0x6576655270617277;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706172576F6ELL;
  }
}

uint64_t sub_1D6BEDFB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1885434487;
  if (v2 != 1)
  {
    v4 = 0x6576655270617277;
    v3 = 0xEB00000000657372;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x706172576F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1885434487;
  if (*a2 != 1)
  {
    v8 = 0x6576655270617277;
    v7 = 0xEB00000000657372;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x706172576F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6BEE0BC()
{
  result = qword_1EC893550;
  if (!qword_1EC893550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893550);
  }

  return result;
}

uint64_t sub_1D6BEE110()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BEE1B0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BEE23C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6BEE2E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885434487;
  if (v2 != 1)
  {
    v5 = 0x6576655270617277;
    v4 = 0xEB00000000657372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x706172576F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6BEE340(uint64_t a1)
{
  result = sub_1D6666138();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BEE36C()
{
  result = qword_1EC893558;
  if (!qword_1EC893558)
  {
    sub_1D6BEE3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893558);
  }

  return result;
}

void sub_1D6BEE3C4()
{
  if (!qword_1EC893560)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893560);
    }
  }
}

unint64_t sub_1D6BEE424(void *a1)
{
  a1[1] = sub_1D6BEE45C();
  a1[2] = sub_1D6BEE4B0();
  result = sub_1D6BEE0BC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BEE45C()
{
  result = qword_1EC893568;
  if (!qword_1EC893568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893568);
  }

  return result;
}

unint64_t sub_1D6BEE4B0()
{
  result = qword_1EC893570;
  if (!qword_1EC893570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893570);
  }

  return result;
}

unint64_t sub_1D6BEE5C4()
{
  result = qword_1EC893578;
  if (!qword_1EC893578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893578);
  }

  return result;
}

uint64_t FeedPersonalizationServiceError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6BEE690()
{
  result = qword_1EC893580;
  if (!qword_1EC893580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893580);
  }

  return result;
}

unint64_t PuzzleEmbedMessageHandlerKind.eventName.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  if (v2 <= 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0xD000000000000016;
    if (v2 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (v2 != 2)
    {
      v6 = v7;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0xD00000000000001CLL;
    if (v2 != 9)
    {
      v4 = 0xD000000000000017;
    }

    if (v2 == 8)
    {
      v4 = 0xD000000000000013;
    }

    if (v2 != 6)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2 != 5)
    {
      v1 = v3;
    }

    if (*v0 <= 7u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t PuzzleEmbedMessageHandlerKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

void SWMessageHandlerManager.add(handler:for:)(uint64_t a1)
{
  v3 = sub_1D726203C();

  [v1 addMessageHandler:a1 name:v3];
}

unint64_t sub_1D6BEEA44()
{
  result = qword_1EC893588;
  if (!qword_1EC893588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893588);
  }

  return result;
}

__n128 FormatProgressViewLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:kind:zIndex:visibility:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t *a16)
{
  v25 = swift_allocObject();
  v26 = *a8;
  v27 = *(a13 + 32);
  v28 = *(a13 + 40);
  v29 = *a15;
  v30 = *a16;
  v31 = *(a16 + 8);
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  *(v25 + 48) = a5;
  *(v25 + 56) = a6;
  *(v25 + 64) = a9;
  *(v25 + 72) = a10;
  *(v25 + 80) = a11;
  *(v25 + 88) = a12;
  *(v25 + 96) = a7;
  *(v25 + 104) = v26;
  result = *a13;
  v33 = *(a13 + 16);
  *(v25 + 112) = *a13;
  *(v25 + 128) = v33;
  *(v25 + 144) = v27;
  *(v25 + 152) = v28;
  *(v25 + 160) = a14;
  *(v25 + 168) = v29;
  *(v25 + 176) = v30;
  *(v25 + 184) = v31;
  *(v25 + 192) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t FormatProgressViewLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatProgressViewLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatProgressViewLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 FormatProgressViewLayoutAttributes.kind.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

unint64_t FormatProgressViewLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatProgressViewLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
}

uint64_t FormatProgressViewLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:kind:zIndex:visibility:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t *a16)
{
  v17 = *a8;
  v18 = *(a13 + 32);
  v19 = *(a13 + 40);
  v20 = *a15;
  v21 = *a16;
  v22 = *(a16 + 8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = a7;
  *(v16 + 104) = v17;
  v23 = *(a13 + 16);
  *(v16 + 112) = *a13;
  *(v16 + 128) = v23;
  *(v16 + 144) = v18;
  *(v16 + 152) = v19;
  *(v16 + 160) = a14;
  *(v16 + 168) = v20;
  *(v16 + 176) = v21;
  *(v16 + 184) = v22;
  *(v16 + 192) = MEMORY[0x1E69E7CD0];
  return v16;
}

unint64_t sub_1D6BEED30(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x6E65644965646F6ELL;
    v8 = 0x656D617266;
    if (a1 != 3)
    {
      v8 = 0x656C797473;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696C696269736976;
    v2 = 0xD000000000000013;
    if (a1 == 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x676E697A69736572;
    v4 = 1684957547;
    if (a1 != 6)
    {
      v4 = 0x7865646E497ALL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6BEEE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6BF017C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6BEEEC4(uint64_t a1)
{
  v2 = sub_1D6BEF4A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BEEF00(uint64_t a1)
{
  v2 = sub_1D6BEF4A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 168));

  return v0;
}

uint64_t FormatProgressViewLayoutAttributes.__deallocating_deinit()
{
  FormatProgressViewLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatProgressViewLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6BEFC20(0, &qword_1EC893590, sub_1D6BEF4A0, &type metadata for FormatProgressViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BEF4A0();
  sub_1D7264B5C();
  LOBYTE(v17) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1D72643FC();
    LOBYTE(v17) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v17 = *(v3 + 64);
    v18 = v12;
    v21 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6BF04FC(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v17 = *(v3 + 96);
    v21 = 4;
    type metadata accessor for FormatProgressViewNodeStyle();
    sub_1D6BF04FC(&unk_1EDF0AF40, 255, type metadata accessor for FormatProgressViewNodeStyle);
    sub_1D72643BC();
    *&v17 = *(v3 + 104);
    v21 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    v13 = *(v3 + 144);
    v14 = *(v3 + 152);
    v15 = *(v3 + 128);
    v17 = *(v3 + 112);
    v18 = v15;
    v19 = v13;
    v20 = v14;
    v21 = 6;
    sub_1D6BEF4F4();
    sub_1D726443C();
    LOBYTE(v17) = 7;
    sub_1D726442C();
    *&v17 = *(v3 + 168);
    v21 = 8;
    sub_1D5EB1500(v17);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v17);
    v16 = *(v3 + 184);
    *&v17 = *(v3 + 176);
    BYTE8(v17) = v16;
    v21 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v17 = *(v3 + 192);
    v21 = 10;
    sub_1D6BEFC20(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6BEFCDC(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6BEF4A0()
{
  result = qword_1EC893598;
  if (!qword_1EC893598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893598);
  }

  return result;
}

unint64_t sub_1D6BEF4F4()
{
  result = qword_1EC8935A0;
  if (!qword_1EC8935A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935A0);
  }

  return result;
}

uint64_t FormatProgressViewLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatProgressViewLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatProgressViewLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6BEFC20(0, &qword_1EC8935A8, sub_1D6BEF4A0, &type metadata for FormatProgressViewLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BEF4A0();
  v21 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v19;
    LOBYTE(v22) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v22) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v22) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v26 = 3;
    sub_1D6BF04FC(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v23;
    *(v1 + 64) = v22;
    *(v1 + 80) = v13;
    type metadata accessor for FormatProgressViewNodeStyle();
    v26 = 4;
    sub_1D6BF04FC(&qword_1EDF22150, 255, type metadata accessor for FormatProgressViewNodeStyle);
    sub_1D726427C();
    *(v1 + 96) = v22;
    v26 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 104) = v22;
    v26 = 6;
    sub_1D6BEFC88();
    sub_1D726431C();
    v14 = v24;
    v15 = v25;
    v16 = v23;
    *(v1 + 112) = v22;
    *(v1 + 128) = v16;
    *(v1 + 144) = v14;
    *(v1 + 152) = v15;
    LOBYTE(v22) = 7;
    *(v1 + 160) = sub_1D72642FC();
    v26 = 8;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 168) = v22;
    v26 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v17 = BYTE8(v22);
    *(v1 + 176) = v22;
    *(v1 + 184) = v17;
    sub_1D6BEFC20(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v26 = 10;
    sub_1D6BEFCDC(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v21, v20);
    *(v1 + 192) = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6BEFC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6BEFC88()
{
  result = qword_1EC8935B0;
  if (!qword_1EC8935B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935B0);
  }

  return result;
}

uint64_t sub_1D6BEFCDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6BEFC20(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6BEFED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatProgressViewLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6BEFF4C(uint64_t a1, uint64_t a2)
{
  sub_1D6BF04FC(&qword_1EC8935F0, a2, type metadata accessor for FormatProgressViewLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6BF0078()
{
  result = qword_1EC8935D8;
  if (!qword_1EC8935D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935D8);
  }

  return result;
}

unint64_t sub_1D6BF00D0()
{
  result = qword_1EC8935E0;
  if (!qword_1EC8935E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935E0);
  }

  return result;
}

unint64_t sub_1D6BF0128()
{
  result = qword_1EC8935E8;
  if (!qword_1EC8935E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935E8);
  }

  return result;
}

uint64_t sub_1D6BF017C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C05F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D617266 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C48E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D6BF04FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6BF0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, _BYTE *a7)
{
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 64) = *a5;
  *(v8 + 122) = *a7;
  *(v8 + 123) = *v7;
  return MEMORY[0x1EEE6DFA0](sub_1D6BF05A4, 0, 0);
}

uint64_t sub_1D6BF05A4()
{
  v1 = *(v0 + 122);
  if (*(v0 + 123) <= 1u)
  {
    if (!*(v0 + 123))
    {
      v3 = *(v0 + 32);
      v2 = *(v0 + 40);
      v4 = *(v0 + 24);
      type metadata accessor for RepoolFeedRefreshStrategy();
      *(v0 + 72) = sub_1D5E31FC4(v4, v3, v2);
      *(v0 + 121) = v1;

      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      v5[1] = sub_1D6BF08A8;
      v6 = *(v0 + 48);
      v7 = *(v0 + 56);
      v8 = *(v0 + 16);

      return sub_1D6A96E68(v8, v6, v7);
    }

    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 32);
    v18 = *(v0 + 40);
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);
    type metadata accessor for PublishDateFeedRefreshStrategy();
    sub_1D5E31FC4(v19, v17, v18);

    sub_1D5E3200C(v16, v15, v20);
    goto LABEL_9;
  }

  if (*(v0 + 123) == 2)
  {
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    type metadata accessor for ForceFeedRefreshStrategy();
    sub_1D5E31FC4(v13, v11, v12);

    sub_1D5E3B86C(v10, v14);
LABEL_9:

    v28 = *(v0 + 8);

    return v28();
  }

  v22 = *(v0 + 32);
  v21 = *(v0 + 40);
  v23 = *(v0 + 24);
  type metadata accessor for ChronologicalFeedRefreshStrategy();
  *(v0 + 96) = sub_1D5E31FC4(v23, v22, v21);
  *(v0 + 120) = v1;

  v24 = swift_task_alloc();
  *(v0 + 104) = v24;
  *v24 = v0;
  v24[1] = sub_1D6BF0A20;
  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  v27 = *(v0 + 16);

  return sub_1D5EDC234(v27, v25, v26, (v0 + 120));
}

uint64_t sub_1D6BF08A8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D6BF0B98;
  }

  else
  {
    v2 = sub_1D6BF09BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6BF09BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6BF0A20()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D6BF0BFC;
  }

  else
  {
    v2 = sub_1D6BF0B34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6BF0B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6BF0B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6BF0BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

NewsFeed::FeedRefreshStrategy_optional __swiftcall FeedRefreshStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedRefreshStrategy.rawValue.getter()
{
  v1 = 0x6C6F6F706572;
  v2 = 0x6563726F66;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F6E6F726863;
  }

  if (*v0)
  {
    v1 = 0x446873696C627570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6BF0D50()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BF0E20()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BF0EDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6BF0FB4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6C6F6F706572;
  v4 = 0xE500000000000000;
  v5 = 0x6563726F66;
  if (*v1 != 2)
  {
    v5 = 0x6F6C6F6E6F726863;
    v4 = 0xED00006C61636967;
  }

  if (*v1)
  {
    v3 = 0x446873696C627570;
    v2 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6BF1040(uint64_t a1)
{
  v2 = sub_1D6BF1D84();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6BF1094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6BF1D84();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6BF10F0(uint64_t a1)
{
  v2 = sub_1D6BF1D84();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsFeed::FeedRefreshStrategy __swiftcall FeedRefreshStrategyOption.feedRefreshStrategy(fromConfig:)(NewsFeed::FeedRefreshStrategy fromConfig)
{
  v3 = *v2;
  if (v3 >= 4)
  {
    LOBYTE(v3) = *fromConfig;
  }

  *v1 = v3;
  return fromConfig;
}

NewsFeed::FeedRefreshStrategyOption_optional __swiftcall FeedRefreshStrategyOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedRefreshStrategyOption.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6F6F706572;
  v3 = 0x6563726F66;
  v4 = 0x6F6C6F6E6F726863;
  if (v1 != 3)
  {
    v4 = 0x6769666E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x446873696C627570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6BF1268()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BF1354()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BF142C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6BF1520(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C6F6F706572;
  v5 = 0xE500000000000000;
  v6 = 0x6563726F66;
  v7 = 0xED00006C61636967;
  v8 = 0x6F6C6F6E6F726863;
  if (v2 != 3)
  {
    v8 = 0x6769666E6F63;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x446873696C627570;
    v3 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D6BF15C8(uint64_t a1)
{
  v2 = sub_1D6BF1D30();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6BF161C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6BF1D30();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6BF1678(uint64_t a1)
{
  v2 = sub_1D6BF1D30();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsFeed::FeedAutoRefreshStrategy_optional __swiftcall FeedAutoRefreshStrategy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedAutoRefreshStrategy.rawValue.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6563726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

unint64_t sub_1D6BF1780()
{
  result = qword_1EC8935F8;
  if (!qword_1EC8935F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8935F8);
  }

  return result;
}

unint64_t sub_1D6BF17D4()
{
  result = qword_1EDF13A10;
  if (!qword_1EDF13A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13A10);
  }

  return result;
}

uint64_t sub_1D6BF1828(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x64656C6261736964;
  if (v2 != 1)
  {
    v4 = 0x6563726F66;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656C62616E65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656C6261736964;
  if (*a2 != 1)
  {
    v8 = 0x6563726F66;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656C62616E65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6BF1924()
{
  result = qword_1EDF36A48[0];
  if (!qword_1EDF36A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF36A48);
  }

  return result;
}

uint64_t sub_1D6BF1978()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BF1A18()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BF1AA4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6BF1B4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656C6261736964;
  if (v2 != 1)
  {
    v5 = 0x6563726F66;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C62616E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6BF1BA8(uint64_t a1)
{
  v2 = sub_1D6BF1CDC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6BF1BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6BF1CDC();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6BF1C58(uint64_t a1)
{
  v2 = sub_1D6BF1CDC();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D6BF1CDC()
{
  result = qword_1EDF36A40;
  if (!qword_1EDF36A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF36A40);
  }

  return result;
}

unint64_t sub_1D6BF1D30()
{
  result = qword_1EDF13A08;
  if (!qword_1EDF13A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13A08);
  }

  return result;
}

unint64_t sub_1D6BF1D84()
{
  result = qword_1EC893600;
  if (!qword_1EC893600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893600);
  }

  return result;
}

uint64_t FormatPurchaseLandingPageData.articleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatPurchaseLandingPageData.postPurchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatPurchaseLandingPageData() + 20);

  return sub_1D6BF1EA4(v3, a1);
}

uint64_t type metadata accessor for FormatPurchaseLandingPageData()
{
  result = qword_1EDF21200;
  if (!qword_1EDF21200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BF1EA4(uint64_t a1, uint64_t a2)
{
  sub_1D614F57C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6BF1F30()
{
  sub_1D614F57C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sportsOnboardingState(userInfo:)(void *a1)
{
  if ([a1 sportsSyncState] != 2)
  {
    return 0;
  }

  return [a1 sportsOnboardingState];
}

uint64_t sub_1D6BF200C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B6E12C(0, &qword_1EDF18178);
  v12[1] = 0;
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D6BF6AB0();
  sub_1D6BF6B08();
  *(swift_allocObject() + 16) = xmmword_1D7279970;
  v12[0] = 0;
  sub_1D725980C();
  v12[0] = 1;
  sub_1D725980C();
  v12[0] = 2;
  sub_1D725980C();
  result = sub_1D725982C();
  qword_1EC893608 = result;
  return result;
}

uint64_t sub_1D6BF2350()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893610 = result;
  return result;
}

uint64_t sub_1D6BF2574()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.BoxScoreEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18540 = result;
  return result;
}

uint64_t sub_1D6BF275C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893618 = result;
  return result;
}

uint64_t sub_1D6BF2980()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.InjuryReportEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18370 = result;
  return result;
}

uint64_t sub_1D6BF2B68()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893620 = result;
  return result;
}

uint64_t sub_1D6BF2D8C()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.KeyPlayersEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF183C0 = result;
  return result;
}

uint64_t sub_1D6BF2F74()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893628 = result;
  return result;
}

uint64_t sub_1D6BF3198()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.LineScoreEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18460 = result;
  return result;
}

uint64_t sub_1D6BF3380()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893630 = result;
  return result;
}

uint64_t Settings.Sports.ScoreEmbed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8NewsFeedE0cD6ModuleV13BundleSessionV21FamilyStatusOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BF35E0()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.ScoreEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18620 = result;
  return result;
}

uint64_t sub_1D6BF37C8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893638 = result;
  return result;
}

uint64_t sub_1D6BF39EC()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.MastheadScoreEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18320 = result;
  return result;
}

uint64_t sub_1D6BF3BD4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893640 = result;
  return result;
}

uint64_t sub_1D6BF3DF8()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.StandingEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF184B0 = result;
  return result;
}

uint64_t sub_1D6BF3FE0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000043;
  v12[1] = 0x80000001D73EC9F0;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893648 = result;
  return result;
}

uint64_t sub_1D6BF420C()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.StandingConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18410 = result;
  return result;
}

uint64_t sub_1D6BF43F4()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597EC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF18308 = result;
  return result;
}

uint64_t sub_1D6BF45E4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x80000001D73EC910;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893650 = result;
  return result;
}

uint64_t sub_1D6BF4808()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.BracketEmbed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF18588 = result;
  return result;
}

uint64_t sub_1D6BF49F0()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000044;
  v12[1] = 0x80000001D73EC840;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893658 = result;
  return result;
}

uint64_t sub_1D6BF4C1C()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.BoxScoreConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC893660 = result;
  return result;
}

uint64_t sub_1D6BF4E04()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000042;
  v12[1] = 0x80000001D73EC770;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893668 = result;
  return result;
}

uint64_t sub_1D6BF5030()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.BracketConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF184F8 = result;
  return result;
}

uint64_t sub_1D6BF5218()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000045;
  v12[1] = 0x80000001D73EC6A0;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893670 = result;
  return result;
}

uint64_t sub_1D6BF5444()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.KeyPlayersConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC893678 = result;
  return result;
}

uint64_t sub_1D6BF562C()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000045;
  v12[1] = 0x80000001D73EC5D0;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893680 = result;
  return result;
}

uint64_t sub_1D6BF5858()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.LineScoreConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC893688 = result;
  return result;
}

uint64_t sub_1D6BF5A40()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000048;
  v12[1] = 0x80000001D73EC500;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC893690 = result;
  return result;
}

uint64_t sub_1D6BF5C6C()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.InjuryReportConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EC893698 = result;
  return result;
}

uint64_t sub_1D6BF5E54()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D726207C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD000000000000040;
  v12[1] = 0x80000001D73EC430;
  sub_1D5B6E12C(0, &qword_1EC885688);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC8936A0 = result;
  return result;
}

uint64_t _s11TeaSettings0B0C8NewsFeedE6SportsV10ScoreEmbedV15ConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t _s11TeaSettings0B0C8NewsFeedE6SportsV10ScoreEmbedV15ConfigOverridesC3key12defaultValue6accessAJSSSg_SbAA6AccessOtcfc_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D725969C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t sub_1D6BF62BC()
{
  v0 = sub_1D72597FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D72597EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Sports.ScoreConfig.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D726207C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D725968C();
  qword_1EDF185D8 = result;
  return result;
}

uint64_t sub_1D6BF64A4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5B6E12C(0, &qword_1EDF45BA8);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EDF182F0 = result;
  return result;
}

void sub_1D6BF6AB0()
{
  if (!qword_1EDF02410)
  {
    sub_1D6BF6B08();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02410);
    }
  }
}

void sub_1D6BF6B08()
{
  if (!qword_1EDF18198)
  {
    v0 = sub_1D725981C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18198);
    }
  }
}

uint64_t sub_1D6BF6C48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D6BF6C58(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatCompilerResultEntry();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v24 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v12 + 72);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a1 + v25;
  v18 = MEMORY[0x1E69E7CC0];
  v26 = v2;
  do
  {
    sub_1D6BF71E4(v17, v14, type metadata accessor for DebugFormatCompilerResultEntry);
    sub_1D6BF71E4(&v14[*(v6 + 20)], v5, type metadata accessor for DebugFormatCompilerResultOutput);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      sub_1D6BF724C(v5, type metadata accessor for DebugFormatCompilerResultOutput);
      sub_1D6BF724C(v14, type metadata accessor for DebugFormatCompilerResultEntry);
    }

    else
    {
      sub_1D67D37A8();

      sub_1D6BF724C(v5, type metadata accessor for FormatFile);
      sub_1D6BF72AC(v14, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998024(0, *(v18 + 16) + 1, 1);
        v18 = v27;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D6998024(v21 > 1, v22 + 1, 1);
        v18 = v27;
      }

      *(v18 + 16) = v22 + 1;
      sub_1D6BF72AC(v9, v18 + v25 + v22 * v16);
    }

    v17 += v16;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_1D6BF6F14(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatCompilerResultEntry();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v12 + 72);
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v28;
    v18 = MEMORY[0x1E69E7CC0];
    v29 = v9;
    while (1)
    {
      sub_1D6BF71E4(v17, v14, type metadata accessor for DebugFormatCompilerResultEntry);
      sub_1D6BF71E4(&v14[*(v6 + 20)], v5, type metadata accessor for DebugFormatCompilerResultOutput);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = type metadata accessor for DebugFormatCompilerResultOutput;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D6BF724C(v5, type metadata accessor for DebugFormatCompilerResultOutput);
          sub_1D6BF72AC(v14, v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6998024(0, *(v18 + 16) + 1, 1);
            v18 = v30;
          }

          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1D6998024(v23 > 1, v24 + 1, 1);
            v18 = v30;
          }

          *(v18 + 16) = v24 + 1;
          v25 = v18 + v28 + v24 * v16;
          v9 = v29;
          sub_1D6BF72AC(v29, v25);
          goto LABEL_5;
        }

        sub_1D67D37A8();

        v20 = type metadata accessor for FormatFile;
      }

      sub_1D6BF724C(v5, v20);
      sub_1D6BF724C(v14, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_5:
      v17 += v16;
      if (!--v15)
      {
        return v18;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6BF71E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BF724C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6BF72AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCompilerResultEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BF7310(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatCompilerResultEntry();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v12 + 72);
  v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a1 + v28;
  v18 = MEMORY[0x1E69E7CC0];
  v29 = v9;
  do
  {
    sub_1D6BF71E4(v17, v14, type metadata accessor for DebugFormatCompilerResultEntry);
    sub_1D6BF71E4(&v14[*(v6 + 20)], v5, type metadata accessor for DebugFormatCompilerResultOutput);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = type metadata accessor for DebugFormatCompilerResultOutput;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1D67D37A8();

        v20 = type metadata accessor for FormatFile;
      }

      sub_1D6BF724C(v5, v20);
      sub_1D6BF724C(v14, type metadata accessor for DebugFormatCompilerResultEntry);
    }

    else
    {
      sub_1D6BF724C(v5, type metadata accessor for DebugFormatCompilerResultOutput);
      sub_1D6BF72AC(v14, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6998024(0, *(v18 + 16) + 1, 1);
        v18 = v30;
      }

      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D6998024(v23 > 1, v24 + 1, 1);
        v18 = v30;
      }

      *(v18 + 16) = v24 + 1;
      v25 = v18 + v28 + v24 * v16;
      v9 = v29;
      sub_1D6BF72AC(v29, v25);
    }

    v17 += v16;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t sub_1D6BF761C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v13 = *(v2 + 8);
  type metadata accessor for GroupLayoutContext();
  v6 = sub_1D7259CCC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = v7 | 0x4000000000000000;
  v14[2] = v7 | 0x4000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v8;
  v14[0] = v10 | 0x4000000000000000;
  sub_1D6BE54C8(v14, *(a2 + 16), 0, 0xE000000000000000);

  if (v3)
  {
    sub_1D725BC1C();
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v8;
    sub_1D6054BB8(v9, v11 | 0x4000000000000000, v13);

    sub_1D725BC1C();
  }
}

uint64_t sub_1D6BF7794(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  type metadata accessor for GroupLayoutContext();
  v6 = sub_1D7259CCC();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = v7 | 0x4000000000000000;
  v14[1] = v7 | 0x4000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v8;
  v14[0] = v10 | 0x4000000000000000;
  sub_1D6BE54C8(v14, *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory), 0, 0xE000000000000000);

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = v8;
  v12 = sub_1D6054BB8(v9, v11 | 0x4000000000000000, a3);

  return v12 & 1;
}

uint64_t static FormatLayoutExpression.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = FormatOperator.rawValue.getter();
    v4 = v3;
    if (v2 == FormatOperator.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1D72646CC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1D6BF79A4(uint64_t a1)
{
  result = sub_1D6BF79CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BF79CC()
{
  result = qword_1EC8936E8;
  if (!qword_1EC8936E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8936E8);
  }

  return result;
}

unint64_t sub_1D6BF7A20(void *a1)
{
  a1[1] = sub_1D5C5FD84();
  a1[2] = sub_1D66FEA70();
  result = sub_1D6BF7A58();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BF7A58()
{
  result = qword_1EC8936F0;
  if (!qword_1EC8936F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8936F0);
  }

  return result;
}

unint64_t FormatSlotItemTagFilterOrCondition.lhsCondition.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5F33D5C(v2);
}

unint64_t FormatSlotItemTagFilterOrCondition.rhsCondition.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5F33D5C(v2);
}

unint64_t sub_1D6BF7B20(uint64_t a1)
{
  result = sub_1D6BF7B48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BF7B48()
{
  result = qword_1EC8936F8;
  if (!qword_1EC8936F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8936F8);
  }

  return result;
}

unint64_t sub_1D6BF7B9C(void *a1)
{
  a1[1] = sub_1D665BDE0();
  a1[2] = sub_1D6705DA0();
  result = sub_1D6BF7BD4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BF7BD4()
{
  result = qword_1EC893700;
  if (!qword_1EC893700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893700);
  }

  return result;
}

uint64_t sub_1D6BF7C48(_OWORD *a1, double a2)
{
  v3 = a1[11];
  v42 = a1[10];
  v43 = v3;
  v4 = a1[13];
  v44 = a1[12];
  v45 = v4;
  v5 = a1[7];
  v38 = a1[6];
  v39 = v5;
  v6 = a1[9];
  v40 = a1[8];
  v41 = v6;
  v7 = a1[3];
  v34 = a1[2];
  v35 = v7;
  v8 = a1[5];
  v36 = a1[4];
  v37 = v8;
  v9 = a1[1];
  v33[0] = *a1;
  v33[1] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D6BF7E64();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  *(inited + 32) = 0x636170736B726F57;
  *(inited + 40) = 0xE900000000000065;
  v12 = v34;
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E61C8];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v14;
  *(inited + 48) = v12;
  *(inited + 88) = 0;
  *(inited + 96) = 0x656369766544;
  *(inited + 104) = 0xE600000000000000;
  v15 = sub_1D6E236D4(SBYTE3(v44));
  *(inited + 136) = v13;
  *(inited + 144) = v14;
  *(inited + 112) = v15;
  *(inited + 120) = v16;
  *(inited + 152) = 0;

  sub_1D698894C(inited);
  v17 = *(*(&v45 + 1) + 16);
  if (v17)
  {
    sub_1D6999EEC(0, v17, 0);
    v18 = (*(&v45 + 1) + 72);
    do
    {
      v19 = *(v18 - 4);
      v30 = *(v18 - 5);
      v21 = *(v18 - 3);
      v20 = *(v18 - 2);
      v22 = *(v18 - 1);
      v23 = *v18;
      v31 = v10;
      v25 = *(v10 + 16);
      v24 = *(v10 + 24);

      v26 = v23;
      if (v25 >= v24 >> 1)
      {
        v28 = v26;
        sub_1D6999EEC((v24 > 1), v25 + 1, 1);
        v26 = v28;
        v10 = v31;
      }

      v18 += 6;
      *(v10 + 16) = v25 + 1;
      v27 = v10 + (v25 << 6);
      *(v27 + 32) = v30;
      *(v27 + 40) = v19;
      *(v27 + 48) = v21;
      *(v27 + 56) = v20;
      *(v27 + 64) = v22;
      *(v27 + 72) = v26;
      *(v27 + 80) = a2;
      *(v27 + 88) = 1;
      --v17;
    }

    while (v17);
  }

  sub_1D6BF7EB4(v33);
  sub_1D698894C(v10);
  return v32;
}

void sub_1D6BF7E64()
{
  if (!qword_1EC88EEC0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EEC0);
    }
  }
}

uint64_t AdPresentationDelegateProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 1;
  return v0;
}

void AdPresentationDelegateProvider.viewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AdPresentationDelegateProvider.viewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D6BF8064;
}

void sub_1D6BF8064(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D6BF80E0()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      type metadata accessor for AdPresentationDelegate();
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
    }

    else
    {
      v2 = 0;
    }

    v5 = *(v0 + 24);
    *(v0 + 24) = v2;

    sub_1D5F2B1E8(v5);
  }

  sub_1D5F2B27C(v1);
  return v2;
}

uint64_t AdPresentationDelegateProvider.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 1;
  return v0;
}

uint64_t AdPresentationDelegateProvider.deinit()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  sub_1D5F2B1E8(*(v0 + 24));
  return v0;
}

uint64_t AdPresentationDelegateProvider.__deallocating_deinit()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  sub_1D5F2B1E8(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BF82A4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocClassInstance();
}

size_t sub_1D6BF8300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a1;
  v35 = a3;
  v41 = type metadata accessor for FormatJson();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = (&v34 - v10);
  v11 = type metadata accessor for FormatJsonKeyValue();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 3, 0);
  v17 = 0;
  v42 = v45;
  v37 = v12;
  v38 = v11;
  v36 = v15;
  v39 = v16;
  while (1)
  {
    if (!byte_1F50F3768[v17 + 32])
    {
      sub_1D6F1D398(v16, (v15 + *(v11 + 20)));
      *v15 = 0x746E657665;
      v18 = 0xE500000000000000;
      goto LABEL_6;
    }

    if (byte_1F50F3768[v17 + 32] != 1)
    {
      break;
    }

    sub_1D6F1D398([v16 eventLeagueTag], (v15 + *(v11 + 20)));
    swift_unknownObjectRelease();
    *v15 = 0x65756761656CLL;
    v18 = 0xE600000000000000;
LABEL_6:
    v15[1] = v18;
LABEL_23:
    v30 = v42;
    v45 = v42;
    v32 = *(v42 + 16);
    v31 = *(v42 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1D6997B40(v31 > 1, v32 + 1, 1);
      v30 = v45;
    }

    ++v17;
    *(v30 + 16) = v32 + 1;
    v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v42 = v30;
    sub_1D6BF89BC(v15, v30 + v33 + *(v12 + 72) * v32, type metadata accessor for FormatJsonKeyValue);
    if (v17 == 3)
    {
      *v35 = v42;
      return swift_storeEnumTagMultiPayload();
    }
  }

  v19 = [v16 eventCompetitorTags];
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_20;
    }

LABEL_9:
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_10;
    }

LABEL_21:

    v25 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v29 = v40;
    *v40 = v25;
    swift_storeEnumTagMultiPayload();
    *v15 = 0x74697465706D6F63;
    v15[1] = 0xEA0000000000726FLL;
    sub_1D6BF89BC(v29, v15 + *(v11 + 20), type metadata accessor for FormatJson);
    v16 = v39;
    goto LABEL_23;
  }

  v20 = v19;
  sub_1D5EC01D0();
  v21 = sub_1D726267C();

  if (!(v21 >> 62))
  {
    goto LABEL_9;
  }

LABEL_20:
  v22 = sub_1D7263BFC();
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_10:
  v44 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997B90(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v44;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1DA6FB460](v24, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      sub_1D6F1D398(v26, v7);
      swift_unknownObjectRelease();
      v44 = v25;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D6997B90(v27 > 1, v28 + 1, 1);
        v25 = v44;
      }

      ++v24;
      *(v25 + 16) = v28 + 1;
      sub_1D6BF89BC(v7, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, type metadata accessor for FormatJson);
    }

    while (v22 != v24);

    v12 = v37;
    v11 = v38;
    v15 = v36;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t FormatSportsEventBinding.Asset.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t FormatSportsEventBinding.Asset.rawValue.getter()
{
  v1 = 0x65756761656CLL;
  if (*v0 != 1)
  {
    v1 = 0x74697465706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657665;
  }
}

unint64_t sub_1D6BF8890()
{
  result = qword_1EC893710;
  if (!qword_1EC893710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893710);
  }

  return result;
}

unint64_t sub_1D6BF88F4()
{
  result = qword_1EC893718;
  if (!qword_1EC893718)
  {
    sub_1D6BF894C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893718);
  }

  return result;
}

void sub_1D6BF894C()
{
  if (!qword_1EC893720)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893720);
    }
  }
}

uint64_t sub_1D6BF89BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BF8A24(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6BF8A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D6BF8AE4()
{
  if (*v0)
  {
    return 0x647574696C706D61;
  }

  else
  {
    return 0x6F756E69746E6F63;
  }
}

uint64_t sub_1D6BF8B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F756E69746E6F63 && a2 == 0xEA00000000007375;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647574696C706D61 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6BF8C14(uint64_t a1)
{
  v2 = sub_1D6BF97EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BF8C50(uint64_t a1)
{
  v2 = sub_1D6BF97EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D6BF8C8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D6BF9144(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1D6BF8CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x647574696C706D61 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6BF8D68(uint64_t a1)
{
  v2 = sub_1D6BF98A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BF8DA4(uint64_t a1)
{
  v2 = sub_1D6BF98A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6BF8DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D6BF9840(0, &qword_1EDF03A40, sub_1D6BF98A0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BF98A0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v15;
  sub_1D72642DC();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v12;
  return result;
}

uint64_t sub_1D6BF8F84()
{
  if (*v0)
  {
    return 0x6E6F69746F6DLL;
  }

  else
  {
    return 0x78616C6C61726170;
  }
}

uint64_t sub_1D6BF8FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x78616C6C61726170 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746F6DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6BF9094(uint64_t a1)
{
  v2 = sub_1D6BF9518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BF90D0(uint64_t a1)
{
  v2 = sub_1D6BF9518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6BF910C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D6BF9314(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

double sub_1D6BF9144(void *a1)
{
  sub_1D6BF9840(0, &qword_1EC893730, sub_1D6BF97EC);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BF97EC();
  sub_1D7264B0C();
  if (!v1)
  {
    v12[15] = 0;
    sub_1D726423C();
    v12[14] = 1;
    sub_1D72642DC();
    v2 = v11;
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1D6BF9314(void *a1)
{
  sub_1D6BF9840(0, &qword_1EDF03A48, sub_1D6BF9518);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D6BF9518();
  sub_1D7264B0C();
  if (!v1)
  {
    v12 = 0;
    sub_1D6BF956C();
    sub_1D726427C();
    v9 = v11;
    v12 = 1;
    sub_1D6BF95C0();
    sub_1D726427C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6BF9518()
{
  result = qword_1EDF0F878;
  if (!qword_1EDF0F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F878);
  }

  return result;
}

unint64_t sub_1D6BF956C()
{
  result = qword_1EDF0F840;
  if (!qword_1EDF0F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F840);
  }

  return result;
}

unint64_t sub_1D6BF95C0()
{
  result = qword_1EDF0F848;
  if (!qword_1EDF0F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F848);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayeredMediaEffects.Parallax(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LayeredMediaEffects.Parallax(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D6BF96E8()
{
  result = qword_1EC893728;
  if (!qword_1EC893728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893728);
  }

  return result;
}

unint64_t sub_1D6BF9740()
{
  result = qword_1EDF0F868;
  if (!qword_1EDF0F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F868);
  }

  return result;
}

unint64_t sub_1D6BF9798()
{
  result = qword_1EDF0F870;
  if (!qword_1EDF0F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F870);
  }

  return result;
}

unint64_t sub_1D6BF97EC()
{
  result = qword_1EC893738;
  if (!qword_1EC893738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893738);
  }

  return result;
}

void sub_1D6BF9840(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D726435C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6BF98A0()
{
  result = qword_1EDF0F860;
  if (!qword_1EDF0F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F860);
  }

  return result;
}

unint64_t sub_1D6BF9918()
{
  result = qword_1EC893740;
  if (!qword_1EC893740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893740);
  }

  return result;
}

unint64_t sub_1D6BF9970()
{
  result = qword_1EC893748;
  if (!qword_1EC893748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893748);
  }

  return result;
}

unint64_t sub_1D6BF99C8()
{
  result = qword_1EDF0F850;
  if (!qword_1EDF0F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F850);
  }

  return result;
}

unint64_t sub_1D6BF9A20()
{
  result = qword_1EDF0F858;
  if (!qword_1EDF0F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F858);
  }

  return result;
}

unint64_t sub_1D6BF9A78()
{
  result = qword_1EC893750;
  if (!qword_1EC893750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893750);
  }

  return result;
}

unint64_t sub_1D6BF9AD0()
{
  result = qword_1EC893758;
  if (!qword_1EC893758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893758);
  }

  return result;
}

void FeedItemPrefetcher.prefetch(with:in:at:)(void **a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedBannerAdViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (*a1 >> 60 == 3)
  {
    v27[0] = a2;
    sub_1D5EF31B8();
    v15 = swift_projectBox();
    sub_1D6BF9EFC(v15, v13, type metadata accessor for FeedBannerAdViewLayout.Context);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D5C384A0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = sub_1D7260D7C();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D5B7E2C0();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1D7262EDC();
    sub_1D725C30C();

    v20 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    v21 = sub_1D7260D7C();
    (*(v20 + 16))(v21);

    v22 = sub_1D7258D4C();
    v23 = v27[0];
    v24 = [v27[0] layoutAttributesForItemAtIndexPath_];

    sub_1D726025C();
    sub_1D6BF9EFC(v13, v9, type metadata accessor for FeedBannerAd);
    v27[1] = v14;
    *&v28.origin.x = FeedItemLayoutAttributes.frame.getter().n128_u64[0];
    CGRectGetWidth(v28);
    [v23 bounds];
    Height = CGRectGetHeight(v29);
    if (v24)
    {
      [v24 frame];
    }

    v26 = sub_1D72609AC();

    sub_1D5C21E8C(v9, type metadata accessor for FeedBannerAd);
    sub_1D5C21E8C(v13, type metadata accessor for FeedBannerAdViewLayout.Context);
  }
}

uint64_t FeedItemPrefetcher.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t FeedItemPrefetcher.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6BF9EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FormatContentSubgroupFilterContext()
{
  result = qword_1EDF1DF08;
  if (!qword_1EDF1DF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6BFA004()
{
  type metadata accessor for FormatContent(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FormatServiceOptions();
    if (v1 <= 0x3F)
    {
      sub_1D6BFA0D0();
      if (v2 <= 0x3F)
      {
        sub_1D5B5AE94();
        if (v3 <= 0x3F)
        {
          sub_1D5B81B04();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D6BFA0D0()
{
  if (!qword_1EDF1B918)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B918);
    }
  }
}

void sub_1D6BFA15C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image);
  *(a2 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image) = *a1;
  v4 = v2;
}

uint64_t sub_1D6BFA19C(void *a1)
{
  v1 = [a1 filePath];
  if (v1)
  {
    v3 = v1;
    sub_1D726207C();

    sub_1D5B5A6B4(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D5B5A6B4(v5, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

void sub_1D6BFA2CC(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v3 = sub_1D726203C();
  v4 = [v2 initWithContentsOfFile_];

  *a1 = v4;
}

void sub_1D6BFA348(void *a1@<X1>, void *a2@<X8>)
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v4 = sub_1D725C42C();
  __swift_project_value_buffer(v4, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v5 = sub_1D725C3FC();
  v6 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = [a1 identifier];
    v10 = sub_1D726207C();
    v12 = v11;

    v13 = sub_1D5BC5100(v10, v12, &v14);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D5B42000, v5, v6, "Failed downloading asset handle for Puzzle ID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA6FD500](v8, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  *a2 = 0;
}

id SharingPuzzleImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SharingPuzzleImageActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image))
  {
    v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image);
    v8 = sub_1D62B7E2C();
    *&v7 = v6;
    sub_1D5B7C390(&v7, a1);
    v3 = v6;
  }

  else
  {
    v4 = sub_1D67B380C();
    v3 = 0;
    *(a1 + 24) = v4;
    *a1 = MEMORY[0x1E69E7CA0] + 8;
  }

  return v3;
}

void SharingPuzzleImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    goto LABEL_9;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 != sub_1D726207C() || v9 != v10)
  {
    v12 = sub_1D72646CC();

    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

LABEL_11:
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image))
  {
    v18 = *(v2 + OBJC_IVAR____TtC8NewsFeed36SharingPuzzleImageActivityItemSource_image);
    v20 = sub_1D62B7E2C();
    *&v19 = v18;
    sub_1D5B7C390(&v19, a2);
    v13 = v18;
  }

  else
  {
    sub_1D5B5A6B4(0, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v15 = v14;
    v16 = sub_1D67B3C60();
    v13 = 0;
    *(a2 + 24) = v16;
    *a2 = v15;
  }

  v17 = v13;
}

uint64_t sub_1D6BFA9DC(void *a1)
{
  v2 = [a1 thumbnailSmallImageAssetHandle];
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    v5 = v4;
    sub_1D725BDCC();
    v6 = sub_1D725B92C();
    sub_1D6851ABC();
    sub_1D725BA8C();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v7 = sub_1D725B92C();
    v8 = sub_1D725BB6C();

    return v8;
  }

  else
  {
    sub_1D6BFAB84(0, &qword_1EC893770, sub_1D6851ABC, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D6BFAB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t FormatContent.copy(identifier:tagID:issueID:articleID:webEmbedID:recipeID:sponsoredAdBanner:properties:themes:subgroups:selectors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18)
{
  v82 = a6;
  v83 = a8;
  v81 = a4;
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v87 = &v68 - v31;
  v32 = sub_1D725891C();
  v85 = *(v32 - 8);
  v86 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v84 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a16;
  v69 = a2;
  if (a2)
  {
    v72 = a2;
  }

  else
  {
    a1 = *v18;
    v72 = *(v18 + 1);
  }

  v36 = type metadata accessor for FormatContent(0);
  (*(v85 + 16))(v84, &v18[v36[5]], v86);
  v37 = v81;
  if (!v81)
  {
    v38 = &v18[v36[6]];
    a3 = *v38;
    v37 = *(v38 + 1);
  }

  v80 = v82;
  if (!v82)
  {
    v39 = &v18[v36[7]];
    a5 = *v39;
    v80 = *(v39 + 1);
  }

  v71 = v37;
  v73 = a1;
  v75 = a5;
  v79 = a10;
  v40 = v83;
  if (!v83)
  {
    a7 = *&v18[v36[8]];
  }

  v70 = v40;
  v77 = a11;
  v78 = a12;
  if (!a11)
  {
    v41 = &v18[v36[9]];
    v42 = *(v41 + 1);
    v79 = *v41;
    v77 = v42;
  }

  v74 = a3;
  v76 = a7;
  v88 = v35;
  v43 = a13;
  if (!a13)
  {
    v78 = *&v18[v36[10]];
  }

  v68 = v43;
  sub_1D5CF2564(a14, v28, sub_1D5B49800);
  v44 = sub_1D72608BC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v28, 1, v44) == 1)
  {
    sub_1D5CF2564(&v18[v36[11]], v87, sub_1D5B49800);
    v47 = v46(v28, 1, v44);

    if (v47 != 1)
    {
      sub_1D5CF29A4(v28, sub_1D5B49800);
    }
  }

  else
  {
    v48 = v87;
    (*(v45 + 32))(v87, v28, v44);
    (*(v45 + 56))(v48, 0, 1, v44);
  }

  v49 = *&v18[v36[12]];
  v82 = *&v18[v36[13]];
  v50 = *&v18[v36[14]];
  v51 = *&v18[v36[15]];
  if (v88)
  {
    v81 = v88;
  }

  else
  {
    v81 = *&v18[v36[16]];
  }

  v83 = a17;
  if (a17)
  {
    v69 = a17;
    v52 = a18;
    if (a15)
    {
      goto LABEL_23;
    }

LABEL_26:
    v53 = *&v18[v36[18]];

    if (v52)
    {
      goto LABEL_24;
    }

LABEL_27:
    v54 = *&v18[v36[19]];

    goto LABEL_28;
  }

  v69 = *&v18[v36[17]];

  v52 = a18;
  if (!a15)
  {
    goto LABEL_26;
  }

LABEL_23:
  v53 = a15;
  if (!v52)
  {
    goto LABEL_27;
  }

LABEL_24:
  v54 = v52;
LABEL_28:
  v55 = v72;
  *a9 = v73;
  *(a9 + 1) = v55;
  (*(v85 + 32))(&a9[v36[5]], v84, v86);
  v56 = &a9[v36[6]];
  v57 = v71;
  *v56 = v74;
  *(v56 + 1) = v57;
  v58 = &a9[v36[7]];
  v59 = v80;
  *v58 = v75;
  *(v58 + 1) = v59;
  v60 = &a9[v36[8]];
  v61 = v70;
  *v60 = v76;
  *(v60 + 1) = v61;
  v62 = &a9[v36[9]];
  v64 = v77;
  v63 = v78;
  *v62 = v79;
  *(v62 + 1) = v64;
  v65 = &a9[v36[10]];
  *v65 = v63;
  *(v65 + 1) = v68;
  sub_1D6C047F0(v87, &a9[v36[11]], sub_1D5B49800);
  *&a9[v36[12]] = v49;
  v66 = v81;
  *&a9[v36[13]] = v82;
  *&a9[v36[14]] = v50;
  *&a9[v36[15]] = v51;
  *&a9[v36[16]] = v66;
  *&a9[v36[17]] = v69;
  *&a9[v36[18]] = v53;
  *&a9[v36[19]] = v54;
}

uint64_t FormatContent.selectors.getter()
{
  type metadata accessor for FormatContent(0);
}

uint64_t FormatContent.properties.getter()
{
  type metadata accessor for FormatContent(0);
}

id FormatContent.resolved(themes:subgroups:subgroupNeighbors:tag:issue:headline:webEmbed:recipe:subscription:subscriptionPaidAccess:options:selectors:sponsoredAdBanner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, void *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v33 = *a3;
  v32 = *a11;
  v18 = *(v14 + 1);
  v30 = *v14;
  v19 = type metadata accessor for FormatContent(0);
  v20 = v19[5];
  v21 = type metadata accessor for FormatContent.Resolved();
  v22 = v21[5];
  v23 = sub_1D725891C();
  (*(*(v23 - 8) + 16))(&a9[v22], &v14[v20], v23);
  sub_1D6BFC9C0(a7, &a9[v21[16]]);
  v24 = *&v14[v19[13]];
  v25 = *&v14[v19[14]];
  v26 = *&v14[v19[15]];
  sub_1D5CF2564(a14, &a9[v21[21]], sub_1D5B49800);
  *a9 = v30;
  *(a9 + 1) = v18;
  *&a9[v21[6]] = v25;
  *&a9[v21[7]] = v26;
  *&a9[v21[8]] = a1;
  *&a9[v21[9]] = a2;
  *&a9[v21[11]] = a12;
  *&a9[v21[13]] = a4;
  *&a9[v21[14]] = a5;
  *&a9[v21[15]] = a6;
  *&a9[v21[17]] = a8;
  *&a9[v21[18]] = a10;
  a9[v21[19]] = v32;
  *&a9[v21[20]] = v24;
  *&a9[v21[12]] = a13;
  *&a9[v21[10]] = v33;
  v27 = a10;

  swift_unknownObjectRetain();
  v28 = a5;
  swift_unknownObjectRetain();

  return a8;
}

unint64_t FormatContent.requirements.getter()
{
  v2 = type metadata accessor for FormatContentSlotItemObject();
  v108 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FormatContentSlotItem();
  v114 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v6);
  v111 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FormatContentSubgroup();
  v103 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v8);
  v102 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FormatRecipeOverrides();
  MEMORY[0x1EEE9AC00](v112, v10);
  v113 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatContent(0);
  v17 = *(v16 + 24);
  v116 = v0;
  v18 = &v0[v17];
  v19 = *(v18 + 1);
  v20 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CD0];
  if (v19)
  {
    v22 = *v18;
    type metadata accessor for FormatTag();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v19;
    swift_beginAccess();
    v24 = v21;
    *(v23 + 32) = v21;
    swift_beginAccess();
    *(v23 + 40) = v20;

    v107 = sub_1D698C34C(0, 1, 1, v20);
    v1 = *(v107 + 2);
    v25 = *(v107 + 3);
    v26 = (v1 + 1);
    if (v1 >= v25 >> 1)
    {
      goto LABEL_123;
    }

    goto LABEL_3;
  }

  v24 = MEMORY[0x1E69E7CD0];
  v107 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v29 = &v116[*(v16 + 28)];
  v30 = *(v29 + 1);
  if (v30)
  {
    v31 = *v29;
    type metadata accessor for FormatIssue();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    swift_beginAccess();
    *(v32 + 64) = v24;
    swift_beginAccess();
    *(v32 + 72) = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v33 = *(v107 + 3);
    if (v1 >= v33 >> 1)
    {
      v107 = sub_1D698C34C((v33 > 1), v1 + 1, 1, v107);
    }

    v34 = v107;
    *(v107 + 2) = v1 + 1;
    v35 = &v34[48 * v1];
    *(v35 + 4) = v32;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    v35[72] = 2;
  }

  v36 = &v116[*(v16 + 32)];
  v37 = *(v36 + 1);
  if (v37)
  {
    v38 = *v36;
    v39 = qword_1EDF28AC8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v12, qword_1EDF28AD0);
    sub_1D5CF2564(v40, v15, type metadata accessor for FormatArticleOverrides);
    type metadata accessor for FormatArticle();
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v37;
    v42 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    sub_1D6C047F0(v15, v41 + v42, type metadata accessor for FormatArticleOverrides);
    v43 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
    swift_beginAccess();
    v44 = v24;
    *(v41 + v43) = v24;
    v45 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
    swift_beginAccess();
    *(v41 + v45) = v20;
    *(v41 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v46 = *(v107 + 3);
    if (v1 >= v46 >> 1)
    {
      v107 = sub_1D698C34C((v46 > 1), v1 + 1, 1, v107);
    }

    v47 = v107;
    *(v107 + 2) = v1 + 1;
    v48 = &v47[48 * v1];
    *(v48 + 4) = v41;
    *(v48 + 40) = 0u;
    *(v48 + 56) = 0u;
    v48[72] = 0;
  }

  else
  {
    v44 = v24;
  }

  v49 = &v116[*(v16 + 40)];
  v50 = *(v49 + 1);
  if (v50)
  {
    v51 = *v49;
    v52 = qword_1EDF0DF48;

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v112, qword_1EDF0DF50);
    v24 = v113;
    sub_1D5CF2564(v53, v113, type metadata accessor for FormatRecipeOverrides);
    type metadata accessor for FormatRecipe();
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v50;
    v55 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__overrides;
    swift_beginAccess();
    sub_1D6C047F0(v24, v54 + v55, type metadata accessor for FormatRecipeOverrides);
    v56 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__selectors;
    swift_beginAccess();
    *(v54 + v56) = v44;
    v57 = OBJC_IVAR____TtC8NewsFeed12FormatRecipe__properties;
    swift_beginAccess();
    *(v54 + v57) = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1D698C34C(0, *(v107 + 2) + 1, 1, v107);
    }

    v1 = *(v107 + 2);
    v58 = *(v107 + 3);
    if (v1 >= v58 >> 1)
    {
      v107 = sub_1D698C34C((v58 > 1), v1 + 1, 1, v107);
    }

    v59 = v107;
    *(v107 + 2) = v1 + 1;
    v60 = &v59[48 * v1];
    *(v60 + 4) = v54;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0u;
    v60[72] = 8;
  }

  v61 = *&v116[*(v16 + 68)];
  v118 = v20;
  v92 = *(v61 + 16);
  if (v92)
  {
    v23 = 0;
    v94 = *(v115 + 32);
    v62 = v61 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v26 = v111;
    v91 = v61;
    v90 = v62;
    while (1)
    {
      v25 = *(v61 + 16);
      if (v23 >= v25)
      {
        goto LABEL_121;
      }

      v63 = *(v103 + 72);
      v93 = v23;
      v64 = v62 + v63 * v23;
      v23 = v102;
      sub_1D5CF2564(v64, v102, type metadata accessor for FormatContentSubgroup);
      v65 = *(v23 + v94);
      v104 = *(v65 + 16);
      if (v104)
      {
        break;
      }

      v66 = MEMORY[0x1E69E7CC0];
LABEL_101:
      v23 = v93 + 1;
      v16 = v66;
      sub_1D5CF29A4(v102, type metadata accessor for FormatContentSubgroup);
      v24 = &v118;
      sub_1D6985628(v16);
      v61 = v91;
      v62 = v90;
      if (v23 == v92)
      {
        v20 = v118;
        goto LABEL_103;
      }
    }

    v20 = 0;
    v106 = v65;
    v105 = v65 + 32;
    v66 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v25 = *(v106 + 16);
    if (v20 >= v25)
    {
      goto LABEL_117;
    }

    v25 = v105 + 48 * v20;
    v23 = *(v25 + 32);
    v113 = *(v23 + 16);
    if (!v113)
    {
      v1 = MEMORY[0x1E69E7CC0];
      goto LABEL_88;
    }

    v99 = v20;
    v100 = v66;
    v67 = *(v25 + 8);
    v24 = *(v25 + 16);
    v16 = *(v25 + 24);
    v68 = *(v25 + 40);
    v20 = &v26[*(v101 + 20)];
    v112 = v23 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v98 = v67;

    v97 = v24;

    v96 = v16;

    swift_bridgeObjectRetain_n();
    v95 = v68;

    v69 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v109 = v23;
    v110 = v20;
    while (1)
    {
      v25 = *(v23 + 16);
      if (v69 >= v25)
      {
        goto LABEL_108;
      }

      v116 = v1;
      v71 = *(v114 + 72);
      v115 = v69;
      sub_1D5CF2564(v112 + v71 * v69, v26, type metadata accessor for FormatContentSlotItem);
      v12 = sub_1D6313180();
      v25 = *v20;
      if (*v20)
      {
        v25 = *(v20 + 8);
        v1 = *(v25 + 16);
        if (v1)
        {
          v20 = v25 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
          v16 = *(v108 + 72);
          v23 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            sub_1D5CF2564(v20, v5, type metadata accessor for FormatContentSlotItemObject);
            v26 = sub_1D6313180();
            sub_1D5CF29A4(v5, type metadata accessor for FormatContentSlotItemObject);
            v24 = *(v26 + 2);
            v72 = *(v23 + 16);
            v15 = v24 + v72;
            if (__OFADD__(v72, v24))
            {
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
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              v107 = sub_1D698C34C((v25 > 1), v26, 1, v107);
LABEL_3:
              v27 = v107;
              *(v107 + 2) = v26;
              v28 = &v27[48 * v1];
              *(v28 + 4) = v23;
              *(v28 + 40) = 0u;
              *(v28 + 56) = 0u;
              v28[72] = 3;
              goto LABEL_5;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v15 <= *(v23 + 24) >> 1)
            {
              if (*(v26 + 2))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v72 <= v15)
              {
                v74 = v24 + v72;
              }

              else
              {
                v74 = v72;
              }

              v23 = sub_1D698C34C(isUniquelyReferenced_nonNull_native, v74, 1, v23);
              if (*(v26 + 2))
              {
LABEL_55:
                v25 = *(v23 + 16);
                if (((*(v23 + 24) >> 1) - v25) < v24)
                {
                  goto LABEL_106;
                }

                swift_arrayInitWithCopy();

                if (v24)
                {
                  v75 = *(v23 + 16);
                  v76 = __OFADD__(v75, v24);
                  v25 = v24 + v75;
                  if (v76)
                  {
                    goto LABEL_107;
                  }

                  *(v23 + 16) = v25;
                }

                goto LABEL_45;
              }
            }

            if (v24)
            {
              goto LABEL_105;
            }

LABEL_45:
            v20 += v16;
            if (!--v1)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_60:
      v24 = *(v23 + 16);
      v16 = *(v12 + 16);
      v26 = v24 + v16;
      if (__OFADD__(v16, v24))
      {
        goto LABEL_109;
      }

      v77 = swift_isUniquelyReferenced_nonNull_native();
      if (!v77 || v26 > *(v12 + 24) >> 1)
      {
        if (v16 <= v26)
        {
          v78 = v24 + v16;
        }

        else
        {
          v78 = v16;
        }

        v12 = sub_1D698C34C(v77, v78, 1, v12);
      }

      v26 = v111;
      v1 = v116;
      v20 = v110;
      if (*(v23 + 16))
      {
        v25 = *(v12 + 16);
        if (((*(v12 + 24) >> 1) - v25) < v24)
        {
          goto LABEL_113;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v79 = *(v12 + 16);
          v76 = __OFADD__(v79, v24);
          v25 = v24 + v79;
          if (v76)
          {
            goto LABEL_115;
          }

          *(v12 + 16) = v25;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_110;
        }
      }

      sub_1D5CF29A4(v26, type metadata accessor for FormatContentSlotItem);
      v23 = *(v12 + 16);
      v24 = *(v1 + 16);
      v16 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        goto LABEL_111;
      }

      v80 = swift_isUniquelyReferenced_nonNull_native();
      if (v80 && v16 <= *(v1 + 24) >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v24 <= v16)
        {
          v81 = v24 + v23;
        }

        else
        {
          v81 = v24;
        }

        v1 = sub_1D698C34C(v80, v81, 1, v1);
        if (*(v12 + 16))
        {
LABEL_82:
          v25 = *(v1 + 16);
          if (((*(v1 + 24) >> 1) - v25) < v23)
          {
            goto LABEL_114;
          }

          swift_arrayInitWithCopy();

          v70 = v115;
          if (v23)
          {
            v82 = *(v1 + 16);
            v76 = __OFADD__(v82, v23);
            v25 = v82 + v23;
            if (v76)
            {
              goto LABEL_116;
            }

            *(v1 + 16) = v25;
          }

          goto LABEL_39;
        }
      }

      v25 = &v118;
      v70 = v115;
      if (v23)
      {
        goto LABEL_112;
      }

LABEL_39:
      v69 = v70 + 1;
      v23 = v109;
      if (v69 == v113)
      {

        swift_bridgeObjectRelease_n();
        v66 = v100;
        v25 = &v117;
        v20 = v99;
LABEL_88:
        v23 = *(v1 + 16);
        v24 = v66[2];
        v16 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_118;
        }

        v83 = v1;
        v1 = v66;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v1;
        if ((v84 & 1) == 0 || v16 > *(v1 + 24) >> 1)
        {
          if (v24 <= v16)
          {
            v86 = v24 + v23;
          }

          else
          {
            v86 = v24;
          }

          v85 = sub_1D698C34C(v84, v86, 1, v1);
        }

        v16 = v83;
        if (*(v83 + 2))
        {
          v25 = *(v85 + 2);
          if (((*(v85 + 3) >> 1) - v25) < v23)
          {
            goto LABEL_120;
          }

          v24 = v85;
          swift_arrayInitWithCopy();

          v66 = v24;
          if (v23)
          {
            v87 = v24[2];
            v76 = __OFADD__(v87, v23);
            v25 = v87 + v23;
            if (v76)
            {
              goto LABEL_122;
            }

            v24[2] = v25;
          }
        }

        else
        {
          v24 = v85;

          v66 = v24;
          if (v23)
          {
            goto LABEL_119;
          }
        }

        if (++v20 == v104)
        {
          goto LABEL_101;
        }

        goto LABEL_35;
      }
    }
  }

LABEL_103:
  v118 = v20;
  sub_1D6985628(v107);
  return v118;
}