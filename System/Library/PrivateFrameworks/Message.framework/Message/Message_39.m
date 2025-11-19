uint64_t sub_1B09B21DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v33 = a4;
  v32 = a3;
  v35 = a2;
  v34 = a1;
  v31 = a6;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v47 = a5;
  v39 = sub_1B0E44468();
  v36 = *(v39 - 8);
  v38 = v36;
  v7 = *(v36 + 64);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v40 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = v8;
  v46 = v10;
  v43 = v11;
  v44 = v12;
  v42 = v6;

  v37 = *(v6 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v13 = v37;
  v14 = v38;
  *v40 = v37;
  v15 = *MEMORY[0x1E69E8020];
  (*(v14 + 104))();
  v41 = sub_1B0E44488();
  (*(v38 + 8))(v40, v39);
  result = v41;
  if (v41)
  {
    v26 = v29;

    v23 = sub_1B09F04EC();
    v24 = v17;
    v22[3] = v17;

    v22[4] = v22;
    MEMORY[0x1EEE9AC00](v22);
    v18 = v32;
    v19 = v33;
    v25 = &v22[-6];
    v22[-4] = v20;
    v22[-3] = v18;
    v22[-2] = v19;
    swift_beginAccess();
    v21 = v26;
    sub_1B081BEC8(v34, v35, v23, v24, sub_1B0A1A28C, v25, v30, v31);
    v27 = v21;
    v28 = v21;
    if (v21)
    {
      v22[1] = v28;
    }

    else
    {
      v22[2] = 0;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B09B24E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v201 = a8;
  v247 = a1;
  v248 = a2;
  v246 = a3;
  v254 = a4;
  v255 = a5;
  v256 = a6;
  v257 = a7;
  v202 = sub_1B074E050;
  v203 = sub_1B0394C30;
  v204 = sub_1B0394C24;
  v205 = sub_1B074DFFC;
  v206 = sub_1B039BA88;
  v207 = sub_1B039BB94;
  v208 = sub_1B0394C24;
  v209 = sub_1B039BBA0;
  v210 = sub_1B039BC08;
  v211 = sub_1B06BA324;
  v212 = sub_1B074E0E4;
  v213 = sub_1B039BCF8;
  v214 = sub_1B092A7B4;
  v215 = sub_1B070B324;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0399178;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B039BA94;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0399178;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B03991EC;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B03993BC;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B039BCEC;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B070B4B4;
  v281 = 0;
  v279 = 0;
  v280 = 0;
  v277 = 0;
  v278 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v272 = 0;
  v237 = 0;
  v262 = 0;
  v238 = 0;
  v239 = _s6LoggerVMa_1();
  v240 = (*(*(v239 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](0);
  v241 = &v106 - v240;
  v242 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v243 = &v106 - v242;
  v244 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v245 = &v106 - v244;
  v249 = sub_1B0E439A8();
  v250 = *(v249 - 8);
  v251 = v249 - 8;
  v252 = (*(v250 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v249);
  v253 = &v106 - v252;
  v281 = v13;
  v279 = v14;
  v280 = v15 & 1;
  v277 = v16;
  v278 = v17;
  v276 = v18;
  v275 = v19;
  v274 = v8;
  v258 = *(v13 + 24);
  v259 = *(v13 + 32);
  sub_1B03B2000(v258, v259);
  v260 = v282;
  sub_1B0A129CC(v258, v259, v254, v255, v256, v257, v282);
  sub_1B0391D50(v258, v259);
  memcpy(__dst, v260, sizeof(__dst));
  if (__dst[1])
  {
    v195 = __dst[1];
    v196 = __dst[2];
    v197 = __dst[3];
    v198 = __dst[4];
    v199 = __dst[5];
    v285[0] = __dst[0];
    v285[1] = __dst[1];
    v286 = __dst[2];
    v287 = __dst[3];
    v288 = __dst[4];
    v272 = __dst[5];
    v200 = sub_1B0A15FBC(v285);
    if (v200)
    {
      v194 = v200;
      v189 = v200;
      v262 = v200;
      sub_1B0929244(v247, &v261);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v187 = v247[1];
      v188 = *(v247 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v190 = v283;
      sub_1B091E2B0(v247, v248, v246 & 1, v199, v189, v196, v197, v198, v283, v187, v188);
      v191 = v263;
      v193 = 108;
      memcpy(v263, v190, 0x6CuLL);
      v192 = v264;
      memcpy(v264, v263, 0x6CuLL);

      memcpy(__src, v192, v193);
    }

    else
    {
      (*(v250 + 16))(v253, v257, v249);
      sub_1B074B69C(v257, v245);
      sub_1B074B69C(v245, v243);
      sub_1B074E41C(v245, v241);
      v20 = (v243 + *(v239 + 20));
      v139 = *v20;
      v140 = *(v20 + 1);
      v141 = *(v20 + 1);
      v142 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v243);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v138 = 36;
      v158 = 7;
      v21 = swift_allocObject();
      v22 = v140;
      v23 = v141;
      v24 = v142;
      v144 = v21;
      *(v21 + 16) = v139;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v140;
      v27 = v141;
      v28 = v142;
      v137 = v25;
      *(v25 + 16) = v139;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v157 = 32;
      v29 = swift_allocObject();
      v30 = v137;
      v149 = v29;
      *(v29 + 16) = v202;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v140;
      v33 = v141;
      v34 = v142;
      v35 = v31;
      v36 = v241;
      v153 = v35;
      *(v35 + 16) = v139;
      *(v35 + 20) = v32;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      sub_1B074B764(v36);
      MEMORY[0x1E69E5928](v199);
      v151 = 24;
      v159 = swift_allocObject();
      *(v159 + 16) = v199;
      v185 = sub_1B0E43988();
      v186 = sub_1B0E458E8();
      v155 = 17;
      v161 = swift_allocObject();
      v146 = 16;
      *(v161 + 16) = 16;
      v162 = swift_allocObject();
      v148 = 4;
      *(v162 + 16) = 4;
      v37 = swift_allocObject();
      v143 = v37;
      *(v37 + 16) = v203;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v143;
      v163 = v38;
      *(v38 + 16) = v204;
      *(v38 + 24) = v39;
      v164 = swift_allocObject();
      *(v164 + 16) = 0;
      v165 = swift_allocObject();
      *(v165 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v144;
      v145 = v40;
      *(v40 + 16) = v205;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v145;
      v166 = v42;
      *(v42 + 16) = v206;
      *(v42 + 24) = v43;
      v167 = swift_allocObject();
      *(v167 + 16) = v146;
      v168 = swift_allocObject();
      *(v168 + 16) = v148;
      v44 = swift_allocObject();
      v147 = v44;
      *(v44 + 16) = v207;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v147;
      v169 = v45;
      *(v45 + 16) = v208;
      *(v45 + 24) = v46;
      v170 = swift_allocObject();
      *(v170 + 16) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v148;
      v47 = swift_allocObject();
      v48 = v149;
      v150 = v47;
      *(v47 + 16) = v209;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v150;
      v172 = v49;
      *(v49 + 16) = v210;
      *(v49 + 24) = v50;
      v173 = swift_allocObject();
      *(v173 + 16) = 112;
      v174 = swift_allocObject();
      v156 = 8;
      *(v174 + 16) = 8;
      v152 = swift_allocObject();
      *(v152 + 16) = 0x786F626C69616DLL;
      v51 = swift_allocObject();
      v52 = v152;
      v175 = v51;
      *(v51 + 16) = v211;
      *(v51 + 24) = v52;
      v176 = swift_allocObject();
      *(v176 + 16) = 37;
      v177 = swift_allocObject();
      *(v177 + 16) = v156;
      v53 = swift_allocObject();
      v54 = v153;
      v154 = v53;
      *(v53 + 16) = v212;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v154;
      v178 = v55;
      *(v55 + 16) = v213;
      *(v55 + 24) = v56;
      v179 = swift_allocObject();
      *(v179 + 16) = 64;
      v180 = swift_allocObject();
      *(v180 + 16) = v156;
      v57 = swift_allocObject();
      v58 = v159;
      v160 = v57;
      *(v57 + 16) = v214;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v160;
      v182 = v59;
      *(v59 + 16) = v215;
      *(v59 + 24) = v60;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v181 = sub_1B0E46A48();
      v183 = v61;

      v62 = v161;
      v63 = v183;
      *v183 = v216;
      v63[1] = v62;

      v64 = v162;
      v65 = v183;
      v183[2] = v217;
      v65[3] = v64;

      v66 = v163;
      v67 = v183;
      v183[4] = v218;
      v67[5] = v66;

      v68 = v164;
      v69 = v183;
      v183[6] = v219;
      v69[7] = v68;

      v70 = v165;
      v71 = v183;
      v183[8] = v220;
      v71[9] = v70;

      v72 = v166;
      v73 = v183;
      v183[10] = v221;
      v73[11] = v72;

      v74 = v167;
      v75 = v183;
      v183[12] = v222;
      v75[13] = v74;

      v76 = v168;
      v77 = v183;
      v183[14] = v223;
      v77[15] = v76;

      v78 = v169;
      v79 = v183;
      v183[16] = v224;
      v79[17] = v78;

      v80 = v170;
      v81 = v183;
      v183[18] = v225;
      v81[19] = v80;

      v82 = v171;
      v83 = v183;
      v183[20] = v226;
      v83[21] = v82;

      v84 = v172;
      v85 = v183;
      v183[22] = v227;
      v85[23] = v84;

      v86 = v173;
      v87 = v183;
      v183[24] = v228;
      v87[25] = v86;

      v88 = v174;
      v89 = v183;
      v183[26] = v229;
      v89[27] = v88;

      v90 = v175;
      v91 = v183;
      v183[28] = v230;
      v91[29] = v90;

      v92 = v176;
      v93 = v183;
      v183[30] = v231;
      v93[31] = v92;

      v94 = v177;
      v95 = v183;
      v183[32] = v232;
      v95[33] = v94;

      v96 = v178;
      v97 = v183;
      v183[34] = v233;
      v97[35] = v96;

      v98 = v179;
      v99 = v183;
      v183[36] = v234;
      v99[37] = v98;

      v100 = v180;
      v101 = v183;
      v183[38] = v235;
      v101[39] = v100;

      v102 = v182;
      v103 = v183;
      v183[40] = v236;
      v103[41] = v102;
      sub_1B0394964();

      if (os_log_type_enabled(v185, v186))
      {
        v104 = v237;
        v130 = sub_1B0E45D78();
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v129 = 1;
        v131 = sub_1B03949A8(1);
        v132 = sub_1B03949A8(v129);
        v133 = &v269;
        v269 = v130;
        v134 = &v268;
        v268 = v131;
        v135 = &v267;
        v267 = v132;
        sub_1B0394A48(3, &v269);
        sub_1B0394A48(7, v133);
        v265 = v216;
        v266 = v161;
        sub_1B03949FC(&v265, v133, v134, v135);
        v136 = v104;
        if (v104)
        {

          __break(1u);
        }

        else
        {
          v265 = v217;
          v266 = v162;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v127 = 0;
          v265 = v218;
          v266 = v163;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v126 = 0;
          v265 = v219;
          v266 = v164;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v125 = 0;
          v265 = v220;
          v266 = v165;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v124 = 0;
          v265 = v221;
          v266 = v166;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v123 = 0;
          v265 = v222;
          v266 = v167;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v122 = 0;
          v265 = v223;
          v266 = v168;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v121 = 0;
          v265 = v224;
          v266 = v169;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v120 = 0;
          v265 = v225;
          v266 = v170;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v119 = 0;
          v265 = v226;
          v266 = v171;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v118 = 0;
          v265 = v227;
          v266 = v172;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v117 = 0;
          v265 = v228;
          v266 = v173;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v116 = 0;
          v265 = v229;
          v266 = v174;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v115 = 0;
          v265 = v230;
          v266 = v175;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v114 = 0;
          v265 = v231;
          v266 = v176;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v113 = 0;
          v265 = v232;
          v266 = v177;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v112 = 0;
          v265 = v233;
          v266 = v178;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v111 = 0;
          v265 = v234;
          v266 = v179;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v110 = 0;
          v265 = v235;
          v266 = v180;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v109 = 0;
          v265 = v236;
          v266 = v182;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          _os_log_impl(&dword_1B0389000, v185, v186, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to find action item for move/copy '%@'", v130, 0x35u);
          v108 = 1;
          sub_1B03998A8(v131);
          sub_1B03998A8(v132);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v185);
      (*(v250 + 8))(v253, v249);
      v107 = v270;
      memset(v270, 0, sizeof(v270));
      v271 = 0;
      MEMORY[0x1E69E5920](v199);

      memcpy(__src, v107, 0x6CuLL);
    }
  }

  else
  {
    memset(v273, 0, sizeof(v273));
    memcpy(__src, v273, 0x6CuLL);
  }

  return memcpy(v201, __src, 0x6CuLL);
}

uint64_t sub_1B09B3DA4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5)
{
  v47 = a1;
  v46 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v37 = 0;
  v31 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v32 = &v20 - v31;
  v6 = _s6LoggerVMa_1();
  v33 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v20 - v33;
  v35 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v36 = (&v20 - v35);
  v38 = type metadata accessor for InProgressMessageDownload.Completed();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = (&v20 - v41);
  v62 = &v20 - v41;
  v52 = sub_1B0E44468();
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v48 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v47);
  v53 = (&v20 - v48);
  v60 = v7;
  v61 = v8;
  v59 = v9;
  v58 = v10;
  v57 = v11 & 1;
  v56 = v5;

  v49 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v49);
  v12 = v50;
  *v53 = v49;
  v13 = *MEMORY[0x1E69E8020];
  (*(v12 + 104))();
  v54 = sub_1B0E44488();
  (*(v50 + 8))(v53, v52);
  result = v54;
  if (v54)
  {
    v15 = v30;

    v22 = &v55;
    swift_beginAccess();
    v28 = *(v15 + 64);

    swift_endAccess();
    v23 = sub_1B092AE20(v47, v46, v43);
    v27 = v16;

    v24 = sub_1B097507C(v47, v46, v43);
    v26 = v17;

    v25 = *(v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    sub_1B0394784(v30 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B91DC(v32, v47, v46, v34);
    v29 = 1;
    sub_1B08B6774(v47, v46, v43, v44, v45 & 1, v23, v27, v24, v36, v26, v25, v34);

    sub_1B074B764(v34);

    if ((*(v39 + 48))(v36, v29, v38) == 1)
    {
      return sub_1B08BE984(v36);
    }

    else
    {
      v18 = v30;
      sub_1B07B02D8(v36, v42);
      v20 = sub_1B09E9B50();
      v21 = v19;
      sub_1B0394784(v18 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07B91DC(v32, v47, v46, v34);
      sub_1B0935A80(v47, v46, v42, 0, v20, v21, v34);
      sub_1B074B764(v34);

      return sub_1B08BED00(v42);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B4404()
{
  v9 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  v10 = *v9;
  result = swift_endAccess();
  if (v10)
  {
    v7 = swift_allocObject();
    v2 = v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
    swift_beginAccess();
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    *(v7 + 16) = sub_1B098C8E0(v3, v4, v5, v6);

    sub_1B039C1F8(v7 | 0xA000000000000000);
  }

  return result;
}

uint64_t sub_1B09B4574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v30 = a3;
  v32 = a2;
  v31 = a1;
  v29 = a5;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v45 = a4;
  v37 = sub_1B0E44468();
  v33 = *(v37 - 8);
  v36 = v33;
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v31);
  v38 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *v7;
  v44 = v34;
  v42 = v9;
  v43 = v10;
  v41 = v5;

  v35 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v11 = v35;
  v12 = v36;
  *v38 = v35;
  v13 = *MEMORY[0x1E69E8020];
  (*(v12 + 104))();
  v39 = sub_1B0E44488();
  (*(v36 + 8))(v38, v37);
  result = v39;
  if (v39)
  {
    v24 = v27;

    v40 = v34;
    v21 = sub_1B09F003C();
    v22 = v15;
    v20[3] = v15;

    v20[4] = v20;
    MEMORY[0x1EEE9AC00](v20);
    v16 = v32;
    v17 = v30;
    v23 = &v20[-6];
    v20[-4] = v18;
    v20[-3] = v16;
    v20[-2] = v17;
    swift_beginAccess();
    v19 = v24;
    sub_1B081B104(&v40, v21, v22, sub_1B0A1A28C, v23, v28, v29);
    v25 = v19;
    v26 = v19;
    if (v19)
    {
      v20[1] = v26;
    }

    else
    {
      v20[2] = 0;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B4874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = 0;
  v20 = 0;
  v28 = a5;
  v26 = a1;
  v27 = a2;
  v24 = a3;
  v25 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5A58(a1, a2, &v21);
  if (v22)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
    v10 = v7;
    v11 = v8;
    sub_1B0A1A2C8();
    v12 = swift_allocError();
    *v9 = v10;
    v9[1] = v11;
    swift_willThrow();
    return v12;
  }

  else
  {
    v20 = v21;
    v19 = v21;
    return sub_1B09B4574(&v19, a3, a4, a5, a6);
  }
}

uint64_t sub_1B09B4A10()
{
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_endAccess();
  return v4;
}

uint64_t sub_1B09B4A74(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B4AD8()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B09B4B28(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_1B09B4B88()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t sub_1B09B4BC0()
{
  swift_beginAccess();
  v2 = *(v0 + 64);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B09B4C10(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;

  swift_endAccess();
}

uint64_t sub_1B09B4C70()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B09B4CC0(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B4D0C()
{
  v2 = *(v0 + 88);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4D40()
{
  v2 = *(v0 + 96);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4D74()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1B09B4DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  swift_beginAccess();
  sub_1B03F4D78(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B09B4DFC(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B03F4D78(v2, &v4 - v4);
  v6 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v7 = &v9;
  swift_beginAccess();
  sub_1B0A1A344(v5, v6);
  swift_endAccess();
  return sub_1B03F4F08(v8);
}

uint64_t sub_1B09B4EC0()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4EFC()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey);

  return v2;
}

uint64_t sub_1B09B4F30()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4F6C()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);
  v3 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder + 8);

  return v2;
}

uint64_t sub_1B09B4FB8()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5018(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5088()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B50E8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5158@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater);
  swift_beginAccess();
  sub_1B0696CF8(v3, a1);
  return swift_endAccess();
}

void *sub_1B09B51B4(void *a1)
{
  v8 = a1;
  v4 = (*(*(_s15ActivityUpdaterVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1B0696CF8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater);
  v7 = &v9;
  swift_beginAccess();
  sub_1B0A1A46C(v5, v6);
  swift_endAccess();
  return sub_1B0696E40(v8);
}

uint64_t sub_1B09B5278@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1B09B52F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B5370()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B53D0(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5440()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B54A0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5510()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  return v2;
}

uint64_t sub_1B09B556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v19 = v3;
  v11 = *(v3 + 112);
  MEMORY[0x1E69E5928](v11);
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
  sub_1B039A570(sub_1B09B5800, 0, v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v15, v18);
  if (v18[1])
  {
    v8 = sub_1B0E44AC8();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [v11 setServerNamespace_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v11);

  sub_1B03F1A20(sub_1B0A1A598, v10, v16, MEMORY[0x1E69E73E0], &type metadata for Namespace, v15, v17);

  v5 = v17[0];
  v6 = v17[1];
  v7 = v17[2];
  swift_beginAccess();
  sub_1B07C0900(v5, v6, v7);
  swift_endAccess();
  return sub_1B07BA794(a1);
}

uint64_t sub_1B09B5800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = 0;
  v12 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v21 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v19 = ByteBuffer.init<A>(bytes:)(&v20, v13);
  LODWORD(v18) = v2;
  WORD2(v18) = v3;
  BYTE6(v18) = v4;
  v16 = String.init(buffer:)(v19, v5, v18);
  v17 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E44C88();
  if (sub_1B0E44E68())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44CF8();
    sub_1B0A1F570();
    sub_1B0E448B8();
    v9 = sub_1B0E44EC8();
    v10 = v7;

    *a2 = v9;
    a2[1] = v10;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *a2 = v16;
    a2[1] = v17;
  }
}

uint64_t sub_1B09B5A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = 0;
  v25 = 0;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v26 = a1;
  v25 = a2;
  v19 = *(a2 + 112);
  MEMORY[0x1E69E5928](v19);
  v20 = [v19 serverPathPrefix];
  MEMORY[0x1E69E5920](v19);
  if (v20)
  {
    v11 = sub_1B0E44AD8();
    v12 = v3;
    MEMORY[0x1E69E5920](v20);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v22[0] = v13;
  v22[1] = v14;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  result = sub_1B03F1A20(sub_1B09B5C28, 0, v9, MEMORY[0x1E69E73E0], v4, v10, &v23);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B1198(v22);
    v21 = v23;
    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = sub_1B0E46A48();
    }

    v8 = v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = Namespace.init(prefix:separator:)(v8, v17, v18);
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_1B09B5C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B07C10E4(v3, v4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B09B5C9C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5CFC(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5D6C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5DC8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B5E24()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5E84(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5EF4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5F54(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5FC4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction);
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);
  swift_endAccess();
  return v4;
}

uint64_t sub_1B09B6030(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B60A0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6134(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  swift_beginAccess();
  v5 = *(v8 + 8);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  swift_endAccess();
}

uint64_t sub_1B09B620C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B628C(int a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches;
  swift_beginAccess();
  v4 = *(v7 + 8);
  v8 = *(v7 + 16);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6338()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B6374()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B63B0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6410(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B6480()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1B09B6580()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);
  swift_endAccess();
  return v4;
}

uint64_t sub_1B09B65EC(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

BOOL sub_1B09B665C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return static MonotonicTime.__derived_struct_equals(_:_:)(a1, a3);
    }

    return 0;
  }

  return (a4 & 1) != 0;
}

uint64_t sub_1B09B674C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1B0E46C48();
    sub_1B0A1E7C0();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B09B6898()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1B09B682C();
}

uint64_t sub_1B09B6918()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 2);
  v5 = v2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6998(uint64_t a1, int a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = (v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
  swift_beginAccess();
  v4 = *v7;
  v8 = v7[2];
  *v7 = a1;
  *(v7 + 2) = a2;
  v7[2] = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6A40()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 2) | (*(v2 + 6) << 32);
  swift_unknownObjectRetain();
  swift_endAccess();
  return v4;
}

uint64_t sub_1B09B6AC0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v6 = (v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
  swift_beginAccess();
  v3 = *v6;
  *v6 = a1;
  *(v6 + 2) = a2;
  *(v6 + 6) = WORD2(a2);
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B09B6B4C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = (v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
  swift_beginAccess();
  v4 = *v7;
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6C4C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6CAC(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B6D1C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B09B6D7C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B6DD8()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard);
  swift_beginAccess();
  v5 = *v9;
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  swift_endAccess();
}

uint64_t sub_1B09B6EF0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState);
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);
  swift_endAccess();
  return v4;
}

uint64_t sub_1B09B6F5C(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B6FCC()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

  return v2;
}

uint64_t sub_1B09B7000(unsigned int a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return sub_1B09B7074(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B09B7074(unsigned int a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v479 = a1;
  v445 = a2;
  v483 = a3;
  v442 = a4;
  v443 = a5;
  v444 = a6;
  v369 = sub_1B0A1A7A0;
  v370 = sub_1B0A1A7AC;
  v371 = sub_1B03FB77C;
  v372 = sub_1B0A1A880;
  v373 = sub_1B0A1A888;
  v374 = sub_1B0A1A890;
  v375 = sub_1B0A1A898;
  v376 = sub_1B0A1A8A0;
  v377 = sub_1B039BBE8;
  v378 = sub_1B0394C30;
  v379 = sub_1B0394C24;
  v380 = sub_1B039BA2C;
  v381 = sub_1B039BA88;
  v382 = sub_1B039BB94;
  v383 = sub_1B0394C24;
  v384 = sub_1B039BBA0;
  v385 = sub_1B039BC08;
  v386 = sub_1B0A1A90C;
  v387 = sub_1B039BCF8;
  v388 = sub_1B0398F5C;
  v389 = sub_1B0398F5C;
  v390 = sub_1B0399178;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0398F5C;
  v393 = sub_1B039BA94;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0398F5C;
  v396 = sub_1B0399178;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B03991EC;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B039BCEC;
  v403 = "Fatal error";
  v404 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v405 = "Message/PersistenceAdaptor.swift";
  v555 = 0;
  v554 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v548 = 0;
  v549 = 0;
  v547 = 0;
  v544 = 0;
  v545 = 0;
  v543 = 0;
  v542 = 0;
  v535 = 0;
  v534 = 0;
  v406 = 0;
  v471 = 0;
  v407 = sub_1B0E439A8();
  v408 = *(v407 - 8);
  v409 = v407 - 8;
  v410 = (*(v408 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v411 = v205 - v410;
  v412 = sub_1B0E44208();
  v413 = *(v412 - 8);
  v414 = v412 - 8;
  v415 = (*(v413 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v416 = (v205 - v415);
  v417 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v418 = (v205 - v417);
  v419 = sub_1B0E44238();
  v420 = *(v419 - 8);
  v421 = v419 - 8;
  v422 = (*(v420 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v423 = v205 - v422;
  v424 = sub_1B0E45C58();
  v425 = (*(*(v424 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v426 = v205 - v425;
  v427 = (*(*(sub_1B0E43108() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v428 = v205 - v427;
  v429 = (*(*(_s15ActivityUpdaterVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v430 = v205 - v429;
  v431 = _s6LoggerVMa();
  v432 = (*(*(v431 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v433 = v205 - v432;
  v434 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v480 = v205 - v434;
  v555 = v205 - v434;
  v435 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v478 = v205 - v435;
  v436 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v477 = v205 - v436;
  v554 = v205 - v436;
  v437 = sub_1B0E459C8();
  v438 = *(v437 - 8);
  v439 = v437 - 8;
  v440 = (*(v438 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v459 = v205 - v440;
  v441 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v471);
  v458 = v205 - v441;
  v446 = sub_1B0E44288();
  v447 = *(v446 - 8);
  v448 = v446 - 8;
  v449 = (*(v447 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v479);
  v457 = v205 - v449;
  v553 = v13;
  v552 = v14;
  v551 = v15;
  v550 = v16;
  v548 = v17;
  v549 = v18;
  v547 = v6;
  v19 = sub_1B09B49F4();
  *(v6 + 16) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v19);
  *(v6 + 24) = v20;
  *(v6 + 32) = v21;
  v546 = ActionID.init()();
  *(v6 + 40) = sub_1B06C70B0(&v546, &type metadata for ActionID);
  type metadata accessor for MessagesBeingDownloaded();
  v22 = sub_1B08AD424();
  v23 = v476;
  v476[8] = v22;
  *(v23 + 72) = 0;
  v454 = sub_1B06CCC58();
  v475 = 1;
  v450 = sub_1B0E44838();
  v451 = v24;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v459);
  v476[10] = sub_1B0E45A08();
  v452 = sub_1B0E44838();
  v453 = v25;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v459);
  v476[11] = sub_1B0E45A08();
  v455 = sub_1B0E44838();
  v456 = v26;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v459);
  v476[12] = sub_1B0E45A08();
  v460 = type metadata accessor for Cache();
  Cache.__allocating_init()();
  v476[13] = v27;
  v461 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder;
  v28 = sub_1B092AA44();
  v29 = (v476 + v461);
  *v29 = v28;
  v29[1] = v30;
  v462 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes;
  *(v476 + v462) = sub_1B0E46A48();
  v463 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove;
  sub_1B0451F2C();
  v31 = sub_1B0E44588();
  v32 = v475;
  v33 = v476;
  *(v476 + v463) = v31;
  v34 = v33 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID;
  *v34 = 0;
  v34[8] = v32 & 1;
  v464 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress;
  *(v476 + v464) = sub_1B07B95F0();
  v465 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache;
  Cache.__allocating_init()();
  v35 = v476;
  v36 = v471;
  v37 = v475;
  *(v476 + v465) = v38;
  *(v35 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions) = v36;
  *(v35 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount) = v36;
  *(v35 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs) = v36;
  *(v35 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions) = v36;
  v39 = v35 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction;
  *v39 = 0;
  v39[8] = v37 & 1;
  v466 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v40 = sub_1B0971514();
  v41 = v35 + v466;
  *v41 = v40;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  v467 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches;
  v45 = sub_1B09ABD5C();
  v46 = v35 + v467;
  *v46 = v45;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  v468 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken;
  sub_1B0A1A648();
  v49 = sub_1B08C0C38();
  v50 = v477;
  v51 = v471;
  v52 = v475;
  v53 = v476;
  *(v476 + v468) = v49;
  *(v53 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer) = v51;
  v54 = (v53 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  *v54 = 512;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = 0;
  v55 = v53 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  *v55 = 0;
  v55[8] = v52 & 1;
  v469 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
  v56 = sub_1B0A22A20();
  v57 = v476;
  v58 = v476 + v469;
  *v58 = v56;
  *(v58 + 2) = v59;
  *(v58 + 2) = v60;
  v61 = v57 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
  *v61 = 0;
  *(v61 + 2) = 0;
  *(v61 + 6) = 0;
  v470 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache;
  v62 = sub_1B081C9B8();
  v63 = (v476 + v470);
  *v63 = v62;
  v63[1] = v64;
  v63[2] = v65;
  v473 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture;
  v472 = type metadata accessor for StateCapture();
  v66 = sub_1B0E46A48();
  v67 = v476;
  *(v476 + v473) = v66;
  *(v67 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes) = 0;
  v474 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard;
  v68 = sub_1B09B03AC();
  v69 = sub_1B0713C30(v68);
  v70 = v475;
  v71 = v476;
  v72 = v69;
  v73 = v483;
  v74 = (v476 + v474);
  *v74 = v72;
  v74[1] = v75;
  v74[2] = v76;
  v74[3] = v77;
  v78 = v71 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState;
  *v78 = 0;
  v78[8] = v70 & 1;
  MEMORY[0x1E69E5928](v73);
  v79 = v483;
  v476[14] = v483;
  MEMORY[0x1E69E5928](v79);
  sub_1B07BF968(v483, v50);
  v80 = sub_1B03F4EB8();
  v81 = v476;
  v481 = v80;
  v482 = v82;
  v544 = v80;
  v545 = v82;
  sub_1B03F4D78(v477, v478);
  sub_1B04158DC(v478, v81 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B8CDC(v479, v481, v482, v480);
  v484 = [v483 library];
  if (v484)
  {
    v368 = v484;
    v366 = v484;
    v543 = v484;
    v367 = [v484 persistence];
    if (v367)
    {
      v365 = v367;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v344 = v365;
    v345 = [v365 activityPersistence];
    v542 = v345;
    MEMORY[0x1E69E5920](v344);
    sub_1B0E430F8();
    MEMORY[0x1E69E5928](v345);
    sub_1B0696744(v428, v345, v430);
    sub_1B0A1A6AC(v430, (v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater));
    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes) = sub_1B08DFC10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3488, &unk_1B0EA3B10);
    v83 = sub_1B0E441E8();
    v84 = v445;
    v346 = &unk_1EB737000;
    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey) = v83;
    MEMORY[0x1E69E5928](v84);
    v85 = v346;
    v86 = v476;
    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop) = v84;
    v347 = *(v86 + v85[330]);

    v540 = 0;
    v350 = 1;
    v541 = 0;
    sub_1B0E459B8();

    v359 = 0;
    v356 = sub_1B06FF124();
    v348 = 35;
    v87 = sub_1B0E46A28();
    v352 = &v538;
    v538 = v87;
    v539 = v88;
    v89 = sub_1B0E44838();
    v349 = v90;
    MEMORY[0x1B2728B30](v89);

    v536 = v481;
    v537 = v482;
    sub_1B0E46A08();
    v91 = sub_1B0E44838();
    v351 = v92;
    MEMORY[0x1B2728B30](v91);

    v354 = v538;
    v353 = v539;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v352);
    v358 = sub_1B0E44C88();
    v357 = v93;
    sub_1B0E44278();
    v355 = sub_1B0E46A48();
    sub_1B06FF188();
    sub_1B0E46028();
    (*(v438 + 104))(v459, *MEMORY[0x1E69E8098], v437);
    MEMORY[0x1E69E5928](v445);
    v94 = sub_1B0E45C68();
    v361 = &unk_1EB737000;
    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue) = v94;

    v95 = v480;
    v96 = v444;
    v97 = v433;
    v98 = v476;
    v476[6] = v443;
    v98[7] = v96;
    sub_1B0394784(v95, v97);
    sub_1B03F4FD0(v433, v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger);
    _s17CredentialsHelperCMa();
    MEMORY[0x1E69E5928](v483);
    sub_1B0394784(v480, v433);
    MEMORY[0x1E69E5928](v445);
    v360 = sub_1B06E4044(v483, v433, v445);
    v535 = v360;

    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper) = v360;
    v362 = _s19ClientStateObserverCMa();
    v363 = *(v476 + v361[308]);
    MEMORY[0x1E69E5928](v363);
    v364 = [v366 persistence];
    if (v364)
    {
      v343 = v364;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v213 = v343;
    v214 = [v343 mailboxPersistence];
    MEMORY[0x1E69E5920](v213);
    v215 = sub_1B06D668C(v363, v214);
    v534 = v215;
    MEMORY[0x1E69E5928](v215);
    v99 = v476;
    *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver) = v215;
    v294 = &unk_1EB737000;
    v217 = *(v99 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
    MEMORY[0x1E69E5928](v217);
    MEMORY[0x1E69E5928](v215);

    v320 = 32;
    v321 = 7;
    v100 = swift_allocObject();
    v101 = v369;
    v102 = v476;
    *(v100 + 16) = v215;
    *(v100 + 24) = v102;
    v532 = v101;
    v533 = v100;
    aBlock = MEMORY[0x1E69E9820];
    v301 = 1107296256;
    v528 = 1107296256;
    v529 = 0;
    v530 = sub_1B038C908;
    v531 = &block_descriptor_17;
    v216 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    v275 = 0;
    MEMORY[0x1B2727B00]();
    v219 = *(v420 + 8);
    v218 = v420 + 8;
    v219(v423, v419);
    v221 = *(v447 + 8);
    v220 = v447 + 8;
    v221(v457, v446);
    _Block_release(v216);

    MEMORY[0x1E69E5920](v217);
    v223 = *(v476 + v294[308]);
    MEMORY[0x1E69E5928](v223);

    v103 = swift_allocObject();
    v104 = v370;
    v105 = v301;
    v106 = v476;
    *(v103 + 16) = v360;
    *(v103 + 24) = v106;
    v525 = v104;
    v526 = v103;
    v520 = MEMORY[0x1E69E9820];
    v521 = v105;
    v522 = 0;
    v523 = sub_1B038C908;
    v524 = &block_descriptor_215;
    v222 = _Block_copy(&v520);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](v275, v457, v423, v222);
    v219(v423, v419);
    v221(v457, v446);
    _Block_release(v222);

    MEMORY[0x1E69E5920](v223);
    type metadata accessor for RestartableTimer();
    MEMORY[0x1E69E5928](v445);
    v107 = v413;
    *v418 = 5;
    v224 = MEMORY[0x1E69E7F48];
    v108 = *MEMORY[0x1E69E7F48];
    v226 = *(v107 + 104);
    v225 = v107 + 104;
    v226();
    v109 = v224;
    v110 = v226;
    v268 = 1;
    *v416 = 1;
    v111 = *v109;
    v110();
    v298 = &unk_1F26F7950;
    v307 = 24;
    v229 = swift_allocObject();
    v227 = v229 + 16;

    v228 = v476;
    swift_weakInit();

    v518 = v371;
    v519 = v229;
    v513 = MEMORY[0x1E69E9820];
    v514 = v301;
    v515 = 0;
    v516 = sub_1B038C908;
    v517 = &block_descriptor_221;
    v112 = _Block_copy(&v513);
    v231 = RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(v445, v418, v416, v112);

    v230 = (v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
    v232 = &v512;
    v289 = 33;
    v290 = 0;
    swift_beginAccess();
    v113 = *v230;
    *v230 = v231;

    swift_endAccess();
    v288 = sub_1B0E46A48();
    v287 = v114;
    v233 = 42;
    v115 = sub_1B0E46A28();
    v236 = &v510;
    v510 = v115;
    v511 = v116;
    v276 = 1;
    v117 = sub_1B0E44838();
    v234 = v118;
    MEMORY[0x1B2728B30](v117);

    v508 = v481;
    v509 = v482;
    v271 = MEMORY[0x1E69E6158];
    v272 = MEMORY[0x1E69E61C8];
    v273 = MEMORY[0x1E69E61C0];
    sub_1B0E46A08();
    v274 = "";
    v119 = sub_1B0E44838();
    v235 = v120;
    MEMORY[0x1B2728B30](v119);

    v238 = v510;
    v237 = v511;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v236);
    v241 = sub_1B0E44C88();
    v242 = v121;
    MEMORY[0x1E69E5928](v445);
    v243 = swift_allocObject();
    v239 = v243 + 16;

    v240 = v476;
    swift_weakInit();

    v244 = StateCapture.__allocating_init(title:queue:capture:)(v241, v242, v445, v372, v243);

    *v287 = v244;
    v245 = 43;
    v122 = sub_1B0E46A28();
    v248 = &v506;
    v506 = v122;
    v507 = v123;
    v124 = sub_1B0E44838();
    v246 = v125;
    MEMORY[0x1B2728B30](v124);

    v504 = v481;
    v505 = v482;
    sub_1B0E46A08();
    v126 = sub_1B0E44838();
    v247 = v127;
    MEMORY[0x1B2728B30](v126);

    v250 = v506;
    v249 = v507;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v248);
    v253 = sub_1B0E44C88();
    v254 = v128;
    MEMORY[0x1E69E5928](v445);
    v255 = swift_allocObject();
    v251 = v255 + 16;

    v252 = v476;
    swift_weakInit();

    v256 = StateCapture.__allocating_init(title:queue:capture:)(v253, v254, v445, v373, v255);

    v287[1] = v256;
    v129 = sub_1B0E46A28();
    v259 = &v502;
    v502 = v129;
    v503 = v130;
    v131 = sub_1B0E44838();
    v257 = v132;
    MEMORY[0x1B2728B30](v131);

    v500 = v481;
    v501 = v482;
    sub_1B0E46A08();
    v133 = sub_1B0E44838();
    v258 = v134;
    MEMORY[0x1B2728B30](v133);

    v261 = v502;
    v260 = v503;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v259);
    v264 = sub_1B0E44C88();
    v265 = v135;
    MEMORY[0x1E69E5928](v445);
    v266 = swift_allocObject();
    v262 = v266 + 16;

    v263 = v476;
    swift_weakInit();

    v267 = StateCapture.__allocating_init(title:queue:capture:)(v264, v265, v445, v374, v266);

    v287[2] = v267;
    v269 = 34;
    v136 = sub_1B0E46A28();
    v278 = &v498;
    v498 = v136;
    v499 = v137;
    v138 = sub_1B0E44838();
    v270 = v139;
    MEMORY[0x1B2728B30](v138);

    v497[3] = v481;
    v497[4] = v482;
    sub_1B0E46A08();
    v140 = sub_1B0E44838();
    v277 = v141;
    MEMORY[0x1B2728B30](v140);

    v280 = v498;
    v279 = v499;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v278);
    v283 = sub_1B0E44C88();
    v284 = v142;
    MEMORY[0x1E69E5928](v445);
    v285 = swift_allocObject();
    v281 = v285 + 16;

    v282 = v476;
    swift_weakInit();

    v143 = StateCapture.__allocating_init(title:queue:capture:)(v283, v284, v445, v375, v285);
    v144 = v411;
    v286 = v143;

    v145 = v288;
    v287[3] = v286;
    sub_1B0394964();
    v291 = v145;
    v292 = (v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
    v293 = v497;
    swift_beginAccess();
    v146 = *v292;
    *v292 = v291;

    swift_endAccess();
    v306 = *(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
    MEMORY[0x1E69E5928](v306);
    v295 = objc_opt_self();
    v296 = *(v476 + v294[308]);
    MEMORY[0x1E69E5928](v296);
    v297 = [v295 dispatchQueueSchedulerWithQueue_];
    MEMORY[0x1E69E5920](v296);
    swift_getObjectType();
    v304 = [v442 observeOn_];
    swift_unknownObjectRelease();
    v302 = swift_allocObject();
    v299 = v302 + 16;

    v300 = v476;
    swift_weakInit();

    v495 = v376;
    v496 = v302;
    v490 = MEMORY[0x1E69E9820];
    v491 = v301;
    v492 = 0;
    v493 = sub_1B03920B4;
    v494 = &block_descriptor_229;
    v303 = _Block_copy(&v490);

    v305 = [v304 subscribeWithResultBlock_];
    _Block_release(v303);
    MEMORY[0x1E69E5920](v304);
    [v306 addCancelable_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v306);
    (*(v408 + 16))(v144, v480, v407);

    sub_1B0394784(v476 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v433);
    v147 = (v433 + *(v431 + 20));
    v308 = *v147;
    v309 = *(v147 + 1);
    sub_1B039480C(v433);

    v148 = swift_allocObject();
    v149 = v309;
    v312 = v148;
    *(v148 + 16) = v308;
    *(v148 + 20) = v149;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v150 = swift_allocObject();
    v151 = v309;
    v310 = v150;
    *(v150 + 16) = v308;
    *(v150 + 20) = v151;

    v152 = swift_allocObject();
    v153 = v310;
    v317 = v152;
    *(v152 + 16) = v377;
    *(v152 + 24) = v153;
    sub_1B0394868();
    sub_1B0394868();

    v341 = sub_1B0E43988();
    v342 = sub_1B0E45908();
    v319 = 17;
    v323 = swift_allocObject();
    v314 = 16;
    *(v323 + 16) = 16;
    v324 = swift_allocObject();
    v316 = 4;
    *(v324 + 16) = 4;
    v154 = swift_allocObject();
    v311 = v154;
    *(v154 + 16) = v378;
    *(v154 + 24) = 0;
    v155 = swift_allocObject();
    v156 = v311;
    v325 = v155;
    *(v155 + 16) = v379;
    *(v155 + 24) = v156;
    v326 = swift_allocObject();
    *(v326 + 16) = 0;
    v327 = swift_allocObject();
    *(v327 + 16) = 1;
    v157 = swift_allocObject();
    v158 = v312;
    v313 = v157;
    *(v157 + 16) = v380;
    *(v157 + 24) = v158;
    v159 = swift_allocObject();
    v160 = v313;
    v328 = v159;
    *(v159 + 16) = v381;
    *(v159 + 24) = v160;
    v329 = swift_allocObject();
    *(v329 + 16) = v314;
    v330 = swift_allocObject();
    *(v330 + 16) = v316;
    v161 = swift_allocObject();
    v315 = v161;
    *(v161 + 16) = v382;
    *(v161 + 24) = 0;
    v162 = swift_allocObject();
    v163 = v315;
    v331 = v162;
    *(v162 + 16) = v383;
    *(v162 + 24) = v163;
    v332 = swift_allocObject();
    *(v332 + 16) = 0;
    v333 = swift_allocObject();
    *(v333 + 16) = v316;
    v164 = swift_allocObject();
    v165 = v317;
    v318 = v164;
    *(v164 + 16) = v384;
    *(v164 + 24) = v165;
    v166 = swift_allocObject();
    v167 = v318;
    v334 = v166;
    *(v166 + 16) = v385;
    *(v166 + 24) = v167;
    v335 = swift_allocObject();
    *(v335 + 16) = 32;
    v336 = swift_allocObject();
    *(v336 + 16) = 8;
    v168 = swift_allocObject();
    v169 = v476;
    v322 = v168;
    *(v168 + 16) = v386;
    *(v168 + 24) = v169;
    v170 = swift_allocObject();
    v171 = v322;
    v338 = v170;
    *(v170 + 16) = v387;
    *(v170 + 24) = v171;
    v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v337 = sub_1B0E46A48();
    v339 = v172;

    v173 = v323;
    v174 = v339;
    *v339 = v388;
    v174[1] = v173;

    v175 = v324;
    v176 = v339;
    v339[2] = v389;
    v176[3] = v175;

    v177 = v325;
    v178 = v339;
    v339[4] = v390;
    v178[5] = v177;

    v179 = v326;
    v180 = v339;
    v339[6] = v391;
    v180[7] = v179;

    v181 = v327;
    v182 = v339;
    v339[8] = v392;
    v182[9] = v181;

    v183 = v328;
    v184 = v339;
    v339[10] = v393;
    v184[11] = v183;

    v185 = v329;
    v186 = v339;
    v339[12] = v394;
    v186[13] = v185;

    v187 = v330;
    v188 = v339;
    v339[14] = v395;
    v188[15] = v187;

    v189 = v331;
    v190 = v339;
    v339[16] = v396;
    v190[17] = v189;

    v191 = v332;
    v192 = v339;
    v339[18] = v397;
    v192[19] = v191;

    v193 = v333;
    v194 = v339;
    v339[20] = v398;
    v194[21] = v193;

    v195 = v334;
    v196 = v339;
    v339[22] = v399;
    v196[23] = v195;

    v197 = v335;
    v198 = v339;
    v339[24] = v400;
    v198[25] = v197;

    v199 = v336;
    v200 = v339;
    v339[26] = v401;
    v200[27] = v199;

    v201 = v338;
    v202 = v339;
    v339[28] = v402;
    v202[29] = v201;
    sub_1B0394964();

    if (os_log_type_enabled(v341, v342))
    {
      v203 = v406;
      v206 = sub_1B0E45D78();
      v205[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v207 = sub_1B03949A8(0);
      v208 = sub_1B03949A8(1);
      v209 = &v489;
      v489 = v206;
      v210 = &v488;
      v488 = v207;
      v211 = &v487;
      v487 = v208;
      sub_1B0394A48(2, &v489);
      sub_1B0394A48(5, v209);
      v485 = v388;
      v486 = v323;
      sub_1B03949FC(&v485, v209, v210, v211);
      v212 = v203;
      if (v203)
      {

        __break(1u);
      }

      else
      {
        v485 = v389;
        v486 = v324;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[13] = 0;
        v485 = v390;
        v486 = v325;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[12] = 0;
        v485 = v391;
        v486 = v326;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[11] = 0;
        v485 = v392;
        v486 = v327;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[10] = 0;
        v485 = v393;
        v486 = v328;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[9] = 0;
        v485 = v394;
        v486 = v329;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[8] = 0;
        v485 = v395;
        v486 = v330;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[7] = 0;
        v485 = v396;
        v486 = v331;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[6] = 0;
        v485 = v397;
        v486 = v332;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[5] = 0;
        v485 = v398;
        v486 = v333;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[4] = 0;
        v485 = v399;
        v486 = v334;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[3] = 0;
        v485 = v400;
        v486 = v335;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[2] = 0;
        v485 = v401;
        v486 = v336;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        v205[1] = 0;
        v485 = v402;
        v486 = v338;
        sub_1B03949FC(&v485, &v489, &v488, &v487);
        _os_log_impl(&dword_1B0389000, v341, v342, "[%.*hhx-%.*X] New PersistenceAdaptor for account '%s'", v206, 0x21u);
        sub_1B03998A8(v207);
        sub_1B03998A8(v208);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v341);
    (*(v408 + 8))(v411, v407);
    MFPersistenceAdaptorPowerLogDidCreateInstance(1);
    MEMORY[0x1E69E5920](v215);

    MEMORY[0x1E69E5920](v345);
    MEMORY[0x1E69E5920](v366);
    sub_1B039480C(v480);

    sub_1B03F4F08(v477);

    MEMORY[0x1E69E5920](v442);
    MEMORY[0x1E69E5920](v483);
    MEMORY[0x1E69E5920](v445);
    return v476;
  }

  else
  {
    sub_1B0E44838();
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B9E30(uint64_t a1, uint64_t a2)
{

  sub_1B06E7704(a2, &off_1F2706158, 1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B09B9E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10[4] = a1 + 16;
  swift_beginAccess();
  v10[0] = swift_weakLoadStrong();
  if (v10[0])
  {
    v4 = v10[0];

    sub_1B0391AD4(v10);
    swift_endAccess();
    v3 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
    swift_beginAccess();
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    a2[3] = &unk_1F26F20D8;
    a2[4] = sub_1B0993144();
    sub_1B098CE6C(v5, v6, v7, v8, a2);
  }

  else
  {
    sub_1B0391AD4(v10);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[4] = a1 + 16;
  swift_beginAccess();
  v6[0] = swift_weakLoadStrong();
  if (v6[0])
  {
    v3 = v6[0];

    sub_1B0391AD4(v6);
    swift_endAccess();
    swift_beginAccess();
    v4 = *(v3 + 64);

    swift_endAccess();

    a2[3] = &unk_1F26DB358;
    a2[4] = sub_1B08BF864();
    sub_1B08BE0E8(a2);
  }

  else
  {
    sub_1B0391AD4(v6);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9[4] = a1 + 16;
  swift_beginAccess();
  v9[0] = swift_weakLoadStrong();
  if (v9[0])
  {
    v4 = v9[0];

    sub_1B0391AD4(v9);
    swift_endAccess();
    v3 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
    swift_beginAccess();
    v7 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2578, &unk_1B0EA2E60);
    a2[4] = sub_1B08245C8();
    sub_1B081CA50(v7, v5, v6, a2);
  }

  else
  {
    sub_1B0391AD4(v9);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[4] = a1 + 16;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B0993FE4();
  }

  else
  {
    sub_1B0391AD4(v4);
    result = swift_endAccess();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  return result;
}

uint64_t sub_1B09BA354(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v14 = a1;
  v13 = a2 + 16;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  LOBYTE(v11) = v3;
  BYTE1(v11) = v4;
  BYTE2(v11) = v5;
  *(&v11 + 1) = v6;
  LOBYTE(v12) = v7;
  *(&v12 + 1) = v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    LOBYTE(v9) = v3;
    BYTE1(v9) = v4;
    BYTE2(v9) = v5;
    sub_1B039211C(v9, v6, v7, v8);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B09BA4CC()
{
  v144 = sub_1B039BBE8;
  v145 = sub_1B0394C30;
  v146 = sub_1B0394C24;
  v147 = sub_1B039BA2C;
  v148 = sub_1B039BA88;
  v149 = sub_1B039BB94;
  v150 = sub_1B0394C24;
  v151 = sub_1B039BBA0;
  v152 = sub_1B039BC08;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0399178;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B039BA94;
  v159 = sub_1B0398F5C;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0399178;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0398F5C;
  v164 = sub_1B03991EC;
  v215 = 0;
  v214 = 0;
  v211[0] = 0;
  v211[1] = 0;
  v203 = 0;
  v202[0] = 0;
  v202[1] = 0;
  v200 = 0;
  v165 = 0;
  v182 = 0;
  v166 = sub_1B0E42A08();
  v167 = *(v166 - 8);
  v168 = v166 - 8;
  v169 = (*(v167 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166);
  v170 = v57 - v169;
  v171 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57 - v169);
  v172 = v57 - v171;
  v215 = v57 - v171;
  v173 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3490, &unk_1B0E9BF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v174 = v57 - v173;
  v175 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v176 = v57 - v175;
  v177 = sub_1B0E439A8();
  v178 = *(v177 - 8);
  v179 = v177 - 8;
  v180 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v181 = v57 - v180;
  v183 = _s6LoggerVMa();
  v184 = (*(*(v183 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v185 = v57 - v184;
  v186 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v187 = v57 - v186;
  v192 = sub_1B0E44468();
  v190 = *(v192 - 8);
  v191 = v192 - 8;
  v188 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v192);
  v193 = (v57 - v188);
  v214 = v0;

  v189 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v189);
  v4 = v190;
  *v193 = v189;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v194 = sub_1B0E44488();
  (*(v190 + 8))(v193, v192);
  result = v194;
  if (v194)
  {
    v7 = v181;

    v110 = &unk_1EB737000;
    sub_1B0394784(v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v187);
    (*(v178 + 16))(v7, v187, v177);
    sub_1B039480C(v187);

    sub_1B0394784(v143 + v110[314], v185);
    v8 = (v185 + *(v183 + 20));
    v112 = *v8;
    v113 = *(v8 + 1);
    sub_1B039480C(v185);

    v111 = 24;
    v123 = 7;
    v9 = swift_allocObject();
    v10 = v113;
    v116 = v9;
    *(v9 + 16) = v112;
    *(v9 + 20) = v10;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v11 = swift_allocObject();
    v12 = v113;
    v114 = v11;
    *(v11 + 16) = v112;
    *(v11 + 20) = v12;

    v122 = 32;
    v13 = swift_allocObject();
    v14 = v114;
    v124 = v13;
    *(v13 + 16) = v144;
    *(v13 + 24) = v14;
    sub_1B0394868();
    sub_1B0394868();

    v141 = sub_1B0E43988();
    v142 = sub_1B0E45908();
    v120 = 17;
    v126 = swift_allocObject();
    v118 = 16;
    *(v126 + 16) = 16;
    v127 = swift_allocObject();
    v121 = 4;
    *(v127 + 16) = 4;
    v15 = swift_allocObject();
    v115 = v15;
    *(v15 + 16) = v145;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    v17 = v115;
    v128 = v16;
    *(v16 + 16) = v146;
    *(v16 + 24) = v17;
    v129 = swift_allocObject();
    *(v129 + 16) = 0;
    v130 = swift_allocObject();
    *(v130 + 16) = 1;
    v18 = swift_allocObject();
    v19 = v116;
    v117 = v18;
    *(v18 + 16) = v147;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v117;
    v131 = v20;
    *(v20 + 16) = v148;
    *(v20 + 24) = v21;
    v132 = swift_allocObject();
    *(v132 + 16) = v118;
    v133 = swift_allocObject();
    *(v133 + 16) = v121;
    v22 = swift_allocObject();
    v119 = v22;
    *(v22 + 16) = v149;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    v24 = v119;
    v134 = v23;
    *(v23 + 16) = v150;
    *(v23 + 24) = v24;
    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v121;
    v25 = swift_allocObject();
    v26 = v124;
    v125 = v25;
    *(v25 + 16) = v151;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v125;
    v138 = v27;
    *(v27 + 16) = v152;
    *(v27 + 24) = v28;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v137 = sub_1B0E46A48();
    v139 = v29;

    v30 = v126;
    v31 = v139;
    *v139 = v153;
    v31[1] = v30;

    v32 = v127;
    v33 = v139;
    v139[2] = v154;
    v33[3] = v32;

    v34 = v128;
    v35 = v139;
    v139[4] = v155;
    v35[5] = v34;

    v36 = v129;
    v37 = v139;
    v139[6] = v156;
    v37[7] = v36;

    v38 = v130;
    v39 = v139;
    v139[8] = v157;
    v39[9] = v38;

    v40 = v131;
    v41 = v139;
    v139[10] = v158;
    v41[11] = v40;

    v42 = v132;
    v43 = v139;
    v139[12] = v159;
    v43[13] = v42;

    v44 = v133;
    v45 = v139;
    v139[14] = v160;
    v45[15] = v44;

    v46 = v134;
    v47 = v139;
    v139[16] = v161;
    v47[17] = v46;

    v48 = v135;
    v49 = v139;
    v139[18] = v162;
    v49[19] = v48;

    v50 = v136;
    v51 = v139;
    v139[20] = v163;
    v51[21] = v50;

    v52 = v138;
    v53 = v139;
    v139[22] = v164;
    v53[23] = v52;
    sub_1B0394964();

    if (os_log_type_enabled(v141, v142))
    {
      v54 = v165;
      v103 = sub_1B0E45D78();
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v102 = 0;
      v104 = sub_1B03949A8(0);
      v105 = sub_1B03949A8(v102);
      v106 = &v199;
      v199 = v103;
      v107 = &v198;
      v198 = v104;
      v108 = &v197;
      v197 = v105;
      sub_1B0394A48(0, &v199);
      sub_1B0394A48(4, v106);
      v195 = v153;
      v196 = v126;
      sub_1B03949FC(&v195, v106, v107, v108);
      v109 = v54;
      if (v54)
      {

        __break(1u);
      }

      else
      {
        v195 = v154;
        v196 = v127;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v99 = 0;
        v195 = v155;
        v196 = v128;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v98 = 0;
        v195 = v156;
        v196 = v129;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v97 = 0;
        v195 = v157;
        v196 = v130;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v96 = 0;
        v195 = v158;
        v196 = v131;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v95 = 0;
        v195 = v159;
        v196 = v132;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v94 = 0;
        v195 = v160;
        v196 = v133;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v93 = 0;
        v195 = v161;
        v196 = v134;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v92 = 0;
        v195 = v162;
        v196 = v135;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v91 = 0;
        v195 = v163;
        v196 = v136;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v90 = 0;
        v195 = v164;
        v196 = v138;
        sub_1B03949FC(&v195, &v199, &v198, &v197);
        v89 = 0;
        _os_log_impl(&dword_1B0389000, v141, v142, "[%.*hhx-%.*X] tear down", v103, 0x17u);
        v88 = 0;
        sub_1B03998A8(v104);
        sub_1B03998A8(v105);
        sub_1B0E45D58();

        v100 = v89;
      }
    }

    else
    {
      v55 = v165;

      v100 = v55;
    }

    v84 = v100;
    MEMORY[0x1E69E5920](v141);
    (*(v178 + 8))(v181, v177);
    v85 = *(v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
    MEMORY[0x1E69E5928](v85);
    [v85 cancel];
    MEMORY[0x1E69E5920](v85);
    v86 = &v213;
    swift_beginAccess();
    v87 = *(v143 + 72);
    result = swift_endAccess();
    if ((v87 & 1) == 0)
    {
      v77 = &v212;
      v78 = 0;
      swift_beginAccess();
      *(v143 + 72) = 1;
      swift_endAccess();
      v79 = (v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
      v80 = &v210;
      swift_beginAccess();
      v81 = *v79;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v209 = v81;
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3498, &qword_1B0EA1F78);
      sub_1B0A1A914();
      sub_1B0E45798();
      for (i = v84; ; i = v75)
      {
        v75 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E34A8, &qword_1B0EA1F80);
        sub_1B0E46518();
        v76 = v208;
        if (!v208)
        {
          break;
        }

        v74 = v76;
        v73 = v76;
        v200 = v76;
        StateCapture.tearDown()();
      }

      sub_1B039E440(v211);
      v63 = &v207;
      v67 = 33;
      v68 = 0;
      swift_beginAccess();
      sub_1B0A22B00();
      swift_endAccess();
      sub_1B0394784(v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v185);
      v64 = &v206;
      swift_beginAccess();
      sub_1B06A215C(v185);
      swift_endAccess();
      sub_1B039480C(v185);
      v65 = v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
      v66 = &v205;
      swift_beginAccess();
      sub_1B03F4D78(v65, v176);
      swift_endAccess();
      v69 = &v204;
      swift_beginAccess();
      v70 = sub_1B07B9EF0(v176);
      swift_endAccess();
      sub_1B03F4F08(v176);
      v203 = v70;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v201 = v70;
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
      sub_1B0417958();
      sub_1B0E45798();
      for (j = v75; ; j = v62)
      {
        v62 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34C0, &qword_1B0E9BF20);
        sub_1B0E46518();
        if ((*(v167 + 48))(v174, 1, v166) == 1)
        {
          break;
        }

        v56 = v170;
        (*(v167 + 32))(v172, v174, v166);
        v59 = [objc_opt_self() defaultCenter];
        (*(v167 + 16))(v56, v172, v166);
        v58 = sub_1B0E429C8();
        v61 = *(v167 + 8);
        v60 = v167 + 8;
        v61(v170, v166);
        [v59 postNotification_];
        MEMORY[0x1E69E5920](v58);
        MEMORY[0x1E69E5920](v59);
        v61(v172, v166);
      }

      sub_1B039E440(v202);
      v57[1] = *(v143 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

      sub_1B06E5120();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BBA68()
{
  v19 = 0;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    sub_1B08D3A10();
    sub_1B0E465B8();
    __break(1u);
  }

  sub_1B06CCC58();
  v6 = *(v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey);

  sub_1B0E459A8();

  v15 = v17;
  v16 = v18 & 1;
  if ((v18 & 1) == 0)
  {
    sub_1B09BBD80();
    sub_1B09BA4CC();
    v5 = 0;
LABEL_7:
    sub_1B04197E4(v5);
    return sub_1B04197E4(0);
  }

  queue = *(v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](queue);

  v1 = swift_allocObject();
  *(v1 + 16) = sub_1B0A1A99C;
  *(v1 + 24) = v7;

  v13 = sub_1B04020AC;
  v14 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = 0;
  v11 = sub_1B0402058;
  v12 = &block_descriptor_403;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](queue);
    v5 = sub_1B0A1A99C;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09BBD80()
{
  v14 = 0;
  v10 = sub_1B0E44468();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v11 = (v5 - v6);
  v14 = v0;

  v7 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v7);
  v1 = v8;
  *v11 = v7;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v12 = sub_1B0E44488();
  (*(v8 + 8))(v11, v10);
  result = v12;
  if (v12)
  {

    v5[0] = v5[2] + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions;
    v5[1] = &v13;
    swift_beginAccess();
    v4 = *v5[0];
    *v5[0] = 0;

    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BBF48()
{
  sub_1B0391AD4(v0 + 5);
  v1 = v0[7];

  v2 = v0[8];

  MEMORY[0x1E69E5920](v0[10]);
  MEMORY[0x1E69E5920](v0[11]);
  MEMORY[0x1E69E5920](v0[12]);
  v3 = v0[13];

  MEMORY[0x1E69E5920](v0[14]);
  sub_1B03F4F08(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop));
  v4 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey);

  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue));
  sub_1B092AADC((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove));
  sub_1B0696E40((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater));
  v5 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes);

  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress));
  v6 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  sub_1B039480C(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions));
  sub_1B0993AD8((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads));
  sub_1B09B00F0(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches);
  sub_1B06D4E94((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken));
  sub_1B0391AD4((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer));
  sub_1B06E38F8((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs));
  sub_1B03FD360((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard));
  v7 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

  return v9;
}

uint64_t sub_1B09BC1DC()
{
  v0 = *sub_1B09BBF48();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B09BC240()
{
  v12 = 0;
  v9 = sub_1B0E44468();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = (&v4 - v5);
  v12 = v0;

  v6 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v6);
  v1 = v7;
  *v10 = v6;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v11 = sub_1B0E44488();
  (*(v7 + 8))(v10, v9);
  result = v11;
  if (v11)
  {

    result = sub_1B0A00DA4();
    if ((result & 1) == 0)
    {
      return sub_1B09BBD80();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B09BC3B4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return static MonotonicTime.__derived_struct_equals(_:_:)(a1, a3);
}

BOOL sub_1B09BC4DC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    MonotonicTime.seconds(since:)(a2, a1);
    return a4 < v4;
  }
}

uint64_t sub_1B09BC580()
{
  v4 = sub_1B0A1AA6C;
  v24 = 0;
  v6 = 0;
  v10 = sub_1B0E44238();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v2 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = &v2 - v2;
  v14 = sub_1B0E44288();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v13 = &v2 - v3;
  v24 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v16);

  v22 = v4;
  v23 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = 0;
  v20 = sub_1B038C908;
  v21 = &block_descriptor_513;
  v15 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v6, v13, v9, v15);
  (*(v7 + 8))(v9, v10);
  (*(v11 + 8))(v13, v14);
  _Block_release(v15);

  return MEMORY[0x1E69E5920](v16);
}

uint64_t sub_1B09BC7F8()
{
  v110 = sub_1B039BBE8;
  v111 = sub_1B0394C30;
  v112 = sub_1B0394C24;
  v113 = sub_1B039BA2C;
  v114 = sub_1B039BA88;
  v115 = sub_1B039BB94;
  v116 = sub_1B0394C24;
  v117 = sub_1B039BBA0;
  v118 = sub_1B039BC08;
  v119 = sub_1B0398F5C;
  v120 = sub_1B0398F5C;
  v121 = sub_1B0399178;
  v122 = sub_1B0398F5C;
  v123 = sub_1B0398F5C;
  v124 = sub_1B039BA94;
  v125 = sub_1B0398F5C;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0399178;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v130 = sub_1B03991EC;
  v155 = 0;
  v131 = 0;
  v137 = 0;
  v132 = sub_1B0E439A8();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v136 = &v54 - v135;
  v138 = _s6LoggerVMa();
  v139 = (*(*(v138 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v54 - v139;
  v141 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v142 = &v54 - v141;
  v147 = sub_1B0E44468();
  v145 = *(v147 - 8);
  v146 = v147 - 8;
  v143 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v148 = (&v54 - v143);
  v155 = v0;

  v144 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v144);
  v3 = v145;
  *v148 = v144;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v149 = sub_1B0E44488();
  (*(v145 + 8))(v148, v147);
  result = v149;
  if (v149)
  {
    v6 = v136;

    v76 = &unk_1EB737000;
    sub_1B0394784(v109 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v142);
    (*(v133 + 16))(v6, v142, v132);
    sub_1B039480C(v142);

    sub_1B0394784(v109 + v76[314], v140);
    v7 = (v140 + *(v138 + 20));
    v78 = *v7;
    v79 = *(v7 + 1);
    sub_1B039480C(v140);

    v77 = 24;
    v89 = 7;
    v8 = swift_allocObject();
    v9 = v79;
    v82 = v8;
    *(v8 + 16) = v78;
    *(v8 + 20) = v9;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v10 = swift_allocObject();
    v11 = v79;
    v80 = v10;
    *(v10 + 16) = v78;
    *(v10 + 20) = v11;

    v88 = 32;
    v12 = swift_allocObject();
    v13 = v80;
    v90 = v12;
    *(v12 + 16) = v110;
    *(v12 + 24) = v13;
    sub_1B0394868();
    sub_1B0394868();

    v107 = sub_1B0E43988();
    v108 = sub_1B0E45908();
    v86 = 17;
    v92 = swift_allocObject();
    v84 = 16;
    *(v92 + 16) = 16;
    v93 = swift_allocObject();
    v87 = 4;
    *(v93 + 16) = 4;
    v14 = swift_allocObject();
    v81 = v14;
    *(v14 + 16) = v111;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v16 = v81;
    v94 = v15;
    *(v15 + 16) = v112;
    *(v15 + 24) = v16;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = 1;
    v17 = swift_allocObject();
    v18 = v82;
    v83 = v17;
    *(v17 + 16) = v113;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v83;
    v97 = v19;
    *(v19 + 16) = v114;
    *(v19 + 24) = v20;
    v98 = swift_allocObject();
    *(v98 + 16) = v84;
    v99 = swift_allocObject();
    *(v99 + 16) = v87;
    v21 = swift_allocObject();
    v85 = v21;
    *(v21 + 16) = v115;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v85;
    v100 = v22;
    *(v22 + 16) = v116;
    *(v22 + 24) = v23;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v87;
    v24 = swift_allocObject();
    v25 = v90;
    v91 = v24;
    *(v24 + 16) = v117;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v91;
    v104 = v26;
    *(v26 + 16) = v118;
    *(v26 + 24) = v27;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v103 = sub_1B0E46A48();
    v105 = v28;

    v29 = v92;
    v30 = v105;
    *v105 = v119;
    v30[1] = v29;

    v31 = v93;
    v32 = v105;
    v105[2] = v120;
    v32[3] = v31;

    v33 = v94;
    v34 = v105;
    v105[4] = v121;
    v34[5] = v33;

    v35 = v95;
    v36 = v105;
    v105[6] = v122;
    v36[7] = v35;

    v37 = v96;
    v38 = v105;
    v105[8] = v123;
    v38[9] = v37;

    v39 = v97;
    v40 = v105;
    v105[10] = v124;
    v40[11] = v39;

    v41 = v98;
    v42 = v105;
    v105[12] = v125;
    v42[13] = v41;

    v43 = v99;
    v44 = v105;
    v105[14] = v126;
    v44[15] = v43;

    v45 = v100;
    v46 = v105;
    v105[16] = v127;
    v46[17] = v45;

    v47 = v101;
    v48 = v105;
    v105[18] = v128;
    v48[19] = v47;

    v49 = v102;
    v50 = v105;
    v105[20] = v129;
    v50[21] = v49;

    v51 = v104;
    v52 = v105;
    v105[22] = v130;
    v52[23] = v51;
    sub_1B0394964();

    if (os_log_type_enabled(v107, v108))
    {
      v53 = v131;
      v69 = sub_1B0E45D78();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v68 = 0;
      v70 = sub_1B03949A8(0);
      v71 = sub_1B03949A8(v68);
      v72 = &v154;
      v154 = v69;
      v73 = &v153;
      v153 = v70;
      v74 = &v152;
      v152 = v71;
      sub_1B0394A48(0, &v154);
      sub_1B0394A48(4, v72);
      v150 = v119;
      v151 = v92;
      sub_1B03949FC(&v150, v72, v73, v74);
      v75 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v150 = v120;
        v151 = v93;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v66 = 0;
        v150 = v121;
        v151 = v94;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v65 = 0;
        v150 = v122;
        v151 = v95;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v64 = 0;
        v150 = v123;
        v151 = v96;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v63 = 0;
        v150 = v124;
        v151 = v97;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v62 = 0;
        v150 = v125;
        v151 = v98;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v61 = 0;
        v150 = v126;
        v151 = v99;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v60 = 0;
        v150 = v127;
        v151 = v100;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v59 = 0;
        v150 = v128;
        v151 = v101;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v58 = 0;
        v150 = v129;
        v151 = v102;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v57 = 0;
        v150 = v130;
        v151 = v104;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        _os_log_impl(&dword_1B0389000, v107, v108, "[%.*hhx-%.*X] Account did change.", v69, 0x17u);
        v56 = 0;
        sub_1B03998A8(v70);
        sub_1B03998A8(v71);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v107);
    (*(v133 + 8))(v136, v132);
    v55 = sub_1B09B0668();
    sub_1B09BDBA0(v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BDBA0(uint64_t a1)
{
  v175 = a1;
  v137 = sub_1B039BBE8;
  v138 = sub_1B0394C30;
  v139 = sub_1B0394C24;
  v140 = sub_1B039BA2C;
  v141 = sub_1B039BA88;
  v142 = sub_1B039BB94;
  v143 = sub_1B0394C24;
  v144 = sub_1B039BBA0;
  v145 = sub_1B039BC08;
  v146 = sub_1B0A1AAD8;
  v147 = sub_1B03B0DF8;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0399178;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B039BA94;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0399178;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0398F5C;
  v159 = sub_1B03991EC;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0399260;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v163 = 0;
  v169 = 0;
  v164 = sub_1B0E439A8();
  v165 = *(v164 - 8);
  v166 = v164 - 8;
  v167 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v168 = v68 - v167;
  v170 = _s6LoggerVMa();
  v171 = (*(*(v170 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v169);
  v172 = v68 - v171;
  v173 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v174 = v68 - v173;
  v180 = sub_1B0E44468();
  v178 = *(v180 - 8);
  v179 = v180 - 8;
  v176 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v175);
  v181 = (v68 - v176);
  v192 = v4;
  v191 = v1;

  v177 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v177);
  v5 = v178;
  *v181 = v177;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v182 = sub_1B0E44488();
  (*(v178 + 8))(v181, v180);
  result = v182;
  if (v182)
  {

    v8 = sub_1B0A07784(v175);
    v9 = v168;
    v102 = v8;
    v190 = v8;
    v97 = &unk_1EB737000;
    sub_1B0394784(v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v174);
    (*(v165 + 16))(v9, v174, v164);
    sub_1B039480C(v174);

    sub_1B0394784(v136 + v97[314], v172);
    v10 = (v172 + *(v170 + 20));
    v98 = *v10;
    v99 = *(v10 + 1);
    sub_1B039480C(v172);

    v101 = 24;
    v113 = 7;
    v11 = swift_allocObject();
    v12 = v99;
    v104 = v11;
    *(v11 + 16) = v98;
    *(v11 + 20) = v12;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v13 = swift_allocObject();
    v14 = v99;
    v100 = v13;
    *(v13 + 16) = v98;
    *(v13 + 20) = v14;

    v112 = 32;
    v15 = swift_allocObject();
    v16 = v100;
    v109 = v15;
    *(v15 + 16) = v137;
    *(v15 + 24) = v16;
    sub_1B0394868();
    sub_1B0394868();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v114 = swift_allocObject();
    *(v114 + 16) = v102;
    v134 = sub_1B0E43988();
    v135 = sub_1B0E45908();
    v111 = 17;
    v116 = swift_allocObject();
    v106 = 16;
    *(v116 + 16) = 16;
    v117 = swift_allocObject();
    v108 = 4;
    *(v117 + 16) = 4;
    v17 = swift_allocObject();
    v103 = v17;
    *(v17 + 16) = v138;
    *(v17 + 24) = 0;
    v18 = swift_allocObject();
    v19 = v103;
    v118 = v18;
    *(v18 + 16) = v139;
    *(v18 + 24) = v19;
    v119 = swift_allocObject();
    *(v119 + 16) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = 1;
    v20 = swift_allocObject();
    v21 = v104;
    v105 = v20;
    *(v20 + 16) = v140;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v105;
    v121 = v22;
    *(v22 + 16) = v141;
    *(v22 + 24) = v23;
    v122 = swift_allocObject();
    *(v122 + 16) = v106;
    v123 = swift_allocObject();
    *(v123 + 16) = v108;
    v24 = swift_allocObject();
    v107 = v24;
    *(v24 + 16) = v142;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v107;
    v124 = v25;
    *(v25 + 16) = v143;
    *(v25 + 24) = v26;
    v125 = swift_allocObject();
    *(v125 + 16) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v108;
    v27 = swift_allocObject();
    v28 = v109;
    v110 = v27;
    *(v27 + 16) = v144;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v110;
    v127 = v29;
    *(v29 + 16) = v145;
    *(v29 + 24) = v30;
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v31 = swift_allocObject();
    v32 = v114;
    v115 = v31;
    *(v31 + 16) = v146;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v115;
    v131 = v33;
    *(v33 + 16) = v147;
    *(v33 + 24) = v34;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v130 = sub_1B0E46A48();
    v132 = v35;

    v36 = v116;
    v37 = v132;
    *v132 = v148;
    v37[1] = v36;

    v38 = v117;
    v39 = v132;
    v132[2] = v149;
    v39[3] = v38;

    v40 = v118;
    v41 = v132;
    v132[4] = v150;
    v41[5] = v40;

    v42 = v119;
    v43 = v132;
    v132[6] = v151;
    v43[7] = v42;

    v44 = v120;
    v45 = v132;
    v132[8] = v152;
    v45[9] = v44;

    v46 = v121;
    v47 = v132;
    v132[10] = v153;
    v47[11] = v46;

    v48 = v122;
    v49 = v132;
    v132[12] = v154;
    v49[13] = v48;

    v50 = v123;
    v51 = v132;
    v132[14] = v155;
    v51[15] = v50;

    v52 = v124;
    v53 = v132;
    v132[16] = v156;
    v53[17] = v52;

    v54 = v125;
    v55 = v132;
    v132[18] = v157;
    v55[19] = v54;

    v56 = v126;
    v57 = v132;
    v132[20] = v158;
    v57[21] = v56;

    v58 = v127;
    v59 = v132;
    v132[22] = v159;
    v59[23] = v58;

    v60 = v128;
    v61 = v132;
    v132[24] = v160;
    v61[25] = v60;

    v62 = v129;
    v63 = v132;
    v132[26] = v161;
    v63[27] = v62;

    v64 = v131;
    v65 = v132;
    v132[28] = v162;
    v65[29] = v64;
    sub_1B0394964();

    if (os_log_type_enabled(v134, v135))
    {
      v66 = v163;
      v90 = sub_1B0E45D78();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v89 = 0;
      v91 = sub_1B03949A8(0);
      v92 = sub_1B03949A8(v89);
      v93 = &v187;
      v187 = v90;
      v94 = &v186;
      v186 = v91;
      v95 = &v185;
      v185 = v92;
      sub_1B0394A48(0, &v187);
      sub_1B0394A48(5, v93);
      v183 = v148;
      v184 = v116;
      sub_1B03949FC(&v183, v93, v94, v95);
      v96 = v66;
      if (v66)
      {

        __break(1u);
      }

      else
      {
        v183 = v149;
        v184 = v117;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v87 = 0;
        v183 = v150;
        v184 = v118;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v86 = 0;
        v183 = v151;
        v184 = v119;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v85 = 0;
        v183 = v152;
        v184 = v120;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v84 = 0;
        v183 = v153;
        v184 = v121;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v83 = 0;
        v183 = v154;
        v184 = v122;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v82 = 0;
        v183 = v155;
        v184 = v123;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v81 = 0;
        v183 = v156;
        v184 = v124;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v80 = 0;
        v183 = v157;
        v184 = v125;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v79 = 0;
        v183 = v158;
        v184 = v126;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v78 = 0;
        v183 = v159;
        v184 = v127;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v77 = 0;
        v183 = v160;
        v184 = v128;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v76 = 0;
        v183 = v161;
        v184 = v129;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v75 = 0;
        v183 = v162;
        v184 = v131;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        _os_log_impl(&dword_1B0389000, v134, v135, "[%.*hhx-%.*X] Sending %ld local mailboxes to engine.", v90, 0x21u);
        v74 = 0;
        sub_1B03998A8(v91);
        sub_1B03998A8(v92);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v134);
    (*(v165 + 8))(v168, v164);
    v69 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = v69;
    *(v69 + 16) = v102;
    v70 = v67 | 0x2000000000000000;
    sub_1B039C1F8(v67 | 0x2000000000000000);

    v71 = (v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
    v72 = &v189;
    swift_beginAccess();
    v73 = *v71;
    swift_endAccess();
    if ((v73 & 1) == 0)
    {
      v68[0] = v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes;
      v68[1] = &v188;
      swift_beginAccess();
      *v68[0] = 1;
      swift_endAccess();
      sub_1B09B4404();
    }

    sub_1B0A07BD8(v102);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BF49C()
{
  v12 = 0;
  v9 = sub_1B0E44468();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = (&v4 - v5);
  v12 = v0;

  v6 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v6);
  v1 = v7;
  *v10 = v6;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v11 = sub_1B0E44488();
  (*(v7 + 8))(v10, v9);
  result = v11;
  if (v11)
  {

    return sub_1B039C1F8(0xB000000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BF614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = a3;
  v19 = a1;
  v18 = a2;
  v28 = 0;
  v27 = 0;
  v15 = 0;
  v10 = sub_1B0E42E68();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v6 - v13;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v6 - v16;
  v20 = (*(*(_s18MailboxPersistenceVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v6 - v20;
  v24 = *v3;
  v28 = v24;
  v27 = v4;
  v21 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v23 = &v26;
  swift_beginAccess();
  sub_1B03F4D78(v21, v22);
  swift_endAccess();
  v25 = [v24 URL];
  if (v25)
  {
    v8 = v25;
    v7 = v25;
    sub_1B0E42DE8();
    (*(v11 + 32))(v17, v14, v10);
    (*(v11 + 56))(v17, 0, 1, v10);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    (*(v11 + 56))(v17, 1, 1, v10);
  }

  sub_1B07BF670(v17, v9);
  sub_1B06E3800(v17);
  return sub_1B03F4F08(v22);
}

uint64_t sub_1B09BF8E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{

  MEMORY[0x1E69E5928](a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34F0, &qword_1B0EA1F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
  sub_1B0A1AC18();
  sub_1B0E44F58();

  MEMORY[0x1E69E5920](a3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03EE50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3500, &qword_1B0EA1F98);
  sub_1B03EFF80();
  sub_1B0A1ACA0();
  sub_1B0E44718();
  a4();
}

uint64_t sub_1B09BFB54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a1;
  v70 = a2;
  v68 = a3;
  v67 = a4;
  v69 = 0;
  v62 = sub_1B0A1F45C;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v88 = 0;
  v87 = 0;
  v63 = 0;
  v85 = 0;
  v65 = 0;
  v4 = _s18MailboxPersistenceVMa();
  v64 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v17 - v64;
  v77 = &v17 - v64;
  v66 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v81 = &v17 - v66;
  v80 = sub_1B0E42E68();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v72 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v71);
  v73 = &v17 - v72;
  v96 = &v17 - v72;
  v76 = *v6;
  v95 = v76;
  v94 = v7;
  v93 = v8;
  v92 = v9;
  v74 = v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v75 = &v91;
  swift_beginAccess();
  sub_1B03F4D78(v74, v5);
  swift_endAccess();
  v90 = v76;
  sub_1B07C04F4(&v90, v81);
  sub_1B03F4F08(v77);
  if ((*(v78 + 48))(v81, 1, v80) == 1)
  {
    sub_1B06E3800(v81);
LABEL_28:
    v18 = 0;
    v19 = 0;
    return v18;
  }

  v10 = v77;
  (*(v78 + 32))(v73, v81, v80);
  v59 = v68 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v60 = &v89;
  swift_beginAccess();
  sub_1B03F4D78(v59, v10);
  swift_endAccess();
  v61 = sub_1B07C16F4();
  sub_1B03F4F08(v77);
  if (!v61)
  {
    (*(v78 + 8))(v73, v80);
    goto LABEL_28;
  }

  v58 = v61;
  v56 = v61;
  v88 = v61;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = MessageIdentifierSet.isEmpty.getter();
  if (v11)
  {
    v55 = 1;
  }

  else
  {
    v12 = sub_1B041C1E8();
    static MessageIdentifier.min.getter(&type metadata for UID, v12);
    v86[0] = v86[1];
    v55 = MessageIdentifierSet.contains(_:)(v86, v57);
  }

  if (v55)
  {
    v52 = 0;
    sub_1B07F1AFC();
    v53 = sub_1B0E46A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v87 = v53;
    v54 = v53;
LABEL_27:
    v17 = v54;
    sub_1B039E440(&v87);
    (*(v78 + 8))(v73, v80);
    v18 = v56;
    v19 = v17;
    return v18;
  }

  v13 = v63;
  KeyPath = swift_getKeyPath();

  v14 = sub_1B074B4A4();
  v51 = sub_1B039CA88(v62, KeyPath, v57, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v50);
  if (!v13)
  {
    v41 = v51;

    v85 = v41;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = &v83;
    v83 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B06E3764();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6168];
    v46 = sub_1B0E45598();
    v47 = sub_1B0E453E8();

    v48 = [v56 URLString];
    if (v48)
    {
      v40 = v48;
      v35 = v48;
      v36 = sub_1B0E44AD8();
      v37 = v15;
      MEMORY[0x1E69E5920](v35);
      v38 = v36;
      v39 = v37;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v33 = v39;
    v34 = v38;
    if (v39)
    {
      v31 = v34;
      v32 = v33;
      v28 = v33;
      v29 = sub_1B0E44AC8();

      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v26 = v30;
    v27 = [v67 copyMessagesWithRemoteIDs:v47 options:7346239 inRemoteMailbox:?];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v47);
    if (v27)
    {
      v25 = v27;
      v22 = v27;
      sub_1B07F1AFC();
      v23 = sub_1B0E451B8();
      MEMORY[0x1E69E5920](v22);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v82 = v24;
    if (v24)
    {
      v84 = v82;
    }

    else
    {
      v21 = 0;
      sub_1B07F1AFC();
      v84 = sub_1B0E46A48();
      if (v82)
      {
        sub_1B039E440(&v82);
      }
    }

    v20 = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v87 = v20;

    v54 = v20;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09C0508@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0828DF4(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B09C053C(int *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1B09C059C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3840, &qword_1B0EA2E28);
  result = a2(a1, a1 + *(v3 + 48));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B09C0614()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  sub_1B0417568();
  sub_1B0A1F4D4();
  v1 = sub_1B0E45598();

  return v1;
}

uint64_t sub_1B09C06A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2(v4);
  *a3 = result;
  return result;
}

uint64_t sub_1B09C0780(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v103 = a2;
  v99 = sub_1B039BBE8;
  v104 = sub_1B0394C30;
  v105 = sub_1B0394C24;
  v107 = sub_1B039BA2C;
  v109 = sub_1B039BA88;
  v112 = sub_1B039BB94;
  v113 = sub_1B0394C24;
  v116 = sub_1B039BBA0;
  v118 = sub_1B039BC08;
  v121 = sub_1B03FB774;
  v125 = sub_1B06BCD8C;
  v127 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v131 = sub_1B0399178;
  v133 = sub_1B0398F5C;
  v135 = sub_1B0398F5C;
  v137 = sub_1B039BA94;
  v139 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v143 = sub_1B0399178;
  v145 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v149 = sub_1B03991EC;
  v151 = sub_1B0398F5C;
  v153 = sub_1B0398F5C;
  v156 = sub_1B03992D4;
  v169 = 0;
  v168 = 0;
  v83 = 0;
  v84 = 0;
  v92 = sub_1B0E439A8();
  v90 = *(v92 - 8);
  v91 = v92 - 8;
  v85 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v2 = v74 - v85;
  v86 = v74 - v85;
  v95 = _s6LoggerVMa();
  v88 = *(*(v95 - 8) + 64);
  v87 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v101);
  v96 = v74 - v87;
  v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v93 = v74 - v89;
  v169 = v4;
  v168 = v5;
  v94 = &unk_1EB737000;
  sub_1B0394784(v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v74 - v89);
  (*(v90 + 16))(v2, v93, v92);
  sub_1B039480C(v93);

  sub_1B0394784(v101 + v94[314], v96);
  v6 = (v96 + *(v95 + 20));
  v97 = *v6;
  v98 = *(v6 + 1);
  sub_1B039480C(v96);

  v102 = 24;
  v123 = 7;
  v7 = swift_allocObject();
  v8 = v98;
  v108 = v7;
  *(v7 + 16) = v97;
  *(v7 + 20) = v8;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v9 = swift_allocObject();
  v10 = v98;
  v100 = v9;
  *(v9 + 16) = v97;
  *(v9 + 20) = v10;

  v122 = 32;
  v11 = swift_allocObject();
  v12 = v100;
  v117 = v11;
  *(v11 + 16) = v99;
  *(v11 + 24) = v12;
  sub_1B0394868();
  sub_1B0394868();

  v124 = swift_allocObject();
  *(v124 + 16) = v103;
  v160 = sub_1B0E43988();
  v161 = sub_1B0E45908();
  v120 = 17;
  v128 = swift_allocObject();
  v111 = 16;
  *(v128 + 16) = 16;
  v130 = swift_allocObject();
  v115 = 4;
  *(v130 + 16) = 4;
  v13 = swift_allocObject();
  v106 = v13;
  *(v13 + 16) = v104;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v106;
  v132 = v14;
  *(v14 + 16) = v105;
  *(v14 + 24) = v15;
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = 1;
  v16 = swift_allocObject();
  v17 = v108;
  v110 = v16;
  *(v16 + 16) = v107;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v110;
  v138 = v18;
  *(v18 + 16) = v109;
  *(v18 + 24) = v19;
  v140 = swift_allocObject();
  *(v140 + 16) = v111;
  v142 = swift_allocObject();
  *(v142 + 16) = v115;
  v20 = swift_allocObject();
  v114 = v20;
  *(v20 + 16) = v112;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v22 = v114;
  v144 = v21;
  *(v21 + 16) = v113;
  *(v21 + 24) = v22;
  v146 = swift_allocObject();
  *(v146 + 16) = 0;
  v148 = swift_allocObject();
  *(v148 + 16) = v115;
  v23 = swift_allocObject();
  v24 = v117;
  v119 = v23;
  *(v23 + 16) = v116;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v119;
  v150 = v25;
  *(v25 + 16) = v118;
  *(v25 + 24) = v26;
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  v154 = swift_allocObject();
  *(v154 + 16) = 8;
  v27 = swift_allocObject();
  v28 = v124;
  v126 = v27;
  *(v27 + 16) = v121;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v126;
  v157 = v29;
  *(v29 + 16) = v125;
  *(v29 + 24) = v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v155 = sub_1B0E46A48();
  v158 = v31;

  v32 = v128;
  v33 = v158;
  *v158 = v127;
  v33[1] = v32;

  v34 = v130;
  v35 = v158;
  v158[2] = v129;
  v35[3] = v34;

  v36 = v132;
  v37 = v158;
  v158[4] = v131;
  v37[5] = v36;

  v38 = v134;
  v39 = v158;
  v158[6] = v133;
  v39[7] = v38;

  v40 = v136;
  v41 = v158;
  v158[8] = v135;
  v41[9] = v40;

  v42 = v138;
  v43 = v158;
  v158[10] = v137;
  v43[11] = v42;

  v44 = v140;
  v45 = v158;
  v158[12] = v139;
  v45[13] = v44;

  v46 = v142;
  v47 = v158;
  v158[14] = v141;
  v47[15] = v46;

  v48 = v144;
  v49 = v158;
  v158[16] = v143;
  v49[17] = v48;

  v50 = v146;
  v51 = v158;
  v158[18] = v145;
  v51[19] = v50;

  v52 = v148;
  v53 = v158;
  v158[20] = v147;
  v53[21] = v52;

  v54 = v150;
  v55 = v158;
  v158[22] = v149;
  v55[23] = v54;

  v56 = v152;
  v57 = v158;
  v158[24] = v151;
  v57[25] = v56;

  v58 = v154;
  v59 = v158;
  v158[26] = v153;
  v59[27] = v58;

  v60 = v157;
  v61 = v158;
  v158[28] = v156;
  v61[29] = v60;
  sub_1B0394964();

  if (os_log_type_enabled(v160, v161))
  {
    v62 = v83;
    v76 = sub_1B0E45D78();
    v74[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v75 = 0;
    v77 = sub_1B03949A8(0);
    v78 = sub_1B03949A8(v75);
    v79 = &v166;
    v166 = v76;
    v80 = &v165;
    v165 = v77;
    v81 = &v164;
    v164 = v78;
    sub_1B0394A48(0, &v166);
    sub_1B0394A48(5, v79);
    v162 = v127;
    v163 = v128;
    sub_1B03949FC(&v162, v79, v80, v81);
    v82 = v62;
    if (v62)
    {

      __break(1u);
    }

    else
    {
      v162 = v129;
      v163 = v130;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[15] = 0;
      v162 = v131;
      v163 = v132;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[14] = 0;
      v162 = v133;
      v163 = v134;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[13] = 0;
      v162 = v135;
      v163 = v136;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[12] = 0;
      v162 = v137;
      v163 = v138;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[11] = 0;
      v162 = v139;
      v163 = v140;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[10] = 0;
      v162 = v141;
      v163 = v142;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[9] = 0;
      v162 = v143;
      v163 = v144;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[8] = 0;
      v162 = v145;
      v163 = v146;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[7] = 0;
      v162 = v147;
      v163 = v148;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[6] = 0;
      v162 = v149;
      v163 = v150;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[5] = 0;
      v162 = v151;
      v163 = v152;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[4] = 0;
      v162 = v153;
      v163 = v154;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      v74[3] = 0;
      v162 = v156;
      v163 = v157;
      sub_1B03949FC(&v162, &v166, &v165, &v164);
      _os_log_impl(&dword_1B0389000, v160, v161, "[%.*hhx-%.*X] Temporarily growing fetch window for %lld.", v76, 0x21u);
      v74[2] = 0;
      sub_1B03998A8(v77);
      sub_1B03998A8(v78);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v160);
  (*(v90 + 8))(v86, v92);
  v74[0] = swift_allocObject();
  v167 = v103;
  v70 = sub_1B0A22770(&v167, v63, v64, v65, v66, v67, v68, v69);
  v71 = v74[0];
  *(v74[0] + 16) = v70;
  *(v71 + 24) = v72;
  v74[1] = v71 | 0x3000000000000000;
  sub_1B039C1F8(v71 | 0x3000000000000000);
}

uint64_t sub_1B09C1CDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  v2 = sub_1B0A1F3D4();
  result = sub_1B039CA88(sub_1B09C1DF8, 0, v5, &type metadata for OpaqueMailboxID, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v7);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    sub_1B03B8BD8();
    sub_1B03B095C();
    result = sub_1B0E45598();
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B09C1DF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = 0;
  v13 = *a1;
  v12 = v13;
  result = sub_1B0A22770(&v12, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  a9[1] = v10;
  return result;
}

uint64_t sub_1B09C1E44(unsigned int a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v273 = a7;
  v272 = a6;
  v271 = a5;
  v270 = a4;
  v278 = a3;
  v275 = a2;
  v274 = a1;
  v304 = 0;
  v265 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v258 = 0;
  v296 = 0;
  v294 = 0;
  v293 = 0;
  v289 = 0;
  v259 = _s6LoggerVMa();
  v261 = *(*(v259 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](0);
  v263 = (v261 + 15) & 0xFFFFFFFFFFFFFFF0;
  v260 = v110 - v263;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v262 = v110 - v263;
  MEMORY[0x1EEE9AC00](v8);
  v264 = v110 - v263;
  v266 = sub_1B0E439A8();
  v267 = *(v266 - 8);
  v268 = v267;
  v9 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v269 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_1B0E44468();
  v276 = *(v280 - 8);
  v279 = v276;
  v11 = *(v276 + 64);
  v12 = MEMORY[0x1EEE9AC00](v274);
  v281 = (v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v304 = v12;
  v303 = v14;
  v302 = v15;
  v301 = v16;
  v299 = v17;
  v300 = v18;
  v277 = v19 + 16;
  v298 = v19 + 16;
  v20 = v15;
  v21 = v278;
  v22 = v279;
  *v281 = v278;
  v23 = *MEMORY[0x1E69E8020];
  (*(v22 + 104))();
  v282 = sub_1B0E44488();
  (*(v279 + 8))(v281, v280);
  result = v282;
  if ((v282 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v258;

  v297 = v275;
  v252 = v110;
  MEMORY[0x1EEE9AC00](v110);
  v253 = &v110[-4];
  v110[-2] = sub_1B09C42D8;
  v110[-1] = 0;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
  sub_1B0A1F23C();
  v26 = sub_1B0E44F58();
  v256 = v25;
  v257 = v26;
  if (v25)
  {
    __break(1u);
    __break(1u);
    result = 0;
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v244 = v257;
  v296 = v257;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v295 = v244;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v245 = v247;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3810, &qword_1B0EA2E10);
  v249 = sub_1B0417568();
  v246 = v249;
  sub_1B0A1F2C4();
  v27 = sub_1B0E44718();
  v250 = 0;
  v251 = v27;
  v239 = v27;
  v294 = v27;
  v238 = &type metadata for MailboxRowID;
  v240 = sub_1B0E44628();
  v293 = v240;
  v291 = sub_1B0E446B8();
  v241 = 0;
  v290 = 0;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3820, &qword_1B0EA2E18);
  sub_1B0A1F34C();
  sub_1B0E44FE8();
  v243 = 0;
  v28 = v269;
  sub_1B039E440(&v291);
  v167 = v292;
  v289 = v292;
  (*(v268 + 16))(v28, v270, v266);
  sub_1B0394784(v270, v264);
  sub_1B0394784(v264, v262);
  sub_1B03F4FD0(v264, v260);
  v29 = (v262 + *(v259 + 20));
  v163 = *v29;
  v164 = *(v29 + 1);
  sub_1B039480C(v262);
  v168 = 24;
  v208 = 7;
  v30 = swift_allocObject();
  v31 = v164;
  v177 = v30;
  *(v30 + 16) = v163;
  *(v30 + 20) = v31;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v32 = swift_allocObject();
  v33 = v164;
  v165 = v32;
  *(v32 + 16) = v163;
  *(v32 + 20) = v33;

  v207 = 32;
  v34 = swift_allocObject();
  v35 = v165;
  v188 = v34;
  *(v34 + 16) = sub_1B039BBE8;
  *(v34 + 24) = v35;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v260);
  v166 = swift_allocObject();
  *(v166 + 16) = v274;

  v36 = swift_allocObject();
  v37 = v166;
  v194 = v36;
  *(v36 + 16) = sub_1B03F7AE0;
  *(v36 + 24) = v37;

  v199 = swift_allocObject();
  *(v199 + 16) = v167;
  v209 = swift_allocObject();
  *(v209 + 16) = v240;
  v237 = sub_1B0E43988();
  v169 = v237;
  v236 = sub_1B0E45908();
  v170 = v236;
  v203 = 17;
  v212 = swift_allocObject();
  v171 = v212;
  v180 = 16;
  *(v212 + 16) = 16;
  v213 = swift_allocObject();
  v172 = v213;
  v192 = 4;
  *(v213 + 16) = 4;
  v38 = swift_allocObject();
  v173 = v38;
  *(v38 + 16) = sub_1B0394C30;
  v183 = 0;
  *(v38 + 24) = 0;
  v39 = swift_allocObject();
  v40 = v173;
  v214 = v39;
  v174 = v39;
  *(v39 + 16) = sub_1B0394C24;
  *(v39 + 24) = v40;
  v215 = swift_allocObject();
  v175 = v215;
  v202 = 0;
  *(v215 + 16) = 0;
  v216 = swift_allocObject();
  v176 = v216;
  *(v216 + 16) = 1;
  v41 = swift_allocObject();
  v42 = v177;
  v178 = v41;
  *(v41 + 16) = sub_1B039BA2C;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v178;
  v217 = v43;
  v179 = v43;
  *(v43 + 16) = sub_1B039BA88;
  *(v43 + 24) = v44;
  v218 = swift_allocObject();
  v181 = v218;
  *(v218 + 16) = v180;
  v219 = swift_allocObject();
  v182 = v219;
  *(v219 + 16) = v192;
  v45 = swift_allocObject();
  v46 = v183;
  v184 = v45;
  *(v45 + 16) = sub_1B039BB94;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v184;
  v220 = v47;
  v185 = v47;
  *(v47 + 16) = sub_1B0394C24;
  *(v47 + 24) = v48;
  v221 = swift_allocObject();
  v186 = v221;
  *(v221 + 16) = v202;
  v222 = swift_allocObject();
  v187 = v222;
  *(v222 + 16) = v192;
  v49 = swift_allocObject();
  v50 = v188;
  v189 = v49;
  *(v49 + 16) = sub_1B039BBA0;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  v52 = v189;
  v223 = v51;
  v190 = v51;
  *(v51 + 16) = sub_1B039BC08;
  *(v51 + 24) = v52;
  v224 = swift_allocObject();
  v191 = v224;
  *(v224 + 16) = v202;
  v225 = swift_allocObject();
  v193 = v225;
  *(v225 + 16) = v192;
  v53 = swift_allocObject();
  v54 = v194;
  v195 = v53;
  *(v53 + 16) = sub_1B03F7B10;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v195;
  v226 = v55;
  v196 = v55;
  *(v55 + 16) = sub_1B039BC08;
  *(v55 + 24) = v56;
  v227 = swift_allocObject();
  v197 = v227;
  *(v227 + 16) = v202;
  v228 = swift_allocObject();
  v198 = v228;
  v205 = 8;
  *(v228 + 16) = 8;
  v57 = swift_allocObject();
  v58 = v199;
  v200 = v57;
  *(v57 + 16) = sub_1B03FB774;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v200;
  v229 = v59;
  v201 = v59;
  *(v59 + 16) = sub_1B03B0DF8;
  *(v59 + 24) = v60;
  v230 = swift_allocObject();
  v204 = v230;
  *(v230 + 16) = v202;
  v231 = swift_allocObject();
  v206 = v231;
  *(v231 + 16) = v205;
  v61 = swift_allocObject();
  v62 = v209;
  v210 = v61;
  *(v61 + 16) = sub_1B03FB774;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v210;
  v234 = v63;
  v211 = v63;
  *(v63 + 16) = sub_1B03B0DF8;
  *(v63 + 24) = v64;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v232 = sub_1B0E46A48();
  v233 = v65;

  v66 = v212;
  v67 = v233;
  *v233 = sub_1B0398F5C;
  v67[1] = v66;

  v68 = v213;
  v69 = v233;
  v233[2] = sub_1B0398F5C;
  v69[3] = v68;

  v70 = v214;
  v71 = v233;
  v233[4] = sub_1B0399178;
  v71[5] = v70;

  v72 = v215;
  v73 = v233;
  v233[6] = sub_1B0398F5C;
  v73[7] = v72;

  v74 = v216;
  v75 = v233;
  v233[8] = sub_1B0398F5C;
  v75[9] = v74;

  v76 = v217;
  v77 = v233;
  v233[10] = sub_1B039BA94;
  v77[11] = v76;

  v78 = v218;
  v79 = v233;
  v233[12] = sub_1B0398F5C;
  v79[13] = v78;

  v80 = v219;
  v81 = v233;
  v233[14] = sub_1B0398F5C;
  v81[15] = v80;

  v82 = v220;
  v83 = v233;
  v233[16] = sub_1B0399178;
  v83[17] = v82;

  v84 = v221;
  v85 = v233;
  v233[18] = sub_1B0398F5C;
  v85[19] = v84;

  v86 = v222;
  v87 = v233;
  v233[20] = sub_1B0398F5C;
  v87[21] = v86;

  v88 = v223;
  v89 = v233;
  v233[22] = sub_1B03991EC;
  v89[23] = v88;

  v90 = v224;
  v91 = v233;
  v233[24] = sub_1B0398F5C;
  v91[25] = v90;

  v92 = v225;
  v93 = v233;
  v233[26] = sub_1B0398F5C;
  v93[27] = v92;

  v94 = v226;
  v95 = v233;
  v233[28] = sub_1B03991EC;
  v95[29] = v94;

  v96 = v227;
  v97 = v233;
  v233[30] = sub_1B0398F5C;
  v97[31] = v96;

  v98 = v228;
  v99 = v233;
  v233[32] = sub_1B0398F5C;
  v99[33] = v98;

  v100 = v229;
  v101 = v233;
  v233[34] = sub_1B0399260;
  v101[35] = v100;

  v102 = v230;
  v103 = v233;
  v233[36] = sub_1B0398F5C;
  v103[37] = v102;

  v104 = v231;
  v105 = v233;
  v233[38] = sub_1B0398F5C;
  v105[39] = v104;

  v106 = v233;
  v107 = v234;
  v233[40] = sub_1B0399260;
  v106[41] = v107;
  sub_1B0394964();

  if (os_log_type_enabled(v237, v236))
  {
    v108 = v243;
    v157 = sub_1B0E45D78();
    v153 = v157;
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v155 = 0;
    v158 = sub_1B03949A8(0);
    v156 = v158;
    v159 = sub_1B03949A8(v155);
    v287 = v157;
    v286 = v158;
    v285 = v159;
    v160 = &v287;
    sub_1B0394A48(0, &v287);
    sub_1B0394A48(7, v160);
    v283 = sub_1B0398F5C;
    v284 = v171;
    sub_1B03949FC(&v283, v160, &v286, &v285);
    v161 = v108;
    v162 = v108;
    if (v108)
    {
      v151 = 0;

      __break(1u);
    }

    else
    {
      v283 = sub_1B0398F5C;
      v284 = v172;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v149 = 0;
      v150 = 0;
      v283 = sub_1B0399178;
      v284 = v174;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v147 = 0;
      v148 = 0;
      v283 = sub_1B0398F5C;
      v284 = v175;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v145 = 0;
      v146 = 0;
      v283 = sub_1B0398F5C;
      v284 = v176;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v143 = 0;
      v144 = 0;
      v283 = sub_1B039BA94;
      v284 = v179;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v141 = 0;
      v142 = 0;
      v283 = sub_1B0398F5C;
      v284 = v181;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v139 = 0;
      v140 = 0;
      v283 = sub_1B0398F5C;
      v284 = v182;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v137 = 0;
      v138 = 0;
      v283 = sub_1B0399178;
      v284 = v185;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v135 = 0;
      v136 = 0;
      v283 = sub_1B0398F5C;
      v284 = v186;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v133 = 0;
      v134 = 0;
      v283 = sub_1B0398F5C;
      v284 = v187;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v131 = 0;
      v132 = 0;
      v283 = sub_1B03991EC;
      v284 = v190;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v129 = 0;
      v130 = 0;
      v283 = sub_1B0398F5C;
      v284 = v191;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v127 = 0;
      v128 = 0;
      v283 = sub_1B0398F5C;
      v284 = v193;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v125 = 0;
      v126 = 0;
      v283 = sub_1B03991EC;
      v284 = v196;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v123 = 0;
      v124 = 0;
      v283 = sub_1B0398F5C;
      v284 = v197;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v121 = 0;
      v122 = 0;
      v283 = sub_1B0398F5C;
      v284 = v198;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v119 = 0;
      v120 = 0;
      v283 = sub_1B0399260;
      v284 = v201;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v117 = 0;
      v118 = 0;
      v283 = sub_1B0398F5C;
      v284 = v204;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v115 = 0;
      v116 = 0;
      v283 = sub_1B0398F5C;
      v284 = v206;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v113 = 0;
      v114 = 0;
      v283 = sub_1B0399260;
      v284 = v211;
      sub_1B03949FC(&v283, &v287, &v286, &v285);
      v111 = 0;
      v112 = 0;
      _os_log_impl(&dword_1B0389000, v169, v170, "[%.*hhx-%.*X] Sync #%u completed with %ld new UIDs in %ld mailboxes", v153, 0x31u);
      v110[2] = 0;
      sub_1B03998A8(v156);
      sub_1B03998A8(v159);
      sub_1B0E45D58();

      v152 = v111;
    }
  }

  else
  {
    v109 = v243;

    v152 = v109;
  }

  (*(v268 + 8))(v269, v266);

  v271(v239);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v110[1] = Strong;

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B09BC240();
  }

  else
  {
    sub_1B0391AD4(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1B09C42D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a1;
  v17 = a2;
  v15 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5A58(a1, a2, &v13);
  v12 = v13;
  if (v14)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
    return (*(*(v4 - 8) + 56))(a4, 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
    v5 = *(v7 + 48);
    *a4 = v12;
    sub_1B03D08AC(a3, a4 + v5);
    return (*(*(v7 - 8) + 56))(a4, 0, 1);
  }
}

uint64_t sub_1B09C442C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v7 = *a1;
  v4 = *(a1 + 1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20);
  return a2(v7, v4, &a1[*(v2 + 48)]);
}

uint64_t sub_1B09C44B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = MessageIdentifierSet.count.getter();
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5 + result;
  }

  return result;
}

uint64_t sub_1B09C4544(unsigned int a1, int a2)
{
  v317 = a1;
  v316 = a2;
  v248 = sub_1B039BBE8;
  v249 = sub_1B03F7AE0;
  v250 = sub_1B0394C30;
  v251 = sub_1B0394C24;
  v252 = sub_1B039BA2C;
  v253 = sub_1B039BA88;
  v254 = sub_1B039BB94;
  v255 = sub_1B0394C24;
  v256 = sub_1B039BBA0;
  v257 = sub_1B039BC08;
  v258 = sub_1B03F7B10;
  v259 = sub_1B039BC08;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B0399178;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B039BA94;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0398F5C;
  v268 = sub_1B0399178;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B03991EC;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B03991EC;
  v275 = sub_1B039BBE8;
  v276 = sub_1B03F7AE0;
  v277 = sub_1B0394C24;
  v278 = sub_1B039BA2C;
  v279 = sub_1B039BA88;
  v280 = sub_1B0394C24;
  v281 = sub_1B039BBA0;
  v282 = sub_1B039BC08;
  v283 = sub_1B03F7B10;
  v284 = sub_1B039BC08;
  v285 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v287 = sub_1B0399178;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B039BA94;
  v291 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v293 = sub_1B0399178;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0398F5C;
  v296 = sub_1B03991EC;
  v297 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v299 = sub_1B03991EC;
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v300 = 0;
  v308 = 0;
  v301 = sub_1B0E439A8();
  v302 = *(v301 - 8);
  v303 = v301 - 8;
  v304 = (*(v302 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v305 = v136 - v304;
  v306 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v307 = v136 - v306;
  v309 = _s6LoggerVMa();
  v310 = (*(*(v309 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v308);
  v311 = v136 - v310;
  v312 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v313 = v136 - v312;
  v314 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v315 = v136 - v314;
  v322 = sub_1B0E44468();
  v320 = *(v322 - 8);
  v321 = v322 - 8;
  v318 = (*(v320 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v317);
  v323 = (v136 - v318);
  v337 = v9;
  v336 = v10;
  v335 = v2;

  v319 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v319);
  v11 = v320;
  *v323 = v319;
  v12 = *MEMORY[0x1E69E8020];
  (*(v11 + 104))();
  v324 = sub_1B0E44488();
  (*(v320 + 8))(v323, v322);
  result = v324;
  if (v324)
  {

    if (!v316 || v316 == 1)
    {
      v14 = v307;
      v208 = &unk_1EB737000;
      sub_1B0394784(v247 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v315);
      (*(v302 + 16))(v14, v315, v301);
      sub_1B039480C(v315);

      sub_1B0394784(v247 + v208[314], v313);
      v15 = (v313 + *(v309 + 20));
      v210 = *v15;
      v211 = *(v15 + 1);
      sub_1B039480C(v313);

      v209 = 24;
      v224 = 7;
      v16 = swift_allocObject();
      v17 = v211;
      v215 = v16;
      *(v16 + 16) = v210;
      *(v16 + 20) = v17;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v18 = swift_allocObject();
      v19 = v211;
      v212 = v18;
      *(v18 + 16) = v210;
      *(v18 + 20) = v19;

      v223 = 32;
      v20 = swift_allocObject();
      v21 = v212;
      v219 = v20;
      *(v20 + 16) = v275;
      *(v20 + 24) = v21;
      sub_1B0394868();
      sub_1B0394868();

      v213 = swift_allocObject();
      *(v213 + 16) = v317;

      v22 = swift_allocObject();
      v23 = v213;
      v225 = v22;
      *(v22 + 16) = v276;
      *(v22 + 24) = v23;

      v245 = sub_1B0E43988();
      v246 = sub_1B0E45908();
      v221 = 17;
      v227 = swift_allocObject();
      v217 = 16;
      *(v227 + 16) = 16;
      v228 = swift_allocObject();
      v222 = 4;
      *(v228 + 16) = 4;
      v24 = swift_allocObject();
      v214 = v24;
      *(v24 + 16) = v250;
      *(v24 + 24) = 0;
      v25 = swift_allocObject();
      v26 = v214;
      v229 = v25;
      *(v25 + 16) = v277;
      *(v25 + 24) = v26;
      v230 = swift_allocObject();
      *(v230 + 16) = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = 1;
      v27 = swift_allocObject();
      v28 = v215;
      v216 = v27;
      *(v27 + 16) = v278;
      *(v27 + 24) = v28;
      v29 = swift_allocObject();
      v30 = v216;
      v232 = v29;
      *(v29 + 16) = v279;
      *(v29 + 24) = v30;
      v233 = swift_allocObject();
      *(v233 + 16) = v217;
      v234 = swift_allocObject();
      *(v234 + 16) = v222;
      v31 = swift_allocObject();
      v218 = v31;
      *(v31 + 16) = v254;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      v33 = v218;
      v235 = v32;
      *(v32 + 16) = v280;
      *(v32 + 24) = v33;
      v236 = swift_allocObject();
      *(v236 + 16) = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v222;
      v34 = swift_allocObject();
      v35 = v219;
      v220 = v34;
      *(v34 + 16) = v281;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v220;
      v238 = v36;
      *(v36 + 16) = v282;
      *(v36 + 24) = v37;
      v239 = swift_allocObject();
      *(v239 + 16) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = v222;
      v38 = swift_allocObject();
      v39 = v225;
      v226 = v38;
      *(v38 + 16) = v283;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v226;
      v242 = v40;
      *(v40 + 16) = v284;
      *(v40 + 24) = v41;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v241 = sub_1B0E46A48();
      v243 = v42;

      v43 = v227;
      v44 = v243;
      *v243 = v285;
      v44[1] = v43;

      v45 = v228;
      v46 = v243;
      v243[2] = v286;
      v46[3] = v45;

      v47 = v229;
      v48 = v243;
      v243[4] = v287;
      v48[5] = v47;

      v49 = v230;
      v50 = v243;
      v243[6] = v288;
      v50[7] = v49;

      v51 = v231;
      v52 = v243;
      v243[8] = v289;
      v52[9] = v51;

      v53 = v232;
      v54 = v243;
      v243[10] = v290;
      v54[11] = v53;

      v55 = v233;
      v56 = v243;
      v243[12] = v291;
      v56[13] = v55;

      v57 = v234;
      v58 = v243;
      v243[14] = v292;
      v58[15] = v57;

      v59 = v235;
      v60 = v243;
      v243[16] = v293;
      v60[17] = v59;

      v61 = v236;
      v62 = v243;
      v243[18] = v294;
      v62[19] = v61;

      v63 = v237;
      v64 = v243;
      v243[20] = v295;
      v64[21] = v63;

      v65 = v238;
      v66 = v243;
      v243[22] = v296;
      v66[23] = v65;

      v67 = v239;
      v68 = v243;
      v243[24] = v297;
      v68[25] = v67;

      v69 = v240;
      v70 = v243;
      v243[26] = v298;
      v70[27] = v69;

      v71 = v242;
      v72 = v243;
      v243[28] = v299;
      v72[29] = v71;
      sub_1B0394964();

      if (os_log_type_enabled(v245, v246))
      {
        v73 = v300;
        v201 = sub_1B0E45D78();
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v200 = 0;
        v202 = sub_1B03949A8(0);
        v203 = sub_1B03949A8(v200);
        v204 = &v329;
        v329 = v201;
        v205 = &v328;
        v328 = v202;
        v206 = &v327;
        v327 = v203;
        sub_1B0394A48(0, &v329);
        sub_1B0394A48(5, v204);
        v325 = v285;
        v326 = v227;
        sub_1B03949FC(&v325, v204, v205, v206);
        v207 = v73;
        if (v73)
        {

          __break(1u);
        }

        else
        {
          v325 = v286;
          v326 = v228;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v198 = 0;
          v325 = v287;
          v326 = v229;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v197 = 0;
          v325 = v288;
          v326 = v230;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v196 = 0;
          v325 = v289;
          v326 = v231;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v195 = 0;
          v325 = v290;
          v326 = v232;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v194 = 0;
          v325 = v291;
          v326 = v233;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v193 = 0;
          v325 = v292;
          v326 = v234;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v192 = 0;
          v325 = v293;
          v326 = v235;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v191 = 0;
          v325 = v294;
          v326 = v236;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v190 = 0;
          v325 = v295;
          v326 = v237;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v189 = 0;
          v325 = v296;
          v326 = v238;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v188 = 0;
          v325 = v297;
          v326 = v239;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v187 = 0;
          v325 = v298;
          v326 = v240;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          v186 = 0;
          v325 = v299;
          v326 = v242;
          sub_1B03949FC(&v325, &v329, &v328, &v327);
          _os_log_impl(&dword_1B0389000, v245, v246, "[%.*hhx-%.*X] Retracting sync #%u", v201, 0x1Du);
          v185 = 0;
          sub_1B03998A8(v202);
          sub_1B03998A8(v203);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v245);
      (*(v302 + 8))(v307, v301);
      v74 = swift_allocObject();
      *(v74 + 16) = v317;
      *(v74 + 20) = 0;
      v184 = v74 | 0x1000000000000004;
      sub_1B039C1F8(v74 | 0x1000000000000004);
    }

    else
    {
      v75 = v305;
      v145 = &unk_1EB737000;
      sub_1B0394784(v247 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v311);
      (*(v302 + 16))(v75, v311, v301);
      sub_1B039480C(v311);

      sub_1B0394784(v247 + v145[314], v313);
      v76 = (v313 + *(v309 + 20));
      v147 = *v76;
      v148 = *(v76 + 1);
      sub_1B039480C(v313);

      v146 = 24;
      v161 = 7;
      v77 = swift_allocObject();
      v78 = v148;
      v152 = v77;
      *(v77 + 16) = v147;
      *(v77 + 20) = v78;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = swift_allocObject();
      v80 = v148;
      v149 = v79;
      *(v79 + 16) = v147;
      *(v79 + 20) = v80;

      v160 = 32;
      v81 = swift_allocObject();
      v82 = v149;
      v156 = v81;
      *(v81 + 16) = v248;
      *(v81 + 24) = v82;
      sub_1B0394868();
      sub_1B0394868();

      v150 = swift_allocObject();
      *(v150 + 16) = v317;

      v83 = swift_allocObject();
      v84 = v150;
      v162 = v83;
      *(v83 + 16) = v249;
      *(v83 + 24) = v84;

      v182 = sub_1B0E43988();
      v183 = sub_1B0E45908();
      v158 = 17;
      v164 = swift_allocObject();
      v154 = 16;
      *(v164 + 16) = 16;
      v165 = swift_allocObject();
      v159 = 4;
      *(v165 + 16) = 4;
      v85 = swift_allocObject();
      v151 = v85;
      *(v85 + 16) = v250;
      *(v85 + 24) = 0;
      v86 = swift_allocObject();
      v87 = v151;
      v166 = v86;
      *(v86 + 16) = v251;
      *(v86 + 24) = v87;
      v167 = swift_allocObject();
      *(v167 + 16) = 0;
      v168 = swift_allocObject();
      *(v168 + 16) = 1;
      v88 = swift_allocObject();
      v89 = v152;
      v153 = v88;
      *(v88 + 16) = v252;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v153;
      v169 = v90;
      *(v90 + 16) = v253;
      *(v90 + 24) = v91;
      v170 = swift_allocObject();
      *(v170 + 16) = v154;
      v171 = swift_allocObject();
      *(v171 + 16) = v159;
      v92 = swift_allocObject();
      v155 = v92;
      *(v92 + 16) = v254;
      *(v92 + 24) = 0;
      v93 = swift_allocObject();
      v94 = v155;
      v172 = v93;
      *(v93 + 16) = v255;
      *(v93 + 24) = v94;
      v173 = swift_allocObject();
      *(v173 + 16) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v159;
      v95 = swift_allocObject();
      v96 = v156;
      v157 = v95;
      *(v95 + 16) = v256;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v157;
      v175 = v97;
      *(v97 + 16) = v257;
      *(v97 + 24) = v98;
      v176 = swift_allocObject();
      *(v176 + 16) = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v159;
      v99 = swift_allocObject();
      v100 = v162;
      v163 = v99;
      *(v99 + 16) = v258;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v163;
      v179 = v101;
      *(v101 + 16) = v259;
      *(v101 + 24) = v102;
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v178 = sub_1B0E46A48();
      v180 = v103;

      v104 = v164;
      v105 = v180;
      *v180 = v260;
      v105[1] = v104;

      v106 = v165;
      v107 = v180;
      v180[2] = v261;
      v107[3] = v106;

      v108 = v166;
      v109 = v180;
      v180[4] = v262;
      v109[5] = v108;

      v110 = v167;
      v111 = v180;
      v180[6] = v263;
      v111[7] = v110;

      v112 = v168;
      v113 = v180;
      v180[8] = v264;
      v113[9] = v112;

      v114 = v169;
      v115 = v180;
      v180[10] = v265;
      v115[11] = v114;

      v116 = v170;
      v117 = v180;
      v180[12] = v266;
      v117[13] = v116;

      v118 = v171;
      v119 = v180;
      v180[14] = v267;
      v119[15] = v118;

      v120 = v172;
      v121 = v180;
      v180[16] = v268;
      v121[17] = v120;

      v122 = v173;
      v123 = v180;
      v180[18] = v269;
      v123[19] = v122;

      v124 = v174;
      v125 = v180;
      v180[20] = v270;
      v125[21] = v124;

      v126 = v175;
      v127 = v180;
      v180[22] = v271;
      v127[23] = v126;

      v128 = v176;
      v129 = v180;
      v180[24] = v272;
      v129[25] = v128;

      v130 = v177;
      v131 = v180;
      v180[26] = v273;
      v131[27] = v130;

      v132 = v179;
      v133 = v180;
      v180[28] = v274;
      v133[29] = v132;
      sub_1B0394964();

      if (os_log_type_enabled(v182, v183))
      {
        v134 = v300;
        v138 = sub_1B0E45D78();
        v136[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v137 = 0;
        v139 = sub_1B03949A8(0);
        v140 = sub_1B03949A8(v137);
        v141 = &v334;
        v334 = v138;
        v142 = &v333;
        v333 = v139;
        v143 = &v332;
        v332 = v140;
        sub_1B0394A48(0, &v334);
        sub_1B0394A48(5, v141);
        v330 = v260;
        v331 = v164;
        sub_1B03949FC(&v330, v141, v142, v143);
        v144 = v134;
        if (v134)
        {

          __break(1u);
        }

        else
        {
          v330 = v261;
          v331 = v165;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[15] = 0;
          v330 = v262;
          v331 = v166;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[14] = 0;
          v330 = v263;
          v331 = v167;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[13] = 0;
          v330 = v264;
          v331 = v168;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[12] = 0;
          v330 = v265;
          v331 = v169;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[11] = 0;
          v330 = v266;
          v331 = v170;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[10] = 0;
          v330 = v267;
          v331 = v171;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[9] = 0;
          v330 = v268;
          v331 = v172;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[8] = 0;
          v330 = v269;
          v331 = v173;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[7] = 0;
          v330 = v270;
          v331 = v174;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[6] = 0;
          v330 = v271;
          v331 = v175;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[5] = 0;
          v330 = v272;
          v331 = v176;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[4] = 0;
          v330 = v273;
          v331 = v177;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          v136[3] = 0;
          v330 = v274;
          v331 = v179;
          sub_1B03949FC(&v330, &v334, &v333, &v332);
          _os_log_impl(&dword_1B0389000, v182, v183, "[%.*hhx-%.*X] Retracting stalled sync #%u", v138, 0x1Du);
          v136[2] = 0;
          sub_1B03998A8(v139);
          sub_1B03998A8(v140);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v182);
      (*(v302 + 8))(v305, v301);
      v135 = swift_allocObject();
      *(v135 + 16) = v317;
      *(v135 + 20) = 1;
      v136[1] = v135 | 0x1000000000000004;
      sub_1B039C1F8(v135 | 0x1000000000000004);
    }

    return sub_1B09CC620(v317);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09C73BC()
{
  v143 = sub_1B039BBE8;
  v144 = sub_1B0874B28;
  v145 = sub_1B0394C30;
  v146 = sub_1B0394C24;
  v147 = sub_1B039BA2C;
  v148 = sub_1B039BA88;
  v149 = sub_1B039BB94;
  v150 = sub_1B0394C24;
  v151 = sub_1B039BBA0;
  v152 = sub_1B039BC08;
  v153 = sub_1B0A1AE80;
  v154 = sub_1B039BCF8;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0399178;
  v158 = sub_1B0398F5C;
  v159 = sub_1B0398F5C;
  v160 = sub_1B039BA94;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0399178;
  v164 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v166 = sub_1B03991EC;
  v167 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v169 = sub_1B039BCEC;
  v201 = 0;
  v199 = 0;
  v198[0] = 0;
  v198[1] = 0;
  v194 = 0;
  v170 = 0;
  v176 = 0;
  v171 = sub_1B0E439A8();
  v172 = *(v171 - 8);
  v173 = v171 - 8;
  v174 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v175 = v67 - v174;
  v177 = _s6LoggerVMa();
  v178 = (*(*(v177 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v176);
  v179 = v67 - v178;
  v180 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v181 = v67 - v180;
  v186 = sub_1B0E44468();
  v184 = *(v186 - 8);
  v185 = v186 - 8;
  v182 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v186);
  v187 = (v67 - v182);
  v201 = v0;

  v183 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v183);
  v3 = v184;
  *v187 = v183;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v188 = sub_1B0E44488();
  (*(v184 + 8))(v187, v186);
  result = v188;
  if (v188)
  {

    v134 = v142 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
    v135 = &v200;
    swift_beginAccess();
    v137 = *v134;
    v136 = *(v134 + 8);
    v138 = *(v134 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v139 = sub_1B0A22DE0(v137, v136, v138);
    v199 = v139;

    v198[2] = v139;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    v141 = sub_1B0A1ADF8();
    if (sub_1B0E45748())
    {
    }

    else
    {
      v6 = v175;
      v95 = &unk_1EB737000;
      sub_1B0394784(v142 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v181);
      (*(v172 + 16))(v6, v181, v171);
      sub_1B039480C(v181);

      sub_1B0394784(v142 + v95[314], v179);
      v7 = (v179 + *(v177 + 20));
      v96 = *v7;
      v97 = *(v7 + 1);
      sub_1B039480C(v179);

      v99 = 24;
      v111 = 7;
      v8 = swift_allocObject();
      v9 = v97;
      v102 = v8;
      *(v8 + 16) = v96;
      *(v8 + 20) = v9;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v10 = swift_allocObject();
      v11 = v97;
      v98 = v10;
      *(v10 + 16) = v96;
      *(v10 + 20) = v11;

      v110 = 32;
      v12 = swift_allocObject();
      v13 = v98;
      v107 = v12;
      *(v12 + 16) = v143;
      *(v12 + 24) = v13;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v100 = swift_allocObject();
      *(v100 + 16) = v139;

      v14 = swift_allocObject();
      v15 = v100;
      v112 = v14;
      *(v14 + 16) = v144;
      *(v14 + 24) = v15;

      v132 = sub_1B0E43988();
      v133 = sub_1B0E458E8();
      v109 = 17;
      v114 = swift_allocObject();
      v104 = 16;
      *(v114 + 16) = 16;
      v115 = swift_allocObject();
      v106 = 4;
      *(v115 + 16) = 4;
      v16 = swift_allocObject();
      v101 = v16;
      *(v16 + 16) = v145;
      *(v16 + 24) = 0;
      v17 = swift_allocObject();
      v18 = v101;
      v116 = v17;
      *(v17 + 16) = v146;
      *(v17 + 24) = v18;
      v117 = swift_allocObject();
      *(v117 + 16) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = 1;
      v19 = swift_allocObject();
      v20 = v102;
      v103 = v19;
      *(v19 + 16) = v147;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v103;
      v119 = v21;
      *(v21 + 16) = v148;
      *(v21 + 24) = v22;
      v120 = swift_allocObject();
      *(v120 + 16) = v104;
      v121 = swift_allocObject();
      *(v121 + 16) = v106;
      v23 = swift_allocObject();
      v105 = v23;
      *(v23 + 16) = v149;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v105;
      v122 = v24;
      *(v24 + 16) = v150;
      *(v24 + 24) = v25;
      v123 = swift_allocObject();
      *(v123 + 16) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v106;
      v26 = swift_allocObject();
      v27 = v107;
      v108 = v26;
      *(v26 + 16) = v151;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v108;
      v125 = v28;
      *(v28 + 16) = v152;
      *(v28 + 24) = v29;
      v126 = swift_allocObject();
      *(v126 + 16) = 34;
      v127 = swift_allocObject();
      *(v127 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v112;
      v113 = v30;
      *(v30 + 16) = v153;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v113;
      v129 = v32;
      *(v32 + 16) = v154;
      *(v32 + 24) = v33;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v128 = sub_1B0E46A48();
      v130 = v34;

      v35 = v114;
      v36 = v130;
      *v130 = v155;
      v36[1] = v35;

      v37 = v115;
      v38 = v130;
      v130[2] = v156;
      v38[3] = v37;

      v39 = v116;
      v40 = v130;
      v130[4] = v157;
      v40[5] = v39;

      v41 = v117;
      v42 = v130;
      v130[6] = v158;
      v42[7] = v41;

      v43 = v118;
      v44 = v130;
      v130[8] = v159;
      v44[9] = v43;

      v45 = v119;
      v46 = v130;
      v130[10] = v160;
      v46[11] = v45;

      v47 = v120;
      v48 = v130;
      v130[12] = v161;
      v48[13] = v47;

      v49 = v121;
      v50 = v130;
      v130[14] = v162;
      v50[15] = v49;

      v51 = v122;
      v52 = v130;
      v130[16] = v163;
      v52[17] = v51;

      v53 = v123;
      v54 = v130;
      v130[18] = v164;
      v54[19] = v53;

      v55 = v124;
      v56 = v130;
      v130[20] = v165;
      v56[21] = v55;

      v57 = v125;
      v58 = v130;
      v130[22] = v166;
      v58[23] = v57;

      v59 = v126;
      v60 = v130;
      v130[24] = v167;
      v60[25] = v59;

      v61 = v127;
      v62 = v130;
      v130[26] = v168;
      v62[27] = v61;

      v63 = v129;
      v64 = v130;
      v130[28] = v169;
      v64[29] = v63;
      sub_1B0394964();

      if (os_log_type_enabled(v132, v133))
      {
        v65 = v170;
        v88 = sub_1B0E45D78();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v89 = sub_1B03949A8(0);
        v90 = sub_1B03949A8(1);
        v91 = &v193;
        v193 = v88;
        v92 = &v192;
        v192 = v89;
        v93 = &v191;
        v191 = v90;
        sub_1B0394A48(2, &v193);
        sub_1B0394A48(5, v91);
        v189 = v155;
        v190 = v114;
        sub_1B03949FC(&v189, v91, v92, v93);
        v94 = v65;
        if (v65)
        {

          __break(1u);
        }

        else
        {
          v189 = v156;
          v190 = v115;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v85 = 0;
          v189 = v157;
          v190 = v116;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v84 = 0;
          v189 = v158;
          v190 = v117;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v83 = 0;
          v189 = v159;
          v190 = v118;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v82 = 0;
          v189 = v160;
          v190 = v119;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v81 = 0;
          v189 = v161;
          v190 = v120;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v80 = 0;
          v189 = v162;
          v190 = v121;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v79 = 0;
          v189 = v163;
          v190 = v122;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v78 = 0;
          v189 = v164;
          v190 = v123;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v77 = 0;
          v189 = v165;
          v190 = v124;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v76 = 0;
          v189 = v166;
          v190 = v125;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v75 = 0;
          v189 = v167;
          v190 = v126;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v74 = 0;
          v189 = v168;
          v190 = v127;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v73 = 0;
          v189 = v169;
          v190 = v129;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v72 = 0;
          _os_log_impl(&dword_1B0389000, v132, v133, "[%.*hhx-%.*X] Server is unavailable. Retracting syncs %{public}s.", v88, 0x21u);
          sub_1B03998A8(v89);
          sub_1B03998A8(v90);
          sub_1B0E45D58();

          v86 = v72;
        }
      }

      else
      {
        v66 = v170;

        v86 = v66;
      }

      v70 = v86;
      MEMORY[0x1E69E5920](v132);
      (*(v172 + 8))(v175, v171);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v197 = v139;
      sub_1B0E45798();
      for (i = v70; ; i = v68)
      {
        v68 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3538, &qword_1B0EA1FC8);
        sub_1B0E46518();
        v69 = v195;
        if (v196)
        {
          break;
        }

        v67[1] = v69;
        v194 = v69;
        sub_1B09C4544(v69, 1);
      }

      sub_1B039E440(v198);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09C8DD4(uint64_t a1)
{
  v393 = a1;
  v376 = 0;
  v311 = sub_1B039BBE8;
  v312 = sub_1B0874B28;
  v313 = sub_1B0394C30;
  v314 = sub_1B0394C24;
  v315 = sub_1B039BA2C;
  v316 = sub_1B039BA88;
  v317 = sub_1B039BB94;
  v318 = sub_1B0394C24;
  v319 = sub_1B039BBA0;
  v320 = sub_1B039BC08;
  v321 = sub_1B0A1AEE8;
  v322 = sub_1B039BCF8;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0399178;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B039BA94;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B03991EC;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0398F5C;
  v337 = sub_1B039BCEC;
  v338 = sub_1B039BBE8;
  v339 = sub_1B0A1AFE0;
  v340 = sub_1B0394C24;
  v341 = sub_1B039BA2C;
  v342 = sub_1B039BA88;
  v343 = sub_1B0394C24;
  v344 = sub_1B039BBA0;
  v345 = sub_1B039BC08;
  v346 = sub_1B0A1AFD8;
  v347 = sub_1B03B0DF8;
  v348 = sub_1B0A1AE80;
  v349 = sub_1B039BCF8;
  v350 = sub_1B0A1AFE8;
  v351 = sub_1B03B0DF8;
  v352 = sub_1B0398F5C;
  v353 = sub_1B0398F5C;
  v354 = sub_1B0399178;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0398F5C;
  v357 = sub_1B039BA94;
  v358 = sub_1B0398F5C;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0399178;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0398F5C;
  v363 = sub_1B03991EC;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0399260;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0398F5C;
  v369 = sub_1B039BCEC;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0399260;
  v373 = "Fatal error";
  v374 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v375 = "Message/PersistenceAdaptor.swift";
  v418 = 0;
  v417 = 0;
  memset(__b, 0, sizeof(__b));
  v377 = 0;
  v406 = 0;
  v385 = 0;
  v378 = sub_1B0E439A8();
  v379 = *(v378 - 8);
  v380 = v378 - 8;
  v381 = (v379[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v382 = &v153 - v381;
  v383 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v384 = &v153 - v383;
  v386 = _s6LoggerVMa();
  v387 = (*(*(v386 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v385);
  v388 = &v153 - v387;
  v389 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v390 = &v153 - v389;
  v391 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v392 = &v153 - v391;
  v398 = sub_1B0E44468();
  v396 = *(v398 - 8);
  v397 = v398 - 8;
  v394 = (*(v396 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v393);
  v399 = (&v153 - v394);
  v418 = v8;
  v417 = v1;

  v395 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v395);
  v9 = v396;
  *v399 = v395;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v400 = sub_1B0E44488();
  (*(v396 + 8))(v399, v398);
  result = v400;
  if (v400)
  {
    v12 = v384;

    v271 = &unk_1EB737000;
    sub_1B0394784(v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v392);
    v269 = v379[2];
    v270 = v379 + 2;
    v269(v12, v392, v378);
    sub_1B039480C(v392);

    sub_1B0394784(v310 + v271[314], v390);
    v13 = (v390 + *(v386 + 20));
    v272 = *v13;
    v273 = *(v13 + 1);
    sub_1B039480C(v390);

    v275 = 24;
    v287 = 7;
    v14 = swift_allocObject();
    v15 = v273;
    v278 = v14;
    *(v14 + 16) = v272;
    *(v14 + 20) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = swift_allocObject();
    v17 = v273;
    v274 = v16;
    *(v16 + 16) = v272;
    *(v16 + 20) = v17;

    v286 = 32;
    v18 = swift_allocObject();
    v19 = v274;
    v283 = v18;
    *(v18 + 16) = v311;
    *(v18 + 24) = v19;
    sub_1B0394868();
    sub_1B0394868();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v276 = swift_allocObject();
    *(v276 + 16) = v393;

    v20 = swift_allocObject();
    v21 = v276;
    v288 = v20;
    *(v20 + 16) = v312;
    *(v20 + 24) = v21;

    v308 = sub_1B0E43988();
    v309 = sub_1B0E45908();
    v285 = 17;
    v290 = swift_allocObject();
    v280 = 16;
    *(v290 + 16) = 16;
    v291 = swift_allocObject();
    v282 = 4;
    *(v291 + 16) = 4;
    v22 = swift_allocObject();
    v277 = v22;
    *(v22 + 16) = v313;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    v24 = v277;
    v292 = v23;
    *(v23 + 16) = v314;
    *(v23 + 24) = v24;
    v293 = swift_allocObject();
    *(v293 + 16) = 0;
    v294 = swift_allocObject();
    *(v294 + 16) = 1;
    v25 = swift_allocObject();
    v26 = v278;
    v279 = v25;
    *(v25 + 16) = v315;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v279;
    v295 = v27;
    *(v27 + 16) = v316;
    *(v27 + 24) = v28;
    v296 = swift_allocObject();
    *(v296 + 16) = v280;
    v297 = swift_allocObject();
    *(v297 + 16) = v282;
    v29 = swift_allocObject();
    v281 = v29;
    *(v29 + 16) = v317;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v281;
    v298 = v30;
    *(v30 + 16) = v318;
    *(v30 + 24) = v31;
    v299 = swift_allocObject();
    *(v299 + 16) = 0;
    v300 = swift_allocObject();
    *(v300 + 16) = v282;
    v32 = swift_allocObject();
    v33 = v283;
    v284 = v32;
    *(v32 + 16) = v319;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v284;
    v301 = v34;
    *(v34 + 16) = v320;
    *(v34 + 24) = v35;
    v302 = swift_allocObject();
    *(v302 + 16) = 34;
    v303 = swift_allocObject();
    *(v303 + 16) = 8;
    v36 = swift_allocObject();
    v37 = v288;
    v289 = v36;
    *(v36 + 16) = v321;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v289;
    v305 = v38;
    *(v38 + 16) = v322;
    *(v38 + 24) = v39;
    v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v304 = sub_1B0E46A48();
    v306 = v40;

    v41 = v290;
    v42 = v306;
    *v306 = v323;
    v42[1] = v41;

    v43 = v291;
    v44 = v306;
    v306[2] = v324;
    v44[3] = v43;

    v45 = v292;
    v46 = v306;
    v306[4] = v325;
    v46[5] = v45;

    v47 = v293;
    v48 = v306;
    v306[6] = v326;
    v48[7] = v47;

    v49 = v294;
    v50 = v306;
    v306[8] = v327;
    v50[9] = v49;

    v51 = v295;
    v52 = v306;
    v306[10] = v328;
    v52[11] = v51;

    v53 = v296;
    v54 = v306;
    v306[12] = v329;
    v54[13] = v53;

    v55 = v297;
    v56 = v306;
    v306[14] = v330;
    v56[15] = v55;

    v57 = v298;
    v58 = v306;
    v306[16] = v331;
    v58[17] = v57;

    v59 = v299;
    v60 = v306;
    v306[18] = v332;
    v60[19] = v59;

    v61 = v300;
    v62 = v306;
    v306[20] = v333;
    v62[21] = v61;

    v63 = v301;
    v64 = v306;
    v306[22] = v334;
    v64[23] = v63;

    v65 = v302;
    v66 = v306;
    v306[24] = v335;
    v66[25] = v65;

    v67 = v303;
    v68 = v306;
    v306[26] = v336;
    v68[27] = v67;

    v69 = v305;
    v70 = v306;
    v306[28] = v337;
    v70[29] = v69;
    sub_1B0394964();

    if (os_log_type_enabled(v308, v309))
    {
      v71 = v377;
      v262 = sub_1B0E45D78();
      v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v263 = sub_1B03949A8(0);
      v264 = sub_1B03949A8(1);
      v265 = &v405;
      v405 = v262;
      v266 = &v404;
      v404 = v263;
      v267 = &v403;
      v403 = v264;
      sub_1B0394A48(2, &v405);
      sub_1B0394A48(5, v265);
      v401 = v323;
      v402 = v290;
      sub_1B03949FC(&v401, v265, v266, v267);
      v268 = v71;
      if (v71)
      {

        __break(1u);
      }

      else
      {
        v401 = v324;
        v402 = v291;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v259 = 0;
        v401 = v325;
        v402 = v292;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v258 = 0;
        v401 = v326;
        v402 = v293;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v257 = 0;
        v401 = v327;
        v402 = v294;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v256 = 0;
        v401 = v328;
        v402 = v295;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v255 = 0;
        v401 = v329;
        v402 = v296;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v254 = 0;
        v401 = v330;
        v402 = v297;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v253 = 0;
        v401 = v331;
        v402 = v298;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v252 = 0;
        v401 = v332;
        v402 = v299;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v251 = 0;
        v401 = v333;
        v402 = v300;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v250 = 0;
        v401 = v334;
        v402 = v301;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v249 = 0;
        v401 = v335;
        v402 = v302;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v248 = 0;
        v401 = v336;
        v402 = v303;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v247 = 0;
        v401 = v337;
        v402 = v305;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v246 = 0;
        _os_log_impl(&dword_1B0389000, v308, v309, "[%.*hhx-%.*X] Completed sync request(s) %{public}s.", v262, 0x21u);
        sub_1B03998A8(v263);
        sub_1B03998A8(v264);
        sub_1B0E45D58();

        v260 = v246;
      }
    }

    else
    {
      v72 = v377;

      v260 = v72;
    }

    v244 = v260;
    MEMORY[0x1E69E5920](v308);
    v241 = v379[1];
    v242 = v379 + 1;
    v241(v384, v378);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03ABAA0();
    v243 = &v419;
    sub_1B0E45448();
    memcpy(__b, v243, sizeof(__b));
    for (i = v244; ; i = v239)
    {
      v239 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3530, &qword_1B0EA1FB8);
      sub_1B0E45508();
      v240 = v414;
      if (v415)
      {
        break;
      }

      v238 = v240;
      v406 = v240;
      sub_1B09CC620(v240);
    }

    v73 = v382;
    sub_1B06B91B0(__b);
    v191 = &unk_1EB737000;
    sub_1B0394784(v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v388);
    v269(v73, v388, v378);
    sub_1B039480C(v388);

    sub_1B0394784(v310 + v191[314], v390);
    v74 = (v390 + *(v386 + 20));
    v192 = *v74;
    v193 = *(v74 + 1);
    sub_1B039480C(v390);

    v195 = 24;
    v210 = 7;
    v75 = swift_allocObject();
    v76 = v193;
    v197 = v75;
    *(v75 + 16) = v192;
    *(v75 + 20) = v76;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v77 = swift_allocObject();
    v78 = v193;
    v194 = v77;
    *(v77 + 16) = v192;
    *(v77 + 20) = v78;

    v209 = 32;
    v79 = swift_allocObject();
    v80 = v194;
    v202 = v79;
    *(v79 + 16) = v338;
    *(v79 + 24) = v80;
    sub_1B0394868();
    sub_1B0394868();

    v81 = swift_allocObject();
    v82 = v310;
    v205 = v81;
    *(v81 + 16) = v339;
    *(v81 + 24) = v82;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v211 = swift_allocObject();
    *(v211 + 16) = v393;
    v236 = sub_1B0E43988();
    v237 = sub_1B0E45908();
    v207 = 17;
    v213 = swift_allocObject();
    v199 = 16;
    *(v213 + 16) = 16;
    v214 = swift_allocObject();
    v201 = 4;
    *(v214 + 16) = 4;
    v83 = swift_allocObject();
    v196 = v83;
    *(v83 + 16) = v313;
    *(v83 + 24) = 0;
    v84 = swift_allocObject();
    v85 = v196;
    v215 = v84;
    *(v84 + 16) = v340;
    *(v84 + 24) = v85;
    v216 = swift_allocObject();
    *(v216 + 16) = 0;
    v217 = swift_allocObject();
    *(v217 + 16) = 1;
    v86 = swift_allocObject();
    v87 = v197;
    v198 = v86;
    *(v86 + 16) = v341;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v198;
    v218 = v88;
    *(v88 + 16) = v342;
    *(v88 + 24) = v89;
    v219 = swift_allocObject();
    *(v219 + 16) = v199;
    v220 = swift_allocObject();
    *(v220 + 16) = v201;
    v90 = swift_allocObject();
    v200 = v90;
    *(v90 + 16) = v317;
    *(v90 + 24) = 0;
    v91 = swift_allocObject();
    v92 = v200;
    v221 = v91;
    *(v91 + 16) = v343;
    *(v91 + 24) = v92;
    v222 = swift_allocObject();
    *(v222 + 16) = 0;
    v223 = swift_allocObject();
    *(v223 + 16) = v201;
    v93 = swift_allocObject();
    v94 = v202;
    v203 = v93;
    *(v93 + 16) = v344;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v203;
    v224 = v95;
    *(v95 + 16) = v345;
    *(v95 + 24) = v96;
    v225 = swift_allocObject();
    *(v225 + 16) = 0;
    v226 = swift_allocObject();
    v208 = 8;
    *(v226 + 16) = 8;
    v97 = swift_allocObject();
    v98 = v310;
    v204 = v97;
    *(v97 + 16) = v346;
    *(v97 + 24) = v98;
    v99 = swift_allocObject();
    v100 = v204;
    v227 = v99;
    *(v99 + 16) = v347;
    *(v99 + 24) = v100;
    v228 = swift_allocObject();
    *(v228 + 16) = 34;
    v229 = swift_allocObject();
    *(v229 + 16) = v208;
    v101 = swift_allocObject();
    v102 = v205;
    v206 = v101;
    *(v101 + 16) = v348;
    *(v101 + 24) = v102;
    v103 = swift_allocObject();
    v104 = v206;
    v230 = v103;
    *(v103 + 16) = v349;
    *(v103 + 24) = v104;
    v231 = swift_allocObject();
    *(v231 + 16) = 0;
    v232 = swift_allocObject();
    *(v232 + 16) = v208;
    v105 = swift_allocObject();
    v106 = v211;
    v212 = v105;
    *(v105 + 16) = v350;
    *(v105 + 24) = v106;
    v107 = swift_allocObject();
    v108 = v212;
    v234 = v107;
    *(v107 + 16) = v351;
    *(v107 + 24) = v108;
    v233 = sub_1B0E46A48();
    v235 = v109;

    v110 = v213;
    v111 = v235;
    *v235 = v352;
    v111[1] = v110;

    v112 = v214;
    v113 = v235;
    v235[2] = v353;
    v113[3] = v112;

    v114 = v215;
    v115 = v235;
    v235[4] = v354;
    v115[5] = v114;

    v116 = v216;
    v117 = v235;
    v235[6] = v355;
    v117[7] = v116;

    v118 = v217;
    v119 = v235;
    v235[8] = v356;
    v119[9] = v118;

    v120 = v218;
    v121 = v235;
    v235[10] = v357;
    v121[11] = v120;

    v122 = v219;
    v123 = v235;
    v235[12] = v358;
    v123[13] = v122;

    v124 = v220;
    v125 = v235;
    v235[14] = v359;
    v125[15] = v124;

    v126 = v221;
    v127 = v235;
    v235[16] = v360;
    v127[17] = v126;

    v128 = v222;
    v129 = v235;
    v235[18] = v361;
    v129[19] = v128;

    v130 = v223;
    v131 = v235;
    v235[20] = v362;
    v131[21] = v130;

    v132 = v224;
    v133 = v235;
    v235[22] = v363;
    v133[23] = v132;

    v134 = v225;
    v135 = v235;
    v235[24] = v364;
    v135[25] = v134;

    v136 = v226;
    v137 = v235;
    v235[26] = v365;
    v137[27] = v136;

    v138 = v227;
    v139 = v235;
    v235[28] = v366;
    v139[29] = v138;

    v140 = v228;
    v141 = v235;
    v235[30] = v367;
    v141[31] = v140;

    v142 = v229;
    v143 = v235;
    v235[32] = v368;
    v143[33] = v142;

    v144 = v230;
    v145 = v235;
    v235[34] = v369;
    v145[35] = v144;

    v146 = v231;
    v147 = v235;
    v235[36] = v370;
    v147[37] = v146;

    v148 = v232;
    v149 = v235;
    v235[38] = v371;
    v149[39] = v148;

    v150 = v234;
    v151 = v235;
    v235[40] = v372;
    v151[41] = v150;
    sub_1B0394964();

    if (os_log_type_enabled(v236, v237))
    {
      v152 = v239;
      v184 = sub_1B0E45D78();
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v185 = sub_1B03949A8(0);
      v186 = sub_1B03949A8(1);
      v187 = &v411;
      v411 = v184;
      v188 = &v410;
      v410 = v185;
      v189 = &v409;
      v409 = v186;
      sub_1B0394A48(2, &v411);
      sub_1B0394A48(7, v187);
      v407 = v352;
      v408 = v213;
      sub_1B03949FC(&v407, v187, v188, v189);
      v190 = v152;
      if (v152)
      {

        __break(1u);
      }

      else
      {
        v407 = v353;
        v408 = v214;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v182 = 0;
        v407 = v354;
        v408 = v215;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v181 = 0;
        v407 = v355;
        v408 = v216;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v180 = 0;
        v407 = v356;
        v408 = v217;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v179 = 0;
        v407 = v357;
        v408 = v218;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v178 = 0;
        v407 = v358;
        v408 = v219;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v177 = 0;
        v407 = v359;
        v408 = v220;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v176 = 0;
        v407 = v360;
        v408 = v221;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v175 = 0;
        v407 = v361;
        v408 = v222;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v174 = 0;
        v407 = v362;
        v408 = v223;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v173 = 0;
        v407 = v363;
        v408 = v224;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v172 = 0;
        v407 = v364;
        v408 = v225;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v171 = 0;
        v407 = v365;
        v408 = v226;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v170 = 0;
        v407 = v366;
        v408 = v227;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v169 = 0;
        v407 = v367;
        v408 = v228;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v168 = 0;
        v407 = v368;
        v408 = v229;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v167 = 0;
        v407 = v369;
        v408 = v230;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v166 = 0;
        v407 = v370;
        v408 = v231;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v165 = 0;
        v407 = v371;
        v408 = v232;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v164 = 0;
        v407 = v372;
        v408 = v234;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        _os_log_impl(&dword_1B0389000, v236, v237, "[%.*hhx-%.*X] Still running %ld sync(s) (%{public}s after completing %ld sync(s).", v184, 0x35u);
        sub_1B03998A8(v185);
        sub_1B03998A8(v186);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v236);
    v241(v382, v378);
    v158 = (v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
    v159 = &v413;
    swift_beginAccess();
    v161 = *v158;
    v160 = *(v158 + 2);
    v162 = v158[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v163 = sub_1B0A22EC8();

    result = v163;
    if (v163)
    {
      v155 = (v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
      v156 = &v412;
      swift_beginAccess();
      v157 = *v155;

      swift_endAccess();
      if (v157)
      {
        v154 = v157;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v153 = v154;
      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09CC620(unsigned int a1)
{
  v165 = a1;
  v126 = sub_1B039BBE8;
  v127 = sub_1B03F7AE0;
  v128 = sub_1B0394C30;
  v129 = sub_1B0394C24;
  v130 = sub_1B039BA2C;
  v131 = sub_1B039BA88;
  v132 = sub_1B039BB94;
  v133 = sub_1B0394C24;
  v134 = sub_1B039BBA0;
  v135 = sub_1B039BC08;
  v136 = sub_1B03F7B10;
  v137 = sub_1B039BC08;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v140 = sub_1B0399178;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B039BA94;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B0399178;
  v147 = sub_1B0398F5C;
  v148 = sub_1B0398F5C;
  v149 = sub_1B03991EC;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v152 = sub_1B03991EC;
  v182 = 0;
  v181 = 0;
  v153 = 0;
  v173 = 0;
  v174 = 0;
  v159 = 0;
  v154 = sub_1B0E439A8();
  v155 = *(v154 - 8);
  v156 = v154 - 8;
  v157 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v158 = v70 - v157;
  v160 = _s6LoggerVMa();
  v161 = (*(*(v160 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v159);
  v162 = v70 - v161;
  v163 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v164 = v70 - v163;
  v170 = sub_1B0E44468();
  v168 = *(v170 - 8);
  v169 = v170 - 8;
  v166 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v165);
  v171 = (v70 - v166);
  v182 = v4;
  v181 = v1;

  v167 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v167);
  v5 = v168;
  *v171 = v167;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v172 = sub_1B0E44488();
  (*(v168 + 8))(v171, v170);
  result = v172;
  if (v172)
  {

    v122 = &v180;
    swift_beginAccess();
    v124 = sub_1B0A22F5C(v165);
    v123 = v8;
    swift_endAccess();
    if (v124)
    {
      v120 = v124;
      v121 = v123;
      v119 = v123;
      v118 = v124;
      v173 = v124;
      v174 = v123;

      (v118)(v9);
    }

    else
    {
      v10 = v158;
      v79 = &unk_1EB737000;
      sub_1B0394784(v125 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v164);
      (*(v155 + 16))(v10, v164, v154);
      sub_1B039480C(v164);

      sub_1B0394784(v125 + v79[314], v162);
      v11 = (v162 + *(v160 + 20));
      v81 = *v11;
      v82 = *(v11 + 1);
      sub_1B039480C(v162);

      v80 = 24;
      v95 = 7;
      v12 = swift_allocObject();
      v13 = v82;
      v86 = v12;
      *(v12 + 16) = v81;
      *(v12 + 20) = v13;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v14 = swift_allocObject();
      v15 = v82;
      v83 = v14;
      *(v14 + 16) = v81;
      *(v14 + 20) = v15;

      v94 = 32;
      v16 = swift_allocObject();
      v17 = v83;
      v90 = v16;
      *(v16 + 16) = v126;
      *(v16 + 24) = v17;
      sub_1B0394868();
      sub_1B0394868();

      v84 = swift_allocObject();
      *(v84 + 16) = v165;

      v18 = swift_allocObject();
      v19 = v84;
      v96 = v18;
      *(v18 + 16) = v127;
      *(v18 + 24) = v19;

      v116 = sub_1B0E43988();
      v117 = sub_1B0E458E8();
      v92 = 17;
      v98 = swift_allocObject();
      v88 = 16;
      *(v98 + 16) = 16;
      v99 = swift_allocObject();
      v93 = 4;
      *(v99 + 16) = 4;
      v20 = swift_allocObject();
      v85 = v20;
      *(v20 + 16) = v128;
      *(v20 + 24) = 0;
      v21 = swift_allocObject();
      v22 = v85;
      v100 = v21;
      *(v21 + 16) = v129;
      *(v21 + 24) = v22;
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v86;
      v87 = v23;
      *(v23 + 16) = v130;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v87;
      v103 = v25;
      *(v25 + 16) = v131;
      *(v25 + 24) = v26;
      v104 = swift_allocObject();
      *(v104 + 16) = v88;
      v105 = swift_allocObject();
      *(v105 + 16) = v93;
      v27 = swift_allocObject();
      v89 = v27;
      *(v27 + 16) = v132;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v89;
      v106 = v28;
      *(v28 + 16) = v133;
      *(v28 + 24) = v29;
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v93;
      v30 = swift_allocObject();
      v31 = v90;
      v91 = v30;
      *(v30 + 16) = v134;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v91;
      v109 = v32;
      *(v32 + 16) = v135;
      *(v32 + 24) = v33;
      v110 = swift_allocObject();
      *(v110 + 16) = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v93;
      v34 = swift_allocObject();
      v35 = v96;
      v97 = v34;
      *(v34 + 16) = v136;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v97;
      v113 = v36;
      *(v36 + 16) = v137;
      *(v36 + 24) = v37;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v112 = sub_1B0E46A48();
      v114 = v38;

      v39 = v98;
      v40 = v114;
      *v114 = v138;
      v40[1] = v39;

      v41 = v99;
      v42 = v114;
      v114[2] = v139;
      v42[3] = v41;

      v43 = v100;
      v44 = v114;
      v114[4] = v140;
      v44[5] = v43;

      v45 = v101;
      v46 = v114;
      v114[6] = v141;
      v46[7] = v45;

      v47 = v102;
      v48 = v114;
      v114[8] = v142;
      v48[9] = v47;

      v49 = v103;
      v50 = v114;
      v114[10] = v143;
      v50[11] = v49;

      v51 = v104;
      v52 = v114;
      v114[12] = v144;
      v52[13] = v51;

      v53 = v105;
      v54 = v114;
      v114[14] = v145;
      v54[15] = v53;

      v55 = v106;
      v56 = v114;
      v114[16] = v146;
      v56[17] = v55;

      v57 = v107;
      v58 = v114;
      v114[18] = v147;
      v58[19] = v57;

      v59 = v108;
      v60 = v114;
      v114[20] = v148;
      v60[21] = v59;

      v61 = v109;
      v62 = v114;
      v114[22] = v149;
      v62[23] = v61;

      v63 = v110;
      v64 = v114;
      v114[24] = v150;
      v64[25] = v63;

      v65 = v111;
      v66 = v114;
      v114[26] = v151;
      v66[27] = v65;

      v67 = v113;
      v68 = v114;
      v114[28] = v152;
      v68[29] = v67;
      sub_1B0394964();

      if (os_log_type_enabled(v116, v117))
      {
        v69 = v153;
        v72 = sub_1B0E45D78();
        v70[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v71 = 0;
        v73 = sub_1B03949A8(0);
        v74 = sub_1B03949A8(v71);
        v75 = &v179;
        v179 = v72;
        v76 = &v178;
        v178 = v73;
        v77 = &v177;
        v177 = v74;
        sub_1B0394A48(0, &v179);
        sub_1B0394A48(5, v75);
        v175 = v138;
        v176 = v98;
        sub_1B03949FC(&v175, v75, v76, v77);
        v78 = v69;
        if (v69)
        {

          __break(1u);
        }

        else
        {
          v175 = v139;
          v176 = v99;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[14] = 0;
          v175 = v140;
          v176 = v100;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[13] = 0;
          v175 = v141;
          v176 = v101;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[12] = 0;
          v175 = v142;
          v176 = v102;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[11] = 0;
          v175 = v143;
          v176 = v103;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[10] = 0;
          v175 = v144;
          v176 = v104;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[9] = 0;
          v175 = v145;
          v176 = v105;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[8] = 0;
          v175 = v146;
          v176 = v106;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[7] = 0;
          v175 = v147;
          v176 = v107;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[6] = 0;
          v175 = v148;
          v176 = v108;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[5] = 0;
          v175 = v149;
          v176 = v109;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[4] = 0;
          v175 = v150;
          v176 = v110;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[3] = 0;
          v175 = v151;
          v176 = v111;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          v70[2] = 0;
          v175 = v152;
          v176 = v113;
          sub_1B03949FC(&v175, &v179, &v178, &v177);
          _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%.*X] Sync #%u was not in the list of running syncs. Ignoring.", v72, 0x1Du);
          v70[1] = 0;
          sub_1B03998A8(v73);
          sub_1B03998A8(v74);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v116);
      return (*(v155 + 8))(v158, v154);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09CDED0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 2);
  v5 = v2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v6 = sub_1B03F7A78();

  return v6;
}

uint64_t sub_1B09CDF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
  swift_beginAccess();
  v6 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  *a2 = sub_1B0A22DE0(v6, v4, v7);
}

uint64_t sub_1B09CE0B4()
{
  v279 = sub_1B039BBE8;
  v280 = sub_1B0A1B06C;
  v281 = sub_1B0394C30;
  v282 = sub_1B0394C24;
  v283 = sub_1B039BA2C;
  v284 = sub_1B039BA88;
  v285 = sub_1B039BB94;
  v286 = sub_1B0394C24;
  v287 = sub_1B039BBA0;
  v288 = sub_1B039BC08;
  v289 = sub_1B03F7B10;
  v290 = sub_1B039BC08;
  v291 = sub_1B0A1B098;
  v292 = sub_1B06D4E08;
  v293 = sub_1B0A1B0C4;
  v294 = sub_1B039BCF8;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0399178;
  v298 = sub_1B0398F5C;
  v299 = sub_1B0398F5C;
  v300 = sub_1B039BA94;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0399178;
  v304 = sub_1B0398F5C;
  v305 = sub_1B0398F5C;
  v306 = sub_1B03991EC;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0398F5C;
  v309 = sub_1B03991EC;
  v310 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0399348;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B039BCEC;
  v316 = sub_1B039BBE8;
  v317 = sub_1B0394C24;
  v318 = sub_1B039BA2C;
  v319 = sub_1B039BA88;
  v320 = sub_1B0394C24;
  v321 = sub_1B039BBA0;
  v322 = sub_1B039BC08;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0399178;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B039BA94;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B03991EC;
  v370 = 0;
  v335 = 0;
  memset(&v363[3], 0, 14);
  v343 = 0;
  v336 = sub_1B0E439A8();
  v337 = *(v336 - 8);
  v338 = v336 - 8;
  v339 = (*(v337 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v340 = v149 - v339;
  v341 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v342 = v149 - v341;
  v344 = _s6LoggerVMa();
  v345 = (*(*(v344 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v343);
  v346 = v149 - v345;
  v347 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v348 = v149 - v347;
  v349 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v350 = v149 - v349;
  v355 = sub_1B0E44468();
  v353 = *(v355 - 8);
  v354 = v355 - 8;
  v351 = (*(v353 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v355);
  v356 = (v149 - v351);
  v370 = v0;

  v352 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v352);
  v7 = v353;
  *v356 = v352;
  v8 = *MEMORY[0x1E69E8020];
  (*(v7 + 104))();
  v357 = sub_1B0E44488();
  (*(v353 + 8))(v356, v355);
  result = v357;
  if (v357)
  {

    v274 = v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v276 = &v369;
    swift_beginAccess();
    v277 = *v274;
    v275 = *(v274 + 8) | (*(v274 + 12) << 32);
    swift_unknownObjectRetain();
    swift_endAccess();
    if (v277)
    {
      v272 = v277;
      v273 = v275 & 0xFFFFFFFFFFFFLL;
      v10 = v342;
      v228 = v275 & 0xFFFFFFFFFFFFLL;
      v227 = v277;
      v363[3] = v277;
      LODWORD(v363[4]) = v275;
      WORD2(v363[4]) = (v275 & 0xFFFFFFFFFFFFLL) >> 32;
      v218 = (v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
      v219 = v363;
      swift_beginAccess();
      v11 = v218;
      v12 = *v218;
      *v218 = 0;
      v242 = 32;
      *(v11 + 2) = 0;
      *(v11 + 6) = 0;
      swift_unknownObjectRelease();
      swift_endAccess();
      v220 = &unk_1EB737000;
      sub_1B0394784(v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v350);
      (*(v337 + 16))(v10, v350, v336);
      sub_1B039480C(v350);

      sub_1B0394784(v278 + v220[314], v348);
      v13 = (v348 + *(v344 + 20));
      v222 = *v13;
      v223 = *(v13 + 1);
      sub_1B039480C(v348);

      v221 = 24;
      v243 = 7;
      v14 = swift_allocObject();
      v15 = v223;
      v230 = v14;
      *(v14 + 16) = v222;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v223;
      v224 = v16;
      *(v16 + 16) = v222;
      *(v16 + 20) = v17;

      v18 = swift_allocObject();
      v19 = v224;
      v234 = v18;
      *(v18 + 16) = v279;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      swift_unknownObjectRetain();
      v226 = 30;
      v20 = swift_allocObject();
      v21 = v228;
      v22 = WORD2(v228);
      v225 = v20;
      *(v20 + 16) = v227;
      *(v20 + 24) = v21;
      *(v20 + 28) = v22;

      v23 = swift_allocObject();
      v24 = v225;
      v237 = v23;
      *(v23 + 16) = v280;
      *(v23 + 24) = v24;

      swift_unknownObjectRetain();
      v25 = swift_allocObject();
      v26 = v228;
      v27 = WORD2(v228);
      v239 = v25;
      *(v25 + 16) = v227;
      *(v25 + 24) = v26;
      *(v25 + 28) = v27;
      swift_unknownObjectRetain();
      v28 = swift_allocObject();
      v29 = v228;
      v30 = WORD2(v228);
      v244 = v28;
      *(v28 + 16) = v227;
      *(v28 + 24) = v29;
      *(v28 + 28) = v30;
      v270 = sub_1B0E43988();
      v271 = sub_1B0E45908();
      v241 = 17;
      v246 = swift_allocObject();
      v232 = 16;
      *(v246 + 16) = 16;
      v247 = swift_allocObject();
      v236 = 4;
      *(v247 + 16) = 4;
      v31 = swift_allocObject();
      v229 = v31;
      *(v31 + 16) = v281;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      v33 = v229;
      v248 = v32;
      *(v32 + 16) = v282;
      *(v32 + 24) = v33;
      v249 = swift_allocObject();
      *(v249 + 16) = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = 1;
      v34 = swift_allocObject();
      v35 = v230;
      v231 = v34;
      *(v34 + 16) = v283;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v231;
      v251 = v36;
      *(v36 + 16) = v284;
      *(v36 + 24) = v37;
      v252 = swift_allocObject();
      *(v252 + 16) = v232;
      v253 = swift_allocObject();
      *(v253 + 16) = v236;
      v38 = swift_allocObject();
      v233 = v38;
      *(v38 + 16) = v285;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v233;
      v254 = v39;
      *(v39 + 16) = v286;
      *(v39 + 24) = v40;
      v255 = swift_allocObject();
      *(v255 + 16) = 0;
      v256 = swift_allocObject();
      *(v256 + 16) = v236;
      v41 = swift_allocObject();
      v42 = v234;
      v235 = v41;
      *(v41 + 16) = v287;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v235;
      v257 = v43;
      *(v43 + 16) = v288;
      *(v43 + 24) = v44;
      v258 = swift_allocObject();
      *(v258 + 16) = 0;
      v259 = swift_allocObject();
      *(v259 + 16) = v236;
      v45 = swift_allocObject();
      v46 = v237;
      v238 = v45;
      *(v45 + 16) = v289;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v238;
      v260 = v47;
      *(v47 + 16) = v290;
      *(v47 + 24) = v48;
      v261 = swift_allocObject();
      *(v261 + 16) = 0;
      v262 = swift_allocObject();
      *(v262 + 16) = 2;
      v49 = swift_allocObject();
      v50 = v239;
      v240 = v49;
      *(v49 + 16) = v291;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v240;
      v263 = v51;
      *(v51 + 16) = v292;
      *(v51 + 24) = v52;
      v264 = swift_allocObject();
      *(v264 + 16) = 32;
      v265 = swift_allocObject();
      *(v265 + 16) = 8;
      v53 = swift_allocObject();
      v54 = v244;
      v245 = v53;
      *(v53 + 16) = v293;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v245;
      v267 = v55;
      *(v55 + 16) = v294;
      *(v55 + 24) = v56;
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v266 = sub_1B0E46A48();
      v268 = v57;

      v58 = v246;
      v59 = v268;
      *v268 = v295;
      v59[1] = v58;

      v60 = v247;
      v61 = v268;
      v268[2] = v296;
      v61[3] = v60;

      v62 = v248;
      v63 = v268;
      v268[4] = v297;
      v63[5] = v62;

      v64 = v249;
      v65 = v268;
      v268[6] = v298;
      v65[7] = v64;

      v66 = v250;
      v67 = v268;
      v268[8] = v299;
      v67[9] = v66;

      v68 = v251;
      v69 = v268;
      v268[10] = v300;
      v69[11] = v68;

      v70 = v252;
      v71 = v268;
      v268[12] = v301;
      v71[13] = v70;

      v72 = v253;
      v73 = v268;
      v268[14] = v302;
      v73[15] = v72;

      v74 = v254;
      v75 = v268;
      v268[16] = v303;
      v75[17] = v74;

      v76 = v255;
      v77 = v268;
      v268[18] = v304;
      v77[19] = v76;

      v78 = v256;
      v79 = v268;
      v268[20] = v305;
      v79[21] = v78;

      v80 = v257;
      v81 = v268;
      v268[22] = v306;
      v81[23] = v80;

      v82 = v258;
      v83 = v268;
      v268[24] = v307;
      v83[25] = v82;

      v84 = v259;
      v85 = v268;
      v268[26] = v308;
      v85[27] = v84;

      v86 = v260;
      v87 = v268;
      v268[28] = v309;
      v87[29] = v86;

      v88 = v261;
      v89 = v268;
      v268[30] = v310;
      v89[31] = v88;

      v90 = v262;
      v91 = v268;
      v268[32] = v311;
      v91[33] = v90;

      v92 = v263;
      v93 = v268;
      v268[34] = v312;
      v93[35] = v92;

      v94 = v264;
      v95 = v268;
      v268[36] = v313;
      v95[37] = v94;

      v96 = v265;
      v97 = v268;
      v268[38] = v314;
      v97[39] = v96;

      v98 = v267;
      v99 = v268;
      v268[40] = v315;
      v99[41] = v98;
      sub_1B0394964();

      if (os_log_type_enabled(v270, v271))
      {
        v100 = v335;
        v211 = sub_1B0E45D78();
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v212 = sub_1B03949A8(0);
        v213 = sub_1B03949A8(1);
        v214 = &v362;
        v362 = v211;
        v215 = &v361;
        v361 = v212;
        v216 = &v360;
        v360 = v213;
        sub_1B0394A48(2, &v362);
        sub_1B0394A48(7, v214);
        v358 = v295;
        v359 = v246;
        sub_1B03949FC(&v358, v214, v215, v216);
        v217 = v100;
        if (v100)
        {

          __break(1u);
        }

        else
        {
          v358 = v296;
          v359 = v247;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v209 = 0;
          v358 = v297;
          v359 = v248;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v208 = 0;
          v358 = v298;
          v359 = v249;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v207 = 0;
          v358 = v299;
          v359 = v250;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v206 = 0;
          v358 = v300;
          v359 = v251;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v205 = 0;
          v358 = v301;
          v359 = v252;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v204 = 0;
          v358 = v302;
          v359 = v253;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v203 = 0;
          v358 = v303;
          v359 = v254;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v202 = 0;
          v358 = v304;
          v359 = v255;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v201 = 0;
          v358 = v305;
          v359 = v256;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v200 = 0;
          v358 = v306;
          v359 = v257;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v199 = 0;
          v358 = v307;
          v359 = v258;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v198 = 0;
          v358 = v308;
          v359 = v259;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v197 = 0;
          v358 = v309;
          v359 = v260;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v196 = 0;
          v358 = v310;
          v359 = v261;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v195 = 0;
          v358 = v311;
          v359 = v262;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v194 = 0;
          v358 = v312;
          v359 = v263;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v193 = 0;
          v358 = v313;
          v359 = v264;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v192 = 0;
          v358 = v314;
          v359 = v265;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v191 = 0;
          v358 = v315;
          v359 = v267;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          _os_log_impl(&dword_1B0389000, v270, v271, "[%.*hhx-%.*X] Stopping back-fill sync (sync: #%u, id: %hu) and reporting as “has pending work” to xpc. %s.", v211, 0x2Bu);
          sub_1B03998A8(v212);
          sub_1B03998A8(v213);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v270);
      (*(v337 + 8))(v342, v336);
      swift_unknownObjectRetain();
      swift_getObjectType();
      [v227 completeWithStatus_];
      swift_unknownObjectRelease();
      sub_1B09C4544(v228, 0);
      return swift_unknownObjectRelease();
    }

    else
    {
      v101 = v340;
      v158 = &unk_1EB737000;
      sub_1B0394784(v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v346);
      (*(v337 + 16))(v101, v346, v336);
      sub_1B039480C(v346);

      sub_1B0394784(v278 + v158[314], v348);
      v102 = (v348 + *(v344 + 20));
      v160 = *v102;
      v161 = *(v102 + 1);
      sub_1B039480C(v348);

      v159 = 24;
      v171 = 7;
      v103 = swift_allocObject();
      v104 = v161;
      v164 = v103;
      *(v103 + 16) = v160;
      *(v103 + 20) = v104;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = swift_allocObject();
      v106 = v161;
      v162 = v105;
      *(v105 + 16) = v160;
      *(v105 + 20) = v106;

      v170 = 32;
      v107 = swift_allocObject();
      v108 = v162;
      v172 = v107;
      *(v107 + 16) = v316;
      *(v107 + 24) = v108;
      sub_1B0394868();
      sub_1B0394868();

      v189 = sub_1B0E43988();
      v190 = sub_1B0E458E8();
      v168 = 17;
      v174 = swift_allocObject();
      v166 = 16;
      *(v174 + 16) = 16;
      v175 = swift_allocObject();
      v169 = 4;
      *(v175 + 16) = 4;
      v109 = swift_allocObject();
      v163 = v109;
      *(v109 + 16) = v281;
      *(v109 + 24) = 0;
      v110 = swift_allocObject();
      v111 = v163;
      v176 = v110;
      *(v110 + 16) = v317;
      *(v110 + 24) = v111;
      v177 = swift_allocObject();
      *(v177 + 16) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = 1;
      v112 = swift_allocObject();
      v113 = v164;
      v165 = v112;
      *(v112 + 16) = v318;
      *(v112 + 24) = v113;
      v114 = swift_allocObject();
      v115 = v165;
      v179 = v114;
      *(v114 + 16) = v319;
      *(v114 + 24) = v115;
      v180 = swift_allocObject();
      *(v180 + 16) = v166;
      v181 = swift_allocObject();
      *(v181 + 16) = v169;
      v116 = swift_allocObject();
      v167 = v116;
      *(v116 + 16) = v285;
      *(v116 + 24) = 0;
      v117 = swift_allocObject();
      v118 = v167;
      v182 = v117;
      *(v117 + 16) = v320;
      *(v117 + 24) = v118;
      v183 = swift_allocObject();
      *(v183 + 16) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v169;
      v119 = swift_allocObject();
      v120 = v172;
      v173 = v119;
      *(v119 + 16) = v321;
      *(v119 + 24) = v120;
      v121 = swift_allocObject();
      v122 = v173;
      v186 = v121;
      *(v121 + 16) = v322;
      *(v121 + 24) = v122;
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v185 = sub_1B0E46A48();
      v187 = v123;

      v124 = v174;
      v125 = v187;
      *v187 = v323;
      v125[1] = v124;

      v126 = v175;
      v127 = v187;
      v187[2] = v324;
      v127[3] = v126;

      v128 = v176;
      v129 = v187;
      v187[4] = v325;
      v129[5] = v128;

      v130 = v177;
      v131 = v187;
      v187[6] = v326;
      v131[7] = v130;

      v132 = v178;
      v133 = v187;
      v187[8] = v327;
      v133[9] = v132;

      v134 = v179;
      v135 = v187;
      v187[10] = v328;
      v135[11] = v134;

      v136 = v180;
      v137 = v187;
      v187[12] = v329;
      v137[13] = v136;

      v138 = v181;
      v139 = v187;
      v187[14] = v330;
      v139[15] = v138;

      v140 = v182;
      v141 = v187;
      v187[16] = v331;
      v141[17] = v140;

      v142 = v183;
      v143 = v187;
      v187[18] = v332;
      v143[19] = v142;

      v144 = v184;
      v145 = v187;
      v187[20] = v333;
      v145[21] = v144;

      v146 = v186;
      v147 = v187;
      v187[22] = v334;
      v147[23] = v146;
      sub_1B0394964();

      if (os_log_type_enabled(v189, v190))
      {
        v148 = v335;
        v151 = sub_1B0E45D78();
        v149[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v150 = 0;
        v152 = sub_1B03949A8(0);
        v153 = sub_1B03949A8(v150);
        v154 = &v368;
        v368 = v151;
        v155 = &v367;
        v367 = v152;
        v156 = &v366;
        v366 = v153;
        sub_1B0394A48(0, &v368);
        sub_1B0394A48(4, v154);
        v364 = v323;
        v365 = v174;
        sub_1B03949FC(&v364, v154, v155, v156);
        v157 = v148;
        if (v148)
        {

          __break(1u);
        }

        else
        {
          v364 = v324;
          v365 = v175;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[10] = 0;
          v364 = v325;
          v365 = v176;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[9] = 0;
          v364 = v326;
          v365 = v177;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[8] = 0;
          v364 = v327;
          v365 = v178;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[7] = 0;
          v364 = v328;
          v365 = v179;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[6] = 0;
          v364 = v329;
          v365 = v180;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[5] = 0;
          v364 = v330;
          v365 = v181;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[4] = 0;
          v364 = v331;
          v365 = v182;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[3] = 0;
          v364 = v332;
          v365 = v183;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[2] = 0;
          v364 = v333;
          v365 = v184;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v149[1] = 0;
          v364 = v334;
          v365 = v186;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          _os_log_impl(&dword_1B0389000, v189, v190, "[%.*hhx-%.*X] Request to stop back-fill, but no back-fill is running.", v151, 0x17u);
          v149[0] = 0;
          sub_1B03998A8(v152);
          sub_1B03998A8(v153);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v189);
      return (*(v337 + 8))(v340, v336);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09D1384(void *a1)
{
  v388 = a1;
  v310 = sub_1B039BBE8;
  v311 = sub_1B0A1B06C;
  v312 = sub_1B0394C30;
  v313 = sub_1B0394C24;
  v314 = sub_1B039BA2C;
  v315 = sub_1B039BA88;
  v316 = sub_1B039BB94;
  v317 = sub_1B0394C24;
  v318 = sub_1B039BBA0;
  v319 = sub_1B039BC08;
  v320 = sub_1B03F7B10;
  v321 = sub_1B039BC08;
  v322 = sub_1B0A1B098;
  v323 = sub_1B06D4E08;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0399178;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v329 = sub_1B039BA94;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0398F5C;
  v332 = sub_1B0399178;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v335 = sub_1B03991EC;
  v336 = sub_1B0398F5C;
  v337 = sub_1B0398F5C;
  v338 = sub_1B03991EC;
  v339 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0399348;
  v342 = sub_1B039BBE8;
  v343 = sub_1B03F7AE0;
  v344 = sub_1B0394C24;
  v345 = sub_1B039BA2C;
  v346 = sub_1B039BA88;
  v347 = sub_1B0394C24;
  v348 = sub_1B039BBA0;
  v349 = sub_1B039BC08;
  v350 = sub_1B0A1B0F0;
  v351 = sub_1B039BCF8;
  v352 = sub_1B03F7B10;
  v353 = sub_1B039BC08;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0399178;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BA94;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0399178;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B03991EC;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B039BCEC;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B03991EC;
  v413 = 0;
  v412 = 0;
  v410 = 0;
  v409 = 0;
  v372 = 0;
  memset(&v400[1], 0, 14);
  v380 = 0;
  v373 = sub_1B0E439A8();
  v374 = *(v373 - 8);
  v375 = v373 - 8;
  v376 = (*(v374 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v377 = v166 - v376;
  v378 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v379 = v166 - v378;
  v381 = _s6LoggerVMa();
  v382 = (*(*(v381 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v380);
  v383 = v166 - v382;
  v384 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v385 = v166 - v384;
  v386 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v387 = v166 - v386;
  v393 = sub_1B0E44468();
  v391 = *(v393 - 8);
  v392 = v393 - 8;
  v389 = (*(v391 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v388);
  v394 = (v166 - v389);
  v413 = v8;
  v412 = v1;

  v390 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v390);
  v9 = v391;
  *v394 = v390;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v395 = sub_1B0E44488();
  (*(v391 + 8))(v394, v393);
  result = v395;
  if (v395)
  {

    v305 = v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v307 = &v411;
    swift_beginAccess();
    v308 = *v305;
    v306 = *(v305 + 8) | (*(v305 + 12) << 32);
    swift_unknownObjectRetain();
    swift_endAccess();
    if (v308)
    {
      v303 = v308;
      v304 = v306 & 0xFFFFFFFFFFFFLL;
      v12 = v379;
      v263 = v306 & 0xFFFFFFFFFFFFLL;
      v262 = v308;
      v400[1] = v308;
      LODWORD(v400[2]) = v306;
      WORD2(v400[2]) = (v306 & 0xFFFFFFFFFFFFLL) >> 32;
      v255 = &unk_1EB737000;
      sub_1B0394784(v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v387);
      (*(v374 + 16))(v12, v387, v373);
      sub_1B039480C(v387);

      sub_1B0394784(v309 + v255[314], v385);
      v13 = (v385 + *(v381 + 20));
      v257 = *v13;
      v258 = *(v13 + 1);
      sub_1B039480C(v385);

      v256 = 24;
      v276 = 7;
      v14 = swift_allocObject();
      v15 = v258;
      v265 = v14;
      *(v14 + 16) = v257;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v258;
      v259 = v16;
      *(v16 + 16) = v257;
      *(v16 + 20) = v17;

      v275 = 32;
      v18 = swift_allocObject();
      v19 = v259;
      v269 = v18;
      *(v18 + 16) = v310;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      swift_unknownObjectRetain();
      v261 = 30;
      v20 = swift_allocObject();
      v21 = v263;
      v22 = WORD2(v263);
      v260 = v20;
      *(v20 + 16) = v262;
      *(v20 + 24) = v21;
      *(v20 + 28) = v22;

      v23 = swift_allocObject();
      v24 = v260;
      v272 = v23;
      *(v23 + 16) = v311;
      *(v23 + 24) = v24;

      swift_unknownObjectRetain();
      v25 = swift_allocObject();
      v26 = v263;
      v27 = WORD2(v263);
      v277 = v25;
      *(v25 + 16) = v262;
      *(v25 + 24) = v26;
      *(v25 + 28) = v27;
      v300 = sub_1B0E43988();
      v301 = sub_1B0E458E8();
      v274 = 17;
      v279 = swift_allocObject();
      v267 = 16;
      *(v279 + 16) = 16;
      v280 = swift_allocObject();
      v271 = 4;
      *(v280 + 16) = 4;
      v28 = swift_allocObject();
      v264 = v28;
      *(v28 + 16) = v312;
      *(v28 + 24) = 0;
      v29 = swift_allocObject();
      v30 = v264;
      v281 = v29;
      *(v29 + 16) = v313;
      *(v29 + 24) = v30;
      v282 = swift_allocObject();
      *(v282 + 16) = 0;
      v283 = swift_allocObject();
      *(v283 + 16) = 1;
      v31 = swift_allocObject();
      v32 = v265;
      v266 = v31;
      *(v31 + 16) = v314;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v266;
      v284 = v33;
      *(v33 + 16) = v315;
      *(v33 + 24) = v34;
      v285 = swift_allocObject();
      *(v285 + 16) = v267;
      v286 = swift_allocObject();
      *(v286 + 16) = v271;
      v35 = swift_allocObject();
      v268 = v35;
      *(v35 + 16) = v316;
      *(v35 + 24) = 0;
      v36 = swift_allocObject();
      v37 = v268;
      v287 = v36;
      *(v36 + 16) = v317;
      *(v36 + 24) = v37;
      v288 = swift_allocObject();
      *(v288 + 16) = 0;
      v289 = swift_allocObject();
      *(v289 + 16) = v271;
      v38 = swift_allocObject();
      v39 = v269;
      v270 = v38;
      *(v38 + 16) = v318;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v270;
      v290 = v40;
      *(v40 + 16) = v319;
      *(v40 + 24) = v41;
      v291 = swift_allocObject();
      *(v291 + 16) = 0;
      v292 = swift_allocObject();
      *(v292 + 16) = v271;
      v42 = swift_allocObject();
      v43 = v272;
      v273 = v42;
      *(v42 + 16) = v320;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v273;
      v293 = v44;
      *(v44 + 16) = v321;
      *(v44 + 24) = v45;
      v294 = swift_allocObject();
      *(v294 + 16) = 0;
      v295 = swift_allocObject();
      *(v295 + 16) = 2;
      v46 = swift_allocObject();
      v47 = v277;
      v278 = v46;
      *(v46 + 16) = v322;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v278;
      v297 = v48;
      *(v48 + 16) = v323;
      *(v48 + 24) = v49;
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v296 = sub_1B0E46A48();
      v298 = v50;

      v51 = v279;
      v52 = v298;
      *v298 = v324;
      v52[1] = v51;

      v53 = v280;
      v54 = v298;
      v298[2] = v325;
      v54[3] = v53;

      v55 = v281;
      v56 = v298;
      v298[4] = v326;
      v56[5] = v55;

      v57 = v282;
      v58 = v298;
      v298[6] = v327;
      v58[7] = v57;

      v59 = v283;
      v60 = v298;
      v298[8] = v328;
      v60[9] = v59;

      v61 = v284;
      v62 = v298;
      v298[10] = v329;
      v62[11] = v61;

      v63 = v285;
      v64 = v298;
      v298[12] = v330;
      v64[13] = v63;

      v65 = v286;
      v66 = v298;
      v298[14] = v331;
      v66[15] = v65;

      v67 = v287;
      v68 = v298;
      v298[16] = v332;
      v68[17] = v67;

      v69 = v288;
      v70 = v298;
      v298[18] = v333;
      v70[19] = v69;

      v71 = v289;
      v72 = v298;
      v298[20] = v334;
      v72[21] = v71;

      v73 = v290;
      v74 = v298;
      v298[22] = v335;
      v74[23] = v73;

      v75 = v291;
      v76 = v298;
      v298[24] = v336;
      v76[25] = v75;

      v77 = v292;
      v78 = v298;
      v298[26] = v337;
      v78[27] = v77;

      v79 = v293;
      v80 = v298;
      v298[28] = v338;
      v80[29] = v79;

      v81 = v294;
      v82 = v298;
      v298[30] = v339;
      v82[31] = v81;

      v83 = v295;
      v84 = v298;
      v298[32] = v340;
      v84[33] = v83;

      v85 = v297;
      v86 = v298;
      v298[34] = v341;
      v86[35] = v85;
      sub_1B0394964();

      if (os_log_type_enabled(v300, v301))
      {
        v87 = v372;
        v248 = sub_1B0E45D78();
        v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v247 = 0;
        v249 = sub_1B03949A8(0);
        v250 = sub_1B03949A8(v247);
        v251 = v400;
        v400[0] = v248;
        v252 = &v399;
        v399 = v249;
        v253 = &v398;
        v398 = v250;
        sub_1B0394A48(0, v400);
        sub_1B0394A48(6, v251);
        v396 = v324;
        v397 = v279;
        sub_1B03949FC(&v396, v251, v252, v253);
        v254 = v87;
        if (v87)
        {

          __break(1u);
        }

        else
        {
          v396 = v325;
          v397 = v280;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v244 = 0;
          v396 = v326;
          v397 = v281;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v243 = 0;
          v396 = v327;
          v397 = v282;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v242 = 0;
          v396 = v328;
          v397 = v283;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v241 = 0;
          v396 = v329;
          v397 = v284;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v240 = 0;
          v396 = v330;
          v397 = v285;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v239 = 0;
          v396 = v331;
          v397 = v286;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v238 = 0;
          v396 = v332;
          v397 = v287;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v237 = 0;
          v396 = v333;
          v397 = v288;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v236 = 0;
          v396 = v334;
          v397 = v289;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v235 = 0;
          v396 = v335;
          v397 = v290;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v234 = 0;
          v396 = v336;
          v397 = v291;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v233 = 0;
          v396 = v337;
          v397 = v292;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v232 = 0;
          v396 = v338;
          v397 = v293;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v231 = 0;
          v396 = v339;
          v397 = v294;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v230 = 0;
          v396 = v340;
          v397 = v295;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v229 = 0;
          v396 = v341;
          v397 = v297;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v228 = 0;
          _os_log_impl(&dword_1B0389000, v300, v301, "[%.*hhx-%.*X] Back-fill sync is already running. Stopping old back-fill (sync: #%u, id: %hu).", v248, 0x21u);
          v227 = 0;
          sub_1B03998A8(v249);
          sub_1B03998A8(v250);
          sub_1B0E45D58();

          v245 = v228;
        }
      }

      else
      {
        v88 = v372;

        v245 = v88;
      }

      v226 = v245;
      MEMORY[0x1E69E5920](v300);
      (*(v374 + 8))(v379, v373);
      sub_1B09CE0B4();
      swift_unknownObjectRelease();
      v302 = v226;
    }

    else
    {
      v302 = v372;
    }

    v174 = v302;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v175 = [v388 backFillID];
    swift_unknownObjectRelease();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v175);
    v176 = v89;
    v410 = v89;
    v90 = sub_1B09D4B98(v89);
    v91 = v377;
    v186 = v90;
    v409 = v90;
    swift_unknownObjectRetain();
    sub_1B0A23458();
    v407 = v92;
    v408 = v93;
    v177 = v92;
    v178 = v408 | (WORD2(v408) << 32);
    v179 = (v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
    v180 = &v406;
    swift_beginAccess();
    v94 = v178;
    v95 = v179;
    v96 = *v179;
    *v179 = v177;
    v199 = 32;
    *(v95 + 2) = v94;
    *(v95 + 6) = WORD2(v94);
    swift_unknownObjectRelease();
    swift_endAccess();
    v181 = &unk_1EB737000;
    sub_1B0394784(v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v383);
    (*(v374 + 16))(v91, v383, v373);
    sub_1B039480C(v383);

    sub_1B0394784(v309 + v181[314], v385);
    v97 = (v385 + *(v381 + 20));
    v182 = *v97;
    v183 = *(v97 + 1);
    sub_1B039480C(v385);

    v185 = 24;
    v200 = 7;
    v98 = swift_allocObject();
    v99 = v183;
    v189 = v98;
    *(v98 + 16) = v182;
    *(v98 + 20) = v99;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v100 = swift_allocObject();
    v101 = v183;
    v184 = v100;
    *(v100 + 16) = v182;
    *(v100 + 20) = v101;

    v102 = swift_allocObject();
    v103 = v184;
    v193 = v102;
    *(v102 + 16) = v342;
    *(v102 + 24) = v103;
    sub_1B0394868();
    sub_1B0394868();

    swift_unknownObjectRetain();
    v195 = swift_allocObject();
    *(v195 + 16) = v388;
    v187 = swift_allocObject();
    *(v187 + 16) = v186;

    v104 = swift_allocObject();
    v105 = v187;
    v201 = v104;
    *(v104 + 16) = v343;
    *(v104 + 24) = v105;

    v224 = sub_1B0E43988();
    v225 = sub_1B0E45908();
    v197 = 17;
    v203 = swift_allocObject();
    v191 = 16;
    *(v203 + 16) = 16;
    v204 = swift_allocObject();
    v198 = 4;
    *(v204 + 16) = 4;
    v106 = swift_allocObject();
    v188 = v106;
    *(v106 + 16) = v312;
    *(v106 + 24) = 0;
    v107 = swift_allocObject();
    v108 = v188;
    v205 = v107;
    *(v107 + 16) = v344;
    *(v107 + 24) = v108;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = 1;
    v109 = swift_allocObject();
    v110 = v189;
    v190 = v109;
    *(v109 + 16) = v345;
    *(v109 + 24) = v110;
    v111 = swift_allocObject();
    v112 = v190;
    v208 = v111;
    *(v111 + 16) = v346;
    *(v111 + 24) = v112;
    v209 = swift_allocObject();
    *(v209 + 16) = v191;
    v210 = swift_allocObject();
    *(v210 + 16) = v198;
    v113 = swift_allocObject();
    v192 = v113;
    *(v113 + 16) = v316;
    *(v113 + 24) = 0;
    v114 = swift_allocObject();
    v115 = v192;
    v211 = v114;
    *(v114 + 16) = v347;
    *(v114 + 24) = v115;
    v212 = swift_allocObject();
    *(v212 + 16) = 0;
    v213 = swift_allocObject();
    *(v213 + 16) = v198;
    v116 = swift_allocObject();
    v117 = v193;
    v194 = v116;
    *(v116 + 16) = v348;
    *(v116 + 24) = v117;
    v118 = swift_allocObject();
    v119 = v194;
    v214 = v118;
    *(v118 + 16) = v349;
    *(v118 + 24) = v119;
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v120 = swift_allocObject();
    v121 = v195;
    v196 = v120;
    *(v120 + 16) = v350;
    *(v120 + 24) = v121;
    v122 = swift_allocObject();
    v123 = v196;
    v217 = v122;
    *(v122 + 16) = v351;
    *(v122 + 24) = v123;
    v218 = swift_allocObject();
    *(v218 + 16) = 0;
    v219 = swift_allocObject();
    *(v219 + 16) = v198;
    v124 = swift_allocObject();
    v125 = v201;
    v202 = v124;
    *(v124 + 16) = v352;
    *(v124 + 24) = v125;
    v126 = swift_allocObject();
    v127 = v202;
    v221 = v126;
    *(v126 + 16) = v353;
    *(v126 + 24) = v127;
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v220 = sub_1B0E46A48();
    v222 = v128;

    v129 = v203;
    v130 = v222;
    *v222 = v354;
    v130[1] = v129;

    v131 = v204;
    v132 = v222;
    v222[2] = v355;
    v132[3] = v131;

    v133 = v205;
    v134 = v222;
    v222[4] = v356;
    v134[5] = v133;

    v135 = v206;
    v136 = v222;
    v222[6] = v357;
    v136[7] = v135;

    v137 = v207;
    v138 = v222;
    v222[8] = v358;
    v138[9] = v137;

    v139 = v208;
    v140 = v222;
    v222[10] = v359;
    v140[11] = v139;

    v141 = v209;
    v142 = v222;
    v222[12] = v360;
    v142[13] = v141;

    v143 = v210;
    v144 = v222;
    v222[14] = v361;
    v144[15] = v143;

    v145 = v211;
    v146 = v222;
    v222[16] = v362;
    v146[17] = v145;

    v147 = v212;
    v148 = v222;
    v222[18] = v363;
    v148[19] = v147;

    v149 = v213;
    v150 = v222;
    v222[20] = v364;
    v150[21] = v149;

    v151 = v214;
    v152 = v222;
    v222[22] = v365;
    v152[23] = v151;

    v153 = v215;
    v154 = v222;
    v222[24] = v366;
    v154[25] = v153;

    v155 = v216;
    v156 = v222;
    v222[26] = v367;
    v156[27] = v155;

    v157 = v217;
    v158 = v222;
    v222[28] = v368;
    v158[29] = v157;

    v159 = v218;
    v160 = v222;
    v222[30] = v369;
    v160[31] = v159;

    v161 = v219;
    v162 = v222;
    v222[32] = v370;
    v162[33] = v161;

    v163 = v221;
    v164 = v222;
    v222[34] = v371;
    v164[35] = v163;
    sub_1B0394964();

    if (os_log_type_enabled(v224, v225))
    {
      v165 = v174;
      v167 = sub_1B0E45D78();
      v166[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v168 = sub_1B03949A8(0);
      v169 = sub_1B03949A8(1);
      v170 = &v405;
      v405 = v167;
      v171 = &v404;
      v404 = v168;
      v172 = &v403;
      v403 = v169;
      sub_1B0394A48(2, &v405);
      sub_1B0394A48(6, v170);
      v401 = v354;
      v402 = v203;
      sub_1B03949FC(&v401, v170, v171, v172);
      v173 = v165;
      if (v165)
      {

        __break(1u);
      }

      else
      {
        v401 = v355;
        v402 = v204;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[15] = 0;
        v401 = v356;
        v402 = v205;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[14] = 0;
        v401 = v357;
        v402 = v206;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[13] = 0;
        v401 = v358;
        v402 = v207;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[12] = 0;
        v401 = v359;
        v402 = v208;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[11] = 0;
        v401 = v360;
        v402 = v209;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[10] = 0;
        v401 = v361;
        v402 = v210;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[9] = 0;
        v401 = v362;
        v402 = v211;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[8] = 0;
        v401 = v363;
        v402 = v212;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[7] = 0;
        v401 = v364;
        v402 = v213;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[6] = 0;
        v401 = v365;
        v402 = v214;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[5] = 0;
        v401 = v366;
        v402 = v215;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[4] = 0;
        v401 = v367;
        v402 = v216;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[3] = 0;
        v401 = v368;
        v402 = v217;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[2] = 0;
        v401 = v369;
        v402 = v218;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[1] = 0;
        v401 = v370;
        v402 = v219;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v166[0] = 0;
        v401 = v371;
        v402 = v221;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        _os_log_impl(&dword_1B0389000, v224, v225, "[%.*hhx-%.*X] Did start back-fill %s with sync ID #%u", v167, 0x27u);
        sub_1B03998A8(v168);
        sub_1B03998A8(v169);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v224);
    return (*(v374 + 8))(v377, v373);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09D4B98(__int16 a1)
{
  v4 = swift_allocObject();

  swift_weakInit();

  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = a1;
  v5 = sub_1B03F1FC4(3u, 0, 0, sub_1B0A1B0F8, v3);

  return v5;
}

uint64_t sub_1B09D4C94()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E37E8, &qword_1B0EA2DF8);
  return sub_1B0E44B88();
}

uint64_t sub_1B09D4CE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a1;
  v7 = a2 + 16;
  v6 = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B09D4DB0(a3);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B09D4DB0(unsigned int a1)
{
  v426 = a1;
  v338 = sub_1B039BBE8;
  v339 = sub_1B0A1B06C;
  v340 = sub_1B0394C30;
  v341 = sub_1B0394C24;
  v342 = sub_1B039BA2C;
  v343 = sub_1B039BA88;
  v344 = sub_1B039BB94;
  v345 = sub_1B0394C24;
  v346 = sub_1B039BBA0;
  v347 = sub_1B039BC08;
  v348 = sub_1B0A1B104;
  v349 = sub_1B06D4E08;
  v350 = sub_1B03F7B10;
  v351 = sub_1B039BC08;
  v352 = sub_1B0A1B098;
  v353 = sub_1B06D4E08;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0399178;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BA94;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0399178;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B03991EC;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0399348;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B03991EC;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B0399348;
  v375 = sub_1B039BBE8;
  v376 = sub_1B0A1B06C;
  v377 = sub_1B0394C24;
  v378 = sub_1B039BA2C;
  v379 = sub_1B039BA88;
  v380 = sub_1B0394C24;
  v381 = sub_1B039BBA0;
  v382 = sub_1B039BC08;
  v383 = sub_1B03F7B10;
  v384 = sub_1B039BC08;
  v385 = sub_1B0A1B098;
  v386 = sub_1B06D4E08;
  v387 = sub_1B0A1B0C4;
  v388 = sub_1B039BCF8;
  v389 = sub_1B0398F5C;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0399178;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0398F5C;
  v394 = sub_1B039BA94;
  v395 = sub_1B0398F5C;
  v396 = sub_1B0398F5C;
  v397 = sub_1B0399178;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0398F5C;
  v400 = sub_1B03991EC;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0398F5C;
  v403 = sub_1B03991EC;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0399348;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B039BCEC;
  v447 = 0;
  v446 = 0;
  memset(&v444[1], 0, 14);
  v410 = 0;
  v418 = 0;
  v411 = sub_1B0E439A8();
  v412 = *(v411 - 8);
  v413 = v411 - 8;
  v414 = (*(v412 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v415 = v189 - v414;
  v416 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v417 = v189 - v416;
  v419 = _s6LoggerVMa();
  v420 = (*(*(v419 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v418);
  v421 = v189 - v420;
  v422 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v423 = v189 - v422;
  v424 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v425 = v189 - v424;
  v431 = sub_1B0E44468();
  v429 = *(v431 - 8);
  v430 = v431 - 8;
  v427 = (*(v429 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v426);
  v432 = (v189 - v427);
  v447 = v8;
  v446 = v1;

  v428 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v428);
  v9 = v429;
  *v432 = v428;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v433 = sub_1B0E44488();
  (*(v429 + 8))(v432, v431);
  result = v433;
  if (v433)
  {

    v333 = v337 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v335 = &v445;
    swift_beginAccess();
    v336 = *v333;
    v334 = *(v333 + 8) | (*(v333 + 12) << 32);
    swift_unknownObjectRetain();
    result = swift_endAccess();
    if (v336)
    {
      v331 = v336;
      v332 = v334 & 0xFFFFFFFFFFFFLL;
      v328 = (v334 & 0xFFFFFFFFFFFFLL) >> 32;
      v329 = v334;
      v330 = v336;
      v444[1] = v336;
      LODWORD(v444[2]) = v334;
      WORD2(v444[2]) = v328;
      if (sub_1B0A23478(v328, v426))
      {
        v12 = v417;
        v278 = &unk_1EB737000;
        sub_1B0394784(v337 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v425);
        (*(v412 + 16))(v12, v425, v411);
        sub_1B039480C(v425);

        sub_1B0394784(v337 + v278[314], v423);
        v13 = (v423 + *(v419 + 20));
        v280 = *v13;
        v281 = *(v13 + 1);
        sub_1B039480C(v423);

        v279 = 24;
        v299 = 7;
        v14 = swift_allocObject();
        v15 = v281;
        v286 = v14;
        *(v14 + 16) = v280;
        *(v14 + 20) = v15;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v16 = swift_allocObject();
        v17 = v281;
        v282 = v16;
        *(v16 + 16) = v280;
        *(v16 + 20) = v17;

        v298 = 32;
        v18 = swift_allocObject();
        v19 = v282;
        v290 = v18;
        *(v18 + 16) = v375;
        *(v18 + 24) = v19;
        sub_1B0394868();
        sub_1B0394868();

        swift_unknownObjectRetain();
        v284 = 30;
        v20 = swift_allocObject();
        v21 = v329;
        v22 = v328;
        v283 = v20;
        *(v20 + 16) = v330;
        *(v20 + 24) = v21;
        *(v20 + 28) = v22;

        v23 = swift_allocObject();
        v24 = v283;
        v293 = v23;
        *(v23 + 16) = v376;
        *(v23 + 24) = v24;

        swift_unknownObjectRetain();
        v25 = swift_allocObject();
        v26 = v329;
        v27 = v328;
        v295 = v25;
        *(v25 + 16) = v330;
        *(v25 + 24) = v26;
        *(v25 + 28) = v27;
        swift_unknownObjectRetain();
        v28 = swift_allocObject();
        v29 = v329;
        v30 = v328;
        v300 = v28;
        *(v28 + 16) = v330;
        *(v28 + 24) = v29;
        *(v28 + 28) = v30;
        v326 = sub_1B0E43988();
        v327 = sub_1B0E45908();
        v297 = 17;
        v302 = swift_allocObject();
        v288 = 16;
        *(v302 + 16) = 16;
        v303 = swift_allocObject();
        v292 = 4;
        *(v303 + 16) = 4;
        v31 = swift_allocObject();
        v285 = v31;
        *(v31 + 16) = v340;
        *(v31 + 24) = 0;
        v32 = swift_allocObject();
        v33 = v285;
        v304 = v32;
        *(v32 + 16) = v377;
        *(v32 + 24) = v33;
        v305 = swift_allocObject();
        *(v305 + 16) = 0;
        v306 = swift_allocObject();
        *(v306 + 16) = 1;
        v34 = swift_allocObject();
        v35 = v286;
        v287 = v34;
        *(v34 + 16) = v378;
        *(v34 + 24) = v35;
        v36 = swift_allocObject();
        v37 = v287;
        v307 = v36;
        *(v36 + 16) = v379;
        *(v36 + 24) = v37;
        v308 = swift_allocObject();
        *(v308 + 16) = v288;
        v309 = swift_allocObject();
        *(v309 + 16) = v292;
        v38 = swift_allocObject();
        v289 = v38;
        *(v38 + 16) = v344;
        *(v38 + 24) = 0;
        v39 = swift_allocObject();
        v40 = v289;
        v310 = v39;
        *(v39 + 16) = v380;
        *(v39 + 24) = v40;
        v311 = swift_allocObject();
        *(v311 + 16) = 0;
        v312 = swift_allocObject();
        *(v312 + 16) = v292;
        v41 = swift_allocObject();
        v42 = v290;
        v291 = v41;
        *(v41 + 16) = v381;
        *(v41 + 24) = v42;
        v43 = swift_allocObject();
        v44 = v291;
        v313 = v43;
        *(v43 + 16) = v382;
        *(v43 + 24) = v44;
        v314 = swift_allocObject();
        *(v314 + 16) = 0;
        v315 = swift_allocObject();
        *(v315 + 16) = v292;
        v45 = swift_allocObject();
        v46 = v293;
        v294 = v45;
        *(v45 + 16) = v383;
        *(v45 + 24) = v46;
        v47 = swift_allocObject();
        v48 = v294;
        v316 = v47;
        *(v47 + 16) = v384;
        *(v47 + 24) = v48;
        v317 = swift_allocObject();
        *(v317 + 16) = 0;
        v318 = swift_allocObject();
        *(v318 + 16) = 2;
        v49 = swift_allocObject();
        v50 = v295;
        v296 = v49;
        *(v49 + 16) = v385;
        *(v49 + 24) = v50;
        v51 = swift_allocObject();
        v52 = v296;
        v319 = v51;
        *(v51 + 16) = v386;
        *(v51 + 24) = v52;
        v320 = swift_allocObject();
        *(v320 + 16) = 32;
        v321 = swift_allocObject();
        *(v321 + 16) = 8;
        v53 = swift_allocObject();
        v54 = v300;
        v301 = v53;
        *(v53 + 16) = v387;
        *(v53 + 24) = v54;
        v55 = swift_allocObject();
        v56 = v301;
        v323 = v55;
        *(v55 + 16) = v388;
        *(v55 + 24) = v56;
        v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v322 = sub_1B0E46A48();
        v324 = v57;

        v58 = v302;
        v59 = v324;
        *v324 = v389;
        v59[1] = v58;

        v60 = v303;
        v61 = v324;
        v324[2] = v390;
        v61[3] = v60;

        v62 = v304;
        v63 = v324;
        v324[4] = v391;
        v63[5] = v62;

        v64 = v305;
        v65 = v324;
        v324[6] = v392;
        v65[7] = v64;

        v66 = v306;
        v67 = v324;
        v324[8] = v393;
        v67[9] = v66;

        v68 = v307;
        v69 = v324;
        v324[10] = v394;
        v69[11] = v68;

        v70 = v308;
        v71 = v324;
        v324[12] = v395;
        v71[13] = v70;

        v72 = v309;
        v73 = v324;
        v324[14] = v396;
        v73[15] = v72;

        v74 = v310;
        v75 = v324;
        v324[16] = v397;
        v75[17] = v74;

        v76 = v311;
        v77 = v324;
        v324[18] = v398;
        v77[19] = v76;

        v78 = v312;
        v79 = v324;
        v324[20] = v399;
        v79[21] = v78;

        v80 = v313;
        v81 = v324;
        v324[22] = v400;
        v81[23] = v80;

        v82 = v314;
        v83 = v324;
        v324[24] = v401;
        v83[25] = v82;

        v84 = v315;
        v85 = v324;
        v324[26] = v402;
        v85[27] = v84;

        v86 = v316;
        v87 = v324;
        v324[28] = v403;
        v87[29] = v86;

        v88 = v317;
        v89 = v324;
        v324[30] = v404;
        v89[31] = v88;

        v90 = v318;
        v91 = v324;
        v324[32] = v405;
        v91[33] = v90;

        v92 = v319;
        v93 = v324;
        v324[34] = v406;
        v93[35] = v92;

        v94 = v320;
        v95 = v324;
        v324[36] = v407;
        v95[37] = v94;

        v96 = v321;
        v97 = v324;
        v324[38] = v408;
        v97[39] = v96;

        v98 = v323;
        v99 = v324;
        v324[40] = v409;
        v99[41] = v98;
        sub_1B0394964();

        if (os_log_type_enabled(v326, v327))
        {
          v100 = v410;
          v271 = sub_1B0E45D78();
          v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v272 = sub_1B03949A8(0);
          v273 = sub_1B03949A8(1);
          v274 = &v438;
          v438 = v271;
          v275 = &v437;
          v437 = v272;
          v276 = &v436;
          v436 = v273;
          sub_1B0394A48(2, &v438);
          sub_1B0394A48(7, v274);
          v434 = v389;
          v435 = v302;
          sub_1B03949FC(&v434, v274, v275, v276);
          v277 = v100;
          if (v100)
          {

            __break(1u);
          }

          else
          {
            v434 = v390;
            v435 = v303;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v269 = 0;
            v434 = v391;
            v435 = v304;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v268 = 0;
            v434 = v392;
            v435 = v305;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v267 = 0;
            v434 = v393;
            v435 = v306;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v266 = 0;
            v434 = v394;
            v435 = v307;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v265 = 0;
            v434 = v395;
            v435 = v308;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v264 = 0;
            v434 = v396;
            v435 = v309;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v263 = 0;
            v434 = v397;
            v435 = v310;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v262 = 0;
            v434 = v398;
            v435 = v311;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v261 = 0;
            v434 = v399;
            v435 = v312;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v260 = 0;
            v434 = v400;
            v435 = v313;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v259 = 0;
            v434 = v401;
            v435 = v314;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v258 = 0;
            v434 = v402;
            v435 = v315;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v257 = 0;
            v434 = v403;
            v435 = v316;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v256 = 0;
            v434 = v404;
            v435 = v317;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v255 = 0;
            v434 = v405;
            v435 = v318;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v254 = 0;
            v434 = v406;
            v435 = v319;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v253 = 0;
            v434 = v407;
            v435 = v320;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v252 = 0;
            v434 = v408;
            v435 = v321;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            v251 = 0;
            v434 = v409;
            v435 = v323;
            sub_1B03949FC(&v434, &v438, &v437, &v436);
            _os_log_impl(&dword_1B0389000, v326, v327, "[%.*hhx-%.*X] Completing back-fill sync (sync: #%u, id: %hu) %s.", v271, 0x2Bu);
            sub_1B03998A8(v272);
            sub_1B03998A8(v273);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v326);
        (*(v412 + 8))(v417, v411);
        swift_unknownObjectRetain();
        swift_getObjectType();
        [v330 completeWithStatus_];
        swift_unknownObjectRelease();
        v249 = (v337 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
        v250 = &v439;
        swift_beginAccess();
        v101 = v249;
        v102 = *v249;
        *v249 = 0;
        *(v101 + 2) = 0;
        *(v101 + 6) = 0;
        swift_unknownObjectRelease();
        swift_endAccess();
        return swift_unknownObjectRelease();
      }

      else
      {
        v103 = v415;
        v198 = &unk_1EB737000;
        sub_1B0394784(v337 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v421);
        (*(v412 + 16))(v103, v421, v411);
        sub_1B039480C(v421);

        sub_1B0394784(v337 + v198[314], v423);
        v104 = (v423 + *(v419 + 20));
        v200 = *v104;
        v201 = *(v104 + 1);
        sub_1B039480C(v423);

        v199 = 24;
        v220 = 7;
        v105 = swift_allocObject();
        v106 = v201;
        v206 = v105;
        *(v105 + 16) = v200;
        *(v105 + 20) = v106;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v107 = swift_allocObject();
        v108 = v201;
        v202 = v107;
        *(v107 + 16) = v200;
        *(v107 + 20) = v108;

        v219 = 32;
        v109 = swift_allocObject();
        v110 = v202;
        v210 = v109;
        *(v109 + 16) = v338;
        *(v109 + 24) = v110;
        sub_1B0394868();
        sub_1B0394868();

        v212 = swift_allocObject();
        *(v212 + 16) = v426;
        swift_unknownObjectRetain();
        v204 = 30;
        v111 = swift_allocObject();
        v112 = v329;
        v113 = v328;
        v203 = v111;
        *(v111 + 16) = v330;
        *(v111 + 24) = v112;
        *(v111 + 28) = v113;

        v114 = swift_allocObject();
        v115 = v203;
        v215 = v114;
        *(v114 + 16) = v339;
        *(v114 + 24) = v115;

        swift_unknownObjectRetain();
        v116 = swift_allocObject();
        v117 = v329;
        v118 = v328;
        v221 = v116;
        *(v116 + 16) = v330;
        *(v116 + 24) = v117;
        *(v116 + 28) = v118;
        v247 = sub_1B0E43988();
        v248 = sub_1B0E45908();
        v217 = 17;
        v223 = swift_allocObject();
        v208 = 16;
        *(v223 + 16) = 16;
        v224 = swift_allocObject();
        v214 = 4;
        *(v224 + 16) = 4;
        v119 = swift_allocObject();
        v205 = v119;
        *(v119 + 16) = v340;
        *(v119 + 24) = 0;
        v120 = swift_allocObject();
        v121 = v205;
        v225 = v120;
        *(v120 + 16) = v341;
        *(v120 + 24) = v121;
        v226 = swift_allocObject();
        *(v226 + 16) = 0;
        v227 = swift_allocObject();
        *(v227 + 16) = 1;
        v122 = swift_allocObject();
        v123 = v206;
        v207 = v122;
        *(v122 + 16) = v342;
        *(v122 + 24) = v123;
        v124 = swift_allocObject();
        v125 = v207;
        v228 = v124;
        *(v124 + 16) = v343;
        *(v124 + 24) = v125;
        v229 = swift_allocObject();
        *(v229 + 16) = v208;
        v230 = swift_allocObject();
        *(v230 + 16) = v214;
        v126 = swift_allocObject();
        v209 = v126;
        *(v126 + 16) = v344;
        *(v126 + 24) = 0;
        v127 = swift_allocObject();
        v128 = v209;
        v231 = v127;
        *(v127 + 16) = v345;
        *(v127 + 24) = v128;
        v232 = swift_allocObject();
        *(v232 + 16) = 0;
        v233 = swift_allocObject();
        *(v233 + 16) = v214;
        v129 = swift_allocObject();
        v130 = v210;
        v211 = v129;
        *(v129 + 16) = v346;
        *(v129 + 24) = v130;
        v131 = swift_allocObject();
        v132 = v211;
        v234 = v131;
        *(v131 + 16) = v347;
        *(v131 + 24) = v132;
        v235 = swift_allocObject();
        *(v235 + 16) = 0;
        v236 = swift_allocObject();
        v218 = 2;
        *(v236 + 16) = 2;
        v133 = swift_allocObject();
        v134 = v212;
        v213 = v133;
        *(v133 + 16) = v348;
        *(v133 + 24) = v134;
        v135 = swift_allocObject();
        v136 = v213;
        v237 = v135;
        *(v135 + 16) = v349;
        *(v135 + 24) = v136;
        v238 = swift_allocObject();
        *(v238 + 16) = 0;
        v239 = swift_allocObject();
        *(v239 + 16) = v214;
        v137 = swift_allocObject();
        v138 = v215;
        v216 = v137;
        *(v137 + 16) = v350;
        *(v137 + 24) = v138;
        v139 = swift_allocObject();
        v140 = v216;
        v240 = v139;
        *(v139 + 16) = v351;
        *(v139 + 24) = v140;
        v241 = swift_allocObject();
        *(v241 + 16) = 0;
        v242 = swift_allocObject();
        *(v242 + 16) = v218;
        v141 = swift_allocObject();
        v142 = v221;
        v222 = v141;
        *(v141 + 16) = v352;
        *(v141 + 24) = v142;
        v143 = swift_allocObject();
        v144 = v222;
        v244 = v143;
        *(v143 + 16) = v353;
        *(v143 + 24) = v144;
        v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v243 = sub_1B0E46A48();
        v245 = v145;

        v146 = v223;
        v147 = v245;
        *v245 = v354;
        v147[1] = v146;

        v148 = v224;
        v149 = v245;
        v245[2] = v355;
        v149[3] = v148;

        v150 = v225;
        v151 = v245;
        v245[4] = v356;
        v151[5] = v150;

        v152 = v226;
        v153 = v245;
        v245[6] = v357;
        v153[7] = v152;

        v154 = v227;
        v155 = v245;
        v245[8] = v358;
        v155[9] = v154;

        v156 = v228;
        v157 = v245;
        v245[10] = v359;
        v157[11] = v156;

        v158 = v229;
        v159 = v245;
        v245[12] = v360;
        v159[13] = v158;

        v160 = v230;
        v161 = v245;
        v245[14] = v361;
        v161[15] = v160;

        v162 = v231;
        v163 = v245;
        v245[16] = v362;
        v163[17] = v162;

        v164 = v232;
        v165 = v245;
        v245[18] = v363;
        v165[19] = v164;

        v166 = v233;
        v167 = v245;
        v245[20] = v364;
        v167[21] = v166;

        v168 = v234;
        v169 = v245;
        v245[22] = v365;
        v169[23] = v168;

        v170 = v235;
        v171 = v245;
        v245[24] = v366;
        v171[25] = v170;

        v172 = v236;
        v173 = v245;
        v245[26] = v367;
        v173[27] = v172;

        v174 = v237;
        v175 = v245;
        v245[28] = v368;
        v175[29] = v174;

        v176 = v238;
        v177 = v245;
        v245[30] = v369;
        v177[31] = v176;

        v178 = v239;
        v179 = v245;
        v245[32] = v370;
        v179[33] = v178;

        v180 = v240;
        v181 = v245;
        v245[34] = v371;
        v181[35] = v180;

        v182 = v241;
        v183 = v245;
        v245[36] = v372;
        v183[37] = v182;

        v184 = v242;
        v185 = v245;
        v245[38] = v373;
        v185[39] = v184;

        v186 = v244;
        v187 = v245;
        v245[40] = v374;
        v187[41] = v186;
        sub_1B0394964();

        if (os_log_type_enabled(v247, v248))
        {
          v188 = v410;
          v191 = sub_1B0E45D78();
          v189[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v190 = 0;
          v192 = sub_1B03949A8(0);
          v193 = sub_1B03949A8(v190);
          v194 = v444;
          v444[0] = v191;
          v195 = &v443;
          v443 = v192;
          v196 = &v442;
          v442 = v193;
          sub_1B0394A48(0, v444);
          sub_1B0394A48(7, v194);
          v440 = v354;
          v441 = v223;
          sub_1B03949FC(&v440, v194, v195, v196);
          v197 = v188;
          if (v188)
          {

            __break(1u);
          }

          else
          {
            v440 = v355;
            v441 = v224;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[20] = 0;
            v440 = v356;
            v441 = v225;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[19] = 0;
            v440 = v357;
            v441 = v226;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[18] = 0;
            v440 = v358;
            v441 = v227;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[17] = 0;
            v440 = v359;
            v441 = v228;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[16] = 0;
            v440 = v360;
            v441 = v229;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[15] = 0;
            v440 = v361;
            v441 = v230;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[14] = 0;
            v440 = v362;
            v441 = v231;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[13] = 0;
            v440 = v363;
            v441 = v232;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[12] = 0;
            v440 = v364;
            v441 = v233;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[11] = 0;
            v440 = v365;
            v441 = v234;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[10] = 0;
            v440 = v366;
            v441 = v235;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[9] = 0;
            v440 = v367;
            v441 = v236;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[8] = 0;
            v440 = v368;
            v441 = v237;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[7] = 0;
            v440 = v369;
            v441 = v238;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[6] = 0;
            v440 = v370;
            v441 = v239;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[5] = 0;
            v440 = v371;
            v441 = v240;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[4] = 0;
            v440 = v372;
            v441 = v241;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[3] = 0;
            v440 = v373;
            v441 = v242;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            v189[2] = 0;
            v440 = v374;
            v441 = v244;
            sub_1B03949FC(&v440, v444, &v443, &v442);
            _os_log_impl(&dword_1B0389000, v247, v248, "[%.*hhx-%.*X] Back-fill sync (id: %hu) completed, but new back-fill sync is running (sync: #%u, id: %hu).", v191, 0x25u);
            v189[1] = 0;
            sub_1B03998A8(v192);
            sub_1B03998A8(v193);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v247);
        (*(v412 + 8))(v415, v411);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}