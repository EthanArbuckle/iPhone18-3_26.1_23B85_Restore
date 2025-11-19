uint64_t sub_100022A3C()
{
  v328 = v0;
  v1 = v0;
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[70];
  v272 = v0[69];
  v235 = v0[68];
  v278 = v0[67];
  v231 = v0[66];
  v284 = v0[64];
  v292 = v0[63];
  v310 = v0[65];
  v319 = v0[54];
  v260 = v0[53];
  v239 = v0[52];
  v5 = v0[49];
  v255 = v0[48];
  v6 = v0[46];
  v262 = v0[45];
  v266 = v0[47];
  v299 = v0[29];
  v0[26] = &_swiftEmptyArrayStorage;
  v7 = v0 + 26;
  v8 = *(v299 + 120);
  sub_1000A3868();
  sub_1000A2288();
  v9 = *(v4 + 8);
  v7[51] = v9;
  v7[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v2;
  v11 = v272;
  v9(v10, v272);
  sub_1000A3868();
  sub_1000A2248();
  v273 = v9;
  v9(v3, v11);
  sub_1000A2478();
  v12 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v7[53] = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v13 = *(v5 + 16);
  v7[54] = v13;
  v7[55] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v251 = v12;
  v245 = v13;
  v13(v239, v299 + v12, v255);
  v14 = *(v319 + 16);
  v7[56] = v14;
  v7[57] = (v319 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v310, v235, v260);
  v15 = enum case for Calendar.Component.year(_:);
  *(v7 + 162) = enum case for Calendar.Component.year(_:);
  v16 = *(v6 + 104);
  v7[58] = v16;
  v7[59] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v217 = v15;
  v218 = v16;
  v16(v266);
  sub_1000A2ED8();
  v17 = *(v6 + 8);
  v7[60] = v17;
  v7[61] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v261 = v7;
  v219 = v17;
  v17(v266, v262);
  sub_1000A2E88();
  if (sub_1000A2438())
  {
    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v18 = sub_1000A3538();
    sub_100001E38(v18, qword_1000C96B8);
    v19 = sub_1000A3518();
    v20 = sub_1000A3CC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[AMIQueryEngine] Client requested query start date is before five years ago.", v21, 2u);
    }

    v22 = v1[65];
    v23 = v1[63];
    v24 = v1[53];
    v25 = v1[54];

    (*(v25 + 8))(v22, v24);
    v14(v22, v23, v24);
  }

  v26 = v1[66];
  v14(v1[62], v1[67], v1[53]);
  if (sub_1000A2428())
  {
    v27 = v1[66];
    v28 = v1[62];
    v29 = v1[53];
    (*(v1[54] + 8))(v28, v29);
    v14(v28, v27, v29);
  }

  v220 = v1[76];
  v227 = v1[68];
  v224 = v1[66];
  v225 = v1[67];
  v30 = v1[65];
  v263 = v1[64];
  v221 = v1[63];
  v31 = v1[62];
  v32 = v1[60];
  v226 = v1[59];
  v34 = v1[53];
  v33 = v1[54];
  v223 = v1[52];
  v228 = v1[51];
  v311 = v1[49];
  v222 = v1[48];
  v35 = v1[42];
  v236 = v1[41];
  v240 = v1[44];
  v232 = v1[29];
  v14(v1[61], v30, v34);
  v267 = v14;
  v14(v32, v31, v34);
  sub_1000A2268();
  v36 = *(v33 + 8);
  v1[88] = v36;
  v1[89] = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v31, v34);
  v36(v221, v34);
  v36(v263, v34);
  v36(v30, v34);
  v37 = *(v311 + 8);
  v1[90] = v37;
  v1[91] = (v311 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v223, v222);
  v36(v224, v34);
  v36(v225, v34);
  v36(v227, v34);
  sub_1000A2288();
  v38 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v1[92] = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v245(v228, v299 + v251, v222);
  v39 = *(v35 + 16);
  v1[93] = v39;
  v1[94] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v240, v232 + v38, v236);
  v40 = *(v35 + 88);
  v1[95] = v40;
  v1[96] = (v35 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v41 = v40(v240, v236);
  v42 = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
  *(v1 + 215) = enum case for ElectricityInsightQuery.Granularity.hourly(_:);
  v285 = v36;
  v264 = v37;
  if (v41 == v42)
  {
    v44 = v1[60];
    v43 = v1[61];
    v252 = v1[73];
    v256 = v1[59];
    v45 = v1[57];
    v246 = v1[56];
    v46 = v1[53];
    v300 = v1[48];
    v47 = v36;
    v48 = v1[47];
    v49 = v1[45];
    v241 = v1[51];
    sub_1000A2E78();
    v218(v48, enum case for Calendar.Component.day(_:), v49);
    sub_1000A2ED8();
    v219(v48, v49);
    v267(v45, v43, v46);
    v267(v246, v44, v46);
    sub_1000A2268();
    v47(v44, v46);
    v47(v43, v46);
    v264(v241, v300);
    v47(v256, v46);
  }

  else if (v41 == enum case for ElectricityInsightQuery.Granularity.daily(_:))
  {
    v253 = v1[73];
    v51 = v1[60];
    v50 = v1[61];
    v301 = v1[59];
    v52 = v1[56];
    v53 = v1[57];
    v54 = v1[53];
    v55 = v1[51];
    v257 = v1[48];
    sub_1000A2E98();
    sub_1000A2E38();
    v267(v53, v50, v54);
    v267(v52, v51, v54);
    sub_1000A2268();
    v36(v51, v54);
    v36(v50, v54);
    v264(v55, v257);
    v36(v301, v54);
  }

  else if (v41 == enum case for ElectricityInsightQuery.Granularity.weekly(_:))
  {
    v258 = v1[73];
    v57 = v1[60];
    v56 = v1[61];
    v58 = v1[59];
    v60 = v1[56];
    v59 = v1[57];
    v61 = v1[53];
    v62 = v1[51];
    v302 = v1[48];
    sub_1000A2EA8();
    sub_1000A2E58();
    v267(v59, v56, v61);
    v267(v60, v57, v61);
    sub_1000A2268();
    v285(v57, v61);
    v285(v56, v61);
    v264(v62, v302);
    v285(v58, v61);
  }

  else
  {
    v259 = v1[73];
    v63 = v1[60];
    v64 = v1[61];
    v65 = v1[56];
    v66 = v1[57];
    v67 = v1[53];
    v68 = v1[51];
    v303 = v1[48];
    v254 = v1[59];
    if (v41 == enum case for ElectricityInsightQuery.Granularity.monthly(_:) || v41 == enum case for ElectricityInsightQuery.Granularity.yearly(_:))
    {
      v70 = v1[47];
      v71 = v1[45];
      sub_1000A2E88();
      v218(v70, v217, v71);
      sub_1000A2ED8();
      v219(v70, v71);
      v267(v66, v64, v67);
      v267(v65, v63, v67);
      sub_1000A2268();
      v285(v63, v67);
      v285(v64, v67);
      v264(v68, v303);
      v285(v254, v67);
    }

    else
    {
      v69 = v1[42];
      v242 = v1[41];
      v247 = v1[44];
      sub_1000A2E48();
      sub_1000A2EE8();
      v267(v66, v64, v67);
      v267(v65, v63, v67);
      sub_1000A2268();
      v285(v63, v67);
      v285(v64, v67);
      v37(v68, v303);
      v285(v254, v67);
      (*(v69 + 8))(v247, v242);
    }
  }

  v72 = v261;
  v73 = v1[73];
  v74 = v1[58];
  sub_1000A2288();
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v75 = v1[76];
  v76 = v1[72];
  v77 = v1[70];
  v78 = v1[69];
  v79 = sub_1000A3538();
  v1[97] = sub_100001E38(v79, qword_1000C96B8);
  (*(v77 + 16))(v76, v75, v78);
  v80 = sub_1000A3518();
  v81 = sub_1000A3CA8();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v1[72];
  v84 = v1[69];
  if (v82)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v327[0] = v86;
    *v85 = 136315138;
    sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval);
    v87 = sub_1000A3F28();
    v89 = v88;
    v273(v83, v84);
    v90 = sub_1000954AC(v87, v89, v327);

    *(v85 + 4) = v90;
    _os_log_impl(&_mh_execute_header, v80, v81, "[LoadEventsQueryEngine] Query Range: %s", v85, 0xCu);
    sub_10000F7B8(v86);
    v72 = v261;
  }

  else
  {

    v273(v83, v84);
  }

  v91 = v1[76];
  v92 = v1[73];
  v93 = v1[61];
  v94 = v1[58];
  v265 = v1;
  v95 = v1[53];
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  sub_1000A2248();
  LOBYTE(v91) = sub_1000A2438();
  v285(v93, v95);
  if ((v91 & 1) == 0)
  {
LABEL_52:
    v191 = v265[26];
    v265[102] = v191;
    v192 = *(v191 + 16);
    if (v192)
    {
      v265[103] = v192;
      v193 = v265[97];
      v194 = sub_1000A3518();
      v195 = sub_1000A3CA8();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        *v196 = 134217984;
        *(v196 + 4) = *(v191 + 16);
        _os_log_impl(&_mh_execute_header, v194, v195, "[LoadEventsQueryEngine] Final yield of %ld records", v196, 0xCu);
      }

      v197 = v265[29];

      v179 = *(v197 + 128);
      v265[104] = v179;
      v198 = *(v191 + 16);
      if (v198)
      {
        v298 = v179;
        v199 = v265[38];
        v201 = *(v199 + 16);
        v200 = v199 + 16;
        v202 = v191 + ((*(v200 + 64) + 32) & ~*(v200 + 64));
        v318 = *(v200 + 56);
        v326 = v201;

        v203 = &_swiftEmptyArrayStorage;
        do
        {
          v326(v265[39], v202, v265[37]);
          sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
          v204 = sub_1000A3458();
          v206 = v205;
          (*(v200 - 8))(v265[39], v265[37]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v203 = sub_100095044(0, *(v203 + 2) + 1, 1, v203);
          }

          v208 = *(v203 + 2);
          v207 = *(v203 + 3);
          if (v208 >= v207 >> 1)
          {
            v203 = sub_100095044((v207 > 1), v208 + 1, 1, v203);
          }

          *(v203 + 2) = v208 + 1;
          v209 = &v203[16 * v208];
          *(v209 + 4) = v204;
          *(v209 + 5) = v206;
          v202 += v318;
          --v198;
        }

        while (v198);

        v179 = v298;
      }

      else
      {
        v203 = &_swiftEmptyArrayStorage;
      }

      v265[105] = v203;
      v215 = sub_100025CDC;
    }

    else
    {
      v210 = v265[97];
      v211 = sub_1000A3518();
      v212 = sub_1000A3CA8();
      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        *v213 = 134217984;
        *(v213 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v211, v212, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v213, 0xCu);
      }

      v214 = v265[29];

      v179 = *(v214 + 128);
      v265[106] = v179;
      v215 = sub_100025FA4;
    }

    goto LABEL_71;
  }

  *(v1 + 216) = enum case for ElectricityInsightQuery.Granularity.daily(_:);
  *(v1 + 217) = enum case for ElectricityInsightQuery.Granularity.weekly(_:);
  *(v1 + 218) = enum case for ElectricityInsightQuery.Granularity.monthly(_:);
  *(v1 + 219) = enum case for ElectricityInsightQuery.Granularity.yearly(_:);
  *(v1 + 220) = enum case for Calendar.Component.day(_:);
  while (1)
  {
    v104 = *v72;
    v105 = *(*v72 + 16);
    if (v105)
    {
      break;
    }

    v106 = v265[73];
    v107 = v265[29];
    v108 = *(v107 + 136);
    v109 = swift_task_alloc();
    v109[2] = v107;
    v109[3] = v106;
    v109[4] = v72;
    sub_1000A3D58();

    v320 = *(v265 + 215);
    v304 = v265[95];
    v312 = v265[96];
    v286 = v265[93];
    v293 = v265[94];
    v274 = v265[81];
    v279 = v265[92];
    v268 = v265[80];
    v110 = v265[79];
    v111 = v265[73];
    v112 = v265[55];
    v113 = v265[50];
    v114 = v265[48];
    v115 = v265[43];
    v116 = v265[41];
    v117 = v265[29];
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    v268(v113, v117 + v110, v114);
    v286(v115, v117 + v279, v116);
    v118 = v304(v115, v116);
    if (v118 == v320)
    {
      v237 = *(v265 + 220);
      v313 = v265[90];
      v321 = v265[91];
      v294 = v265[88];
      v305 = v265[89];
      v243 = v265[86];
      v248 = v265[87];
      v229 = v265[84];
      v233 = v265[85];
      v119 = v265[82];
      v269 = v265[83];
      v275 = v265[71];
      v121 = v265[60];
      v120 = v265[61];
      v123 = v265[56];
      v122 = v265[57];
      v124 = v265[53];
      v125 = v265[50];
      v126 = v265[47];
      v280 = v265[55];
      v287 = v265[48];
      v127 = v265[45];
      sub_1000A2E78();
      v229(v126, v237, v127);
      sub_1000A2ED8();
      v243(v126, v127);
      v119(v122, v120, v124);
      v119(v123, v121, v124);
      sub_1000A2268();
      v128 = v294;
      v294(v121, v124);
      v294(v120, v124);
      v313(v125, v287);
    }

    else
    {
      if (v118 == *(v265 + 216))
      {
        v314 = v265[90];
        v322 = v265[91];
        v129 = v265[88];
        v130 = v265[83];
        v131 = v265[82];
        v133 = v265[60];
        v132 = v265[61];
        v135 = v265[56];
        v134 = v265[57];
        v295 = v265[55];
        v306 = v265[89];
        v136 = v265[53];
        v137 = v265[50];
        v281 = v265[71];
        v288 = v265[48];
        sub_1000A2E98();
        sub_1000A2E38();
        v131(v134, v132, v136);
        v131(v135, v133, v136);
        sub_1000A2268();
        v129(v133, v136);
        v129(v132, v136);
        v314(v137, v288);
        v129(v295, v136);
        goto LABEL_38;
      }

      if (v118 == *(v265 + 217))
      {
        v315 = v265[90];
        v323 = v265[91];
        v296 = v265[88];
        v307 = v265[89];
        v138 = v265[83];
        v139 = v265[82];
        v141 = v265[60];
        v140 = v265[61];
        v143 = v265[56];
        v142 = v265[57];
        v144 = v265[55];
        v145 = v265[53];
        v146 = v265[50];
        v282 = v265[71];
        v289 = v265[48];
        sub_1000A2EA8();
        sub_1000A2E58();
        v139(v142, v140, v145);
        v139(v143, v141, v145);
        sub_1000A2268();
        v296(v141, v145);
        v296(v140, v145);
        v315(v146, v289);
        v296(v144, v145);
        goto LABEL_38;
      }

      v297 = v265[90];
      v308 = v265[91];
      v316 = v265[88];
      v324 = v265[89];
      if (v118 != *(v265 + 218) && v118 != *(v265 + 219))
      {
        v147 = v265[83];
        v148 = v265[82];
        v249 = v265[71];
        v150 = v265[60];
        v149 = v265[61];
        v152 = v265[56];
        v151 = v265[57];
        v153 = v265[55];
        v154 = v265[53];
        v155 = v265[50];
        v270 = v265[48];
        v276 = v265[42];
        v283 = v265[41];
        v290 = v265[43];
        sub_1000A2E48();
        sub_1000A2EE8();
        v148(v151, v149, v154);
        v148(v152, v150, v154);
        sub_1000A2268();
        v316(v150, v154);
        v316(v149, v154);
        v297(v155, v270);
        v316(v153, v154);
        (*(v276 + 8))(v290, v283);
        goto LABEL_38;
      }

      v244 = v265[86];
      v250 = v265[87];
      v230 = v265[84];
      v234 = v265[85];
      v166 = *(v265 + 214);
      v167 = v265[82];
      v271 = v265[83];
      v277 = v265[71];
      v169 = v265[60];
      v168 = v265[61];
      v170 = v265[56];
      v238 = v265[57];
      v124 = v265[53];
      v171 = v265[50];
      v172 = v265[47];
      v280 = v265[55];
      v291 = v265[48];
      v173 = v265[45];
      sub_1000A2E88();
      v230(v172, v166, v173);
      sub_1000A2ED8();
      v244(v172, v173);
      v167(v238, v168, v124);
      v167(v170, v169, v124);
      sub_1000A2268();
      v128 = v316;
      v316(v169, v124);
      v316(v168, v124);
      v297(v171, v291);
    }

    v128(v280, v124);
LABEL_38:
    v156 = v265[97];
    (*(v265[70] + 40))(v265[73], v265[71], v265[69]);
    v157 = sub_1000A3518();
    v158 = sub_1000A3CA8();
    v72 = v261;
    if (os_log_type_enabled(v157, v158))
    {
      v159 = v265[73];
      v160 = v265[69];
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v327[0] = v162;
      *v161 = 136315138;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval);
      v163 = sub_1000A3F28();
      v165 = sub_1000954AC(v163, v164, v327);

      *(v161 + 4) = v165;
      _os_log_impl(&_mh_execute_header, v157, v158, "[LoadEventsQueryEngine] Next rack: %s", v161, 0xCu);
      sub_10000F7B8(v162);
    }

    v96 = v265[89];
    v97 = v265[88];
    v98 = v265[76];
    v99 = v265[73];
    v100 = v265[61];
    v101 = v265[58];
    v102 = v265[53];
    v103 = v265[54];
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v97(v101, v102);
    (*(v103 + 32))(v101, v100, v102);
    sub_1000A2248();
    LOBYTE(v99) = sub_1000A2438();
    v97(v100, v102);
    if ((v99 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v265[98] = v105;
  v174 = v265[97];
  v175 = sub_1000A3518();
  v176 = sub_1000A3CA8();
  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    *v177 = 134217984;
    *(v177 + 4) = *(v104 + 16);
    _os_log_impl(&_mh_execute_header, v175, v176, "[LoadEventsQueryEngine] Yielding %ld records", v177, 0xCu);
  }

  v178 = v265[29];

  v179 = *(v178 + 128);
  v265[99] = v179;
  v180 = *(v104 + 16);
  if (v180)
  {
    v181 = v265[38];
    v182 = v104 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
    v325 = *(v181 + 72);
    v309 = v179;
    v317 = *(v181 + 16);

    v183 = &_swiftEmptyArrayStorage;
    do
    {
      v184 = v265[38] + 16;
      v317(v265[40], v182, v265[37]);
      sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
      v185 = sub_1000A3458();
      v187 = v186;
      (*(v265[38] + 8))(v265[40], v265[37]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_100095044(0, *(v183 + 2) + 1, 1, v183);
      }

      v189 = *(v183 + 2);
      v188 = *(v183 + 3);
      if (v189 >= v188 >> 1)
      {
        v183 = sub_100095044((v188 > 1), v189 + 1, 1, v183);
      }

      *(v183 + 2) = v189 + 1;
      v190 = &v183[16 * v189];
      *(v190 + 4) = v185;
      *(v190 + 5) = v187;
      v182 += v325;
      --v180;
    }

    while (v180);

    v179 = v309;
  }

  else
  {
    v183 = &_swiftEmptyArrayStorage;
  }

  v265[101] = v183;
  v265[100] = 0;
  v215 = sub_1000248DC;
LABEL_71:

  return _swift_task_switch(v215, v179, 0);
}

uint64_t sub_1000248DC()
{
  v1 = v0[99];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v5, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[101];
    v7 = v0[34];

    sub_100022154(v7, &qword_1000C7D58, &qword_1000ABB20);
    v8 = 1;
  }

  else
  {
    v9 = v0[101];
    v10 = v0[36];
    v11 = v0[34];
    v13 = v0[31];
    v12 = v0[32];
    v14 = v0[30];
    (*(v13 + 16))(v12, v11, v14);
    sub_100022154(v11, &qword_1000C7D58, &qword_1000ABB20);
    v0[28] = v9;
    sub_1000A3BF8();
    (*(v13 + 8))(v12, v14);
    v8 = 0;
  }

  v15 = v0[36];
  v16 = v0[29];
  v17 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v17 - 8) + 56))(v15, v8, 1, v17);
  sub_100022154(v15, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100024AB8, v16, 0);
}

uint64_t sub_100024AB8()
{
  v226 = v0;
  v1 = v0 + 208;
  swift_beginAccess();
  v2 = *(v0 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 208);
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = v4[2];
    v6 = *(v0 + 208);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10009501C(0, v5, 1, v4);
    }

    v7 = *(v0 + 296);
    v8 = *(*(v0 + 304) + 80);
    v9 = v4 + ((v8 + 32) & ~v8);
    swift_arrayDestroy();
    if (v5)
    {
      v10 = *(*(v0 + 304) + 72);
      if (v10 * v5 > 0 || v9 >= &v9[v10 * v5 + (v4[2] - v5) * v10])
      {
        v12 = *(v0 + 296);
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v10)
      {
        v22 = *(v0 + 296);
        swift_arrayInitWithTakeBackToFront();
      }

      v4[2] -= v5;
    }

    goto LABEL_22;
  }

  if (v4[3] > 1uLL)
  {
    v14 = *(v0 + 304);
    sub_10000275C(&qword_1000C7ED0, &unk_1000ABD58);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    if (v15)
    {
      if (v18 - v16 != 0x8000000000000000 || v15 != -1)
      {
        v17[2] = 0;
        v17[3] = 2 * ((v18 - v16) / v15);

        v4 = v17;
        goto LABEL_22;
      }
    }

    else
    {
LABEL_87:
      __break(1u);
    }

    __break(1u);
    return _swift_task_switch(v18, v19, v20);
  }

  v13 = *(v0 + 208);

  v4 = &_swiftEmptyArrayStorage;
LABEL_22:
  *(v0 + 208) = v4;
  swift_endAccess();
  v23 = *(v0 + 800);
  v168 = *(v0 + 784);
  v183 = (v0 + 208);
  while (1)
  {
    v24 = *(v0 + 584);
    v25 = *(v0 + 232);
    v26 = *(v25 + 136);
    v27 = swift_task_alloc();
    v27[2] = v25;
    v27[3] = v24;
    v27[4] = v1;
    sub_1000A3D58();
    if (!v23)
    {

      goto LABEL_31;
    }

    v28 = *(v0 + 776);

    swift_errorRetain();
    v29 = sub_1000A3518();
    v30 = sub_1000A3CC8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 584);
      v32 = *(v0 + 552);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v225[0] = v35;
      *v33 = 136315394;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval);
      v36 = sub_1000A3F28();
      v38 = sub_1000954AC(v36, v37, v225);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v39;
      *v34 = v39;
      _os_log_impl(&_mh_execute_header, v29, v30, "[LoadEventsQueryEngine] Error processing rack %s: %@", v33, 0x16u);
      sub_100022154(v34, &unk_1000C7740, &qword_1000AB610);

      sub_10000F7B8(v35);
    }

    v40 = sub_1000A2348();
    v41 = [v40 code];
    v42 = *(v0 + 776);
    if (v41 == 134060)
    {
      break;
    }

    swift_errorRetain();
    v43 = sub_1000A3518();
    v44 = sub_1000A3CC8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "[LoadEventsQueryEngine] Error detected %@", v45, 0xCu);
      sub_100022154(v46, &unk_1000C7740, &qword_1000AB610);
    }

    else
    {
    }

LABEL_31:
    v218 = *(v0 + 860);
    v205 = *(v0 + 760);
    v211 = *(v0 + 768);
    v199 = *(v0 + 752);
    v188 = *(v0 + 736);
    v193 = *(v0 + 744);
    v184 = *(v0 + 648);
    v48 = *(v0 + 640);
    v49 = *(v0 + 632);
    v50 = *(v0 + 584);
    v51 = *(v0 + 440);
    v52 = *(v0 + 400);
    v53 = *(v0 + 384);
    v54 = *(v0 + 344);
    v55 = *(v0 + 328);
    v56 = *(v0 + 232);
    swift_beginAccess();
    sub_1000A2248();
    swift_endAccess();
    v48(v52, v56 + v49, v53);
    v193(v54, v56 + v188, v55);
    v57 = v205(v54, v55);
    if (v57 == v218)
    {
      v173 = *(v0 + 880);
      v212 = *(v0 + 720);
      v219 = *(v0 + 728);
      v200 = *(v0 + 704);
      v206 = *(v0 + 712);
      v175 = *(v0 + 688);
      v177 = *(v0 + 696);
      v169 = *(v0 + 672);
      v171 = *(v0 + 680);
      v180 = *(v0 + 664);
      v58 = *(v0 + 656);
      v60 = *(v0 + 480);
      v59 = *(v0 + 488);
      v62 = *(v0 + 448);
      v61 = *(v0 + 456);
      v185 = *(v0 + 568);
      v189 = *(v0 + 440);
      v63 = *(v0 + 424);
      v64 = *(v0 + 400);
      v65 = *(v0 + 376);
      v194 = *(v0 + 384);
      v66 = *(v0 + 360);
      sub_1000A2E78();
      v169(v65, v173, v66);
      sub_1000A2ED8();
      v175(v65, v66);
      v58(v61, v59, v63);
      v58(v62, v60, v63);
      sub_1000A2268();
      v67 = v200;
      v200(v60, v63);
      v200(v59, v63);
      v212(v64, v194);
    }

    else
    {
      if (v57 == *(v0 + 864))
      {
        v213 = *(v0 + 720);
        v220 = *(v0 + 728);
        v207 = *(v0 + 712);
        v68 = *(v0 + 704);
        v69 = *(v0 + 664);
        v70 = *(v0 + 656);
        v190 = *(v0 + 568);
        v72 = *(v0 + 480);
        v71 = *(v0 + 488);
        v74 = *(v0 + 448);
        v73 = *(v0 + 456);
        v201 = *(v0 + 440);
        v75 = *(v0 + 424);
        v76 = *(v0 + 400);
        v195 = *(v0 + 384);
        sub_1000A2E98();
        sub_1000A2E38();
        v70(v73, v71, v75);
        v70(v74, v72, v75);
        sub_1000A2268();
        v68(v72, v75);
        v68(v71, v75);
        v213(v76, v195);
        v68(v201, v75);
        goto LABEL_41;
      }

      if (v57 == *(v0 + 868))
      {
        v214 = *(v0 + 720);
        v221 = *(v0 + 728);
        v202 = *(v0 + 704);
        v208 = *(v0 + 712);
        v77 = *(v0 + 664);
        v78 = *(v0 + 656);
        v80 = *(v0 + 480);
        v79 = *(v0 + 488);
        v82 = *(v0 + 448);
        v81 = *(v0 + 456);
        v83 = *(v0 + 440);
        v84 = *(v0 + 424);
        v85 = *(v0 + 400);
        v191 = *(v0 + 568);
        v196 = *(v0 + 384);
        sub_1000A2EA8();
        sub_1000A2E58();
        v78(v81, v79, v84);
        v78(v82, v80, v84);
        sub_1000A2268();
        v202(v80, v84);
        v202(v79, v84);
        v214(v85, v196);
        v202(v83, v84);
        goto LABEL_41;
      }

      v203 = *(v0 + 720);
      v209 = *(v0 + 728);
      v215 = *(v0 + 704);
      v222 = *(v0 + 712);
      if (v57 != *(v0 + 872) && v57 != *(v0 + 876))
      {
        v86 = *(v0 + 664);
        v87 = *(v0 + 656);
        v89 = *(v0 + 480);
        v88 = *(v0 + 488);
        v91 = *(v0 + 448);
        v90 = *(v0 + 456);
        v92 = *(v0 + 440);
        v93 = *(v0 + 424);
        v94 = *(v0 + 400);
        v178 = *(v0 + 568);
        v181 = *(v0 + 384);
        v186 = *(v0 + 336);
        v192 = *(v0 + 328);
        v197 = *(v0 + 344);
        sub_1000A2E48();
        sub_1000A2EE8();
        v87(v90, v88, v93);
        v87(v91, v89, v93);
        sub_1000A2268();
        v215(v89, v93);
        v215(v88, v93);
        v203(v94, v181);
        v215(v92, v93);
        (*(v186 + 8))(v197, v192);
        goto LABEL_41;
      }

      v176 = *(v0 + 688);
      v179 = *(v0 + 696);
      v170 = *(v0 + 672);
      v172 = *(v0 + 680);
      v115 = *(v0 + 856);
      v182 = *(v0 + 664);
      v116 = *(v0 + 656);
      v118 = *(v0 + 480);
      v117 = *(v0 + 488);
      v119 = *(v0 + 448);
      v174 = *(v0 + 456);
      v187 = *(v0 + 568);
      v189 = *(v0 + 440);
      v63 = *(v0 + 424);
      v120 = *(v0 + 400);
      v121 = *(v0 + 376);
      v198 = *(v0 + 384);
      v122 = *(v0 + 360);
      sub_1000A2E88();
      v170(v121, v115, v122);
      sub_1000A2ED8();
      v176(v121, v122);
      v116(v174, v117, v63);
      v116(v119, v118, v63);
      sub_1000A2268();
      v67 = v215;
      v215(v118, v63);
      v215(v117, v63);
      v203(v120, v198);
    }

    v67(v189, v63);
LABEL_41:
    v95 = *(v0 + 776);
    (*(*(v0 + 560) + 40))(*(v0 + 584), *(v0 + 568), *(v0 + 552));
    v96 = sub_1000A3518();
    v97 = sub_1000A3CA8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = *(v0 + 584);
      v99 = *(v0 + 552);
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v225[0] = v101;
      *v100 = 136315138;
      sub_100032134(&qword_1000C7ED8, &type metadata accessor for DateInterval);
      v102 = sub_1000A3F28();
      v104 = sub_1000954AC(v102, v103, v225);

      *(v100 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v96, v97, "[LoadEventsQueryEngine] Next rack: %s", v100, 0xCu);
      sub_10000F7B8(v101);
    }

    v105 = *(v0 + 712);
    v106 = *(v0 + 704);
    v107 = *(v0 + 608);
    v108 = *(v0 + 584);
    v109 = *(v0 + 488);
    v110 = *(v0 + 464);
    v111 = *(v0 + 424);
    v112 = *(v0 + 432);
    swift_beginAccess();
    sub_1000A2288();
    swift_endAccess();
    v106(v110, v111);
    (*(v112 + 32))(v110, v109, v111);
    sub_1000A2248();
    LOBYTE(v108) = sub_1000A2438();
    v18 = (v106)(v109, v111);
    if ((v108 & 1) == 0)
    {
      goto LABEL_61;
    }

    v23 = 0;
    v1 = v0 + 208;
    v113 = *v183;
    v114 = *(*v183 + 16);
    if (v114)
    {
      *(v0 + 784) = v168 + v114;
      if (!__OFADD__(v168, v114))
      {
        v123 = *(v0 + 776);
        v124 = sub_1000A3518();
        v125 = sub_1000A3CA8();
        if (os_log_type_enabled(v124, v125))
        {
          v126 = swift_slowAlloc();
          *v126 = 134217984;
          *(v126 + 4) = *(v113 + 16);
          _os_log_impl(&_mh_execute_header, v124, v125, "[LoadEventsQueryEngine] Yielding %ld records", v126, 0xCu);
        }

        v127 = *(v0 + 232);

        v19 = *(v127 + 128);
        *(v0 + 792) = v19;
        v128 = *(v113 + 16);
        if (v128)
        {
          v129 = *(v0 + 304);
          v130 = v113 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
          v223 = *(v129 + 72);
          v210 = v19;
          v216 = *(v129 + 16);

          v131 = &_swiftEmptyArrayStorage;
          do
          {
            v132 = *(v0 + 304) + 16;
            v216(*(v0 + 320), v130, *(v0 + 296));
            sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
            v133 = sub_1000A3458();
            v135 = v134;
            (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v131 = sub_100095044(0, *(v131 + 2) + 1, 1, v131);
            }

            v137 = *(v131 + 2);
            v136 = *(v131 + 3);
            if (v137 >= v136 >> 1)
            {
              v131 = sub_100095044((v136 > 1), v137 + 1, 1, v131);
            }

            *(v131 + 2) = v137 + 1;
            v138 = &v131[16 * v137];
            *(v138 + 4) = v133;
            *(v138 + 5) = v135;
            v130 += v223;
            --v128;
          }

          while (v128);

          v19 = v210;
        }

        else
        {
          v131 = &_swiftEmptyArrayStorage;
        }

        *(v0 + 808) = v131;
        *(v0 + 800) = 0;
        v166 = sub_1000248DC;
        goto LABEL_82;
      }

LABEL_86:
      __break(1u);
      goto LABEL_87;
    }
  }

  v139 = sub_1000A3518();
  v140 = sub_1000A3CC8();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&_mh_execute_header, v139, v140, "[LoadEventsQueryEngine] Core Data error detected, stopping processing", v141, 2u);
  }

LABEL_61:
  v142 = *(v0 + 208);
  *(v0 + 816) = v142;
  v143 = *(v142 + 16);
  if (v143)
  {
    *(v0 + 824) = v168 + v143;
    if (__OFADD__(v168, v143))
    {
      __break(1u);
      goto LABEL_86;
    }

    v144 = *(v0 + 776);
    v145 = sub_1000A3518();
    v146 = sub_1000A3CA8();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 134217984;
      *(v147 + 4) = *(v142 + 16);
      _os_log_impl(&_mh_execute_header, v145, v146, "[LoadEventsQueryEngine] Final yield of %ld records", v147, 0xCu);
    }

    v148 = *(v0 + 232);

    v19 = *(v148 + 128);
    *(v0 + 832) = v19;
    v149 = *(v142 + 16);
    if (v149)
    {
      v204 = v19;
      v150 = *(v0 + 304);
      v152 = *(v150 + 16);
      v151 = v150 + 16;
      v153 = v142 + ((*(v151 + 64) + 32) & ~*(v151 + 64));
      v217 = *(v151 + 56);
      v224 = v152;

      v154 = &_swiftEmptyArrayStorage;
      do
      {
        v224(*(v0 + 312), v153, *(v0 + 296));
        sub_100032134(&qword_1000C7EC0, &type metadata accessor for InsightRecordPayload);
        v155 = sub_1000A3458();
        v157 = v156;
        (*(v151 - 8))(*(v0 + 312), *(v0 + 296));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_100095044(0, *(v154 + 2) + 1, 1, v154);
        }

        v159 = *(v154 + 2);
        v158 = *(v154 + 3);
        if (v159 >= v158 >> 1)
        {
          v154 = sub_100095044((v158 > 1), v159 + 1, 1, v154);
        }

        *(v154 + 2) = v159 + 1;
        v160 = &v154[16 * v159];
        *(v160 + 4) = v155;
        *(v160 + 5) = v157;
        v153 += v217;
        --v149;
      }

      while (v149);

      v19 = v204;
    }

    else
    {
      v154 = &_swiftEmptyArrayStorage;
    }

    *(v0 + 840) = v154;
    v166 = sub_100025CDC;
  }

  else
  {
    v161 = *(v0 + 776);
    v162 = sub_1000A3518();
    v163 = sub_1000A3CA8();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 134217984;
      *(v164 + 4) = v168;
      _os_log_impl(&_mh_execute_header, v162, v163, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v164, 0xCu);
    }

    v165 = *(v0 + 232);

    v19 = *(v165 + 128);
    *(v0 + 848) = v19;
    v166 = sub_100025FA4;
  }

LABEL_82:
  v18 = v166;
  v20 = 0;

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_100025CDC()
{
  v1 = v0[104];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  swift_beginAccess();
  sub_1000187EC(v1 + v5, v2);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    v6 = v0[105];
    v7 = v0[33];

    sub_100022154(v7, &qword_1000C7D58, &qword_1000ABB20);
    v8 = 1;
  }

  else
  {
    v9 = v0[105];
    v10 = v0[35];
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[30];
    v14 = v0[31];
    (*(v14 + 16))(v12, v11, v13);
    sub_100022154(v11, &qword_1000C7D58, &qword_1000ABB20);
    v0[27] = v9;
    sub_1000A3BF8();
    (*(v14 + 8))(v12, v13);
    v8 = 0;
  }

  v15 = v0[35];
  v16 = v0[29];
  v17 = sub_10000275C(&qword_1000C7EC8, &qword_1000ABD50);
  (*(*(v17 - 8) + 56))(v15, v8, 1, v17);
  sub_100022154(v15, &qword_1000C7EB8, &qword_1000ABD48);

  return _swift_task_switch(sub_100025EB4, v16, 0);
}

uint64_t sub_100025EB4()
{
  v1 = v0[103];
  v2 = v0[97];
  v3 = sub_1000A3518();
  v4 = sub_1000A3CA8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "[LoadEventsQueryEngine] Processing complete. Total records: %ld", v5, 0xCu);
  }

  v6 = v0[29];

  v7 = *(v6 + 128);
  v0[106] = v7;

  return _swift_task_switch(sub_100025FA4, v7, 0);
}

uint64_t sub_100025FA4()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 232);
  sub_10001833C();

  return _swift_task_switch(sub_100026010, v2, 0);
}

uint64_t sub_100026010()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v12 = v0[102];
  v13 = v0[75];
  v6 = v0[73];
  v14 = v0[74];
  v15 = v0[72];
  v7 = v0[69];
  v16 = v0[71];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[64];
  v22 = v0[63];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v8 = v0[58];
  v29 = v0[57];
  v31 = v0[56];
  v33 = v0[55];
  v9 = v0[53];
  v35 = v0[52];
  v27 = v0[51];
  v28 = v0[50];
  v30 = v0[47];
  v32 = v0[44];
  v34 = v0[43];
  v36 = v0[40];
  v37 = v0[39];
  v38 = v0[36];
  v39 = v0[35];
  v40 = v0[34];
  v41 = v0[33];
  v42 = v0[32];
  [*(v0[29] + 136) reset];
  v2(v8, v9);
  v4(v5, v7);
  v4(v6, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100026298()
{
  v1 = *(v0 + 128);

  v2 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  v3 = sub_1000A38F8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v5 = sub_1000A3938();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar;
  v7 = sub_1000A2578();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_siteID;
  v9 = sub_1000A2508();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID + 8);

  v11 = *(v0 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID + 8);

  v12 = *(v0 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100026410()
{
  sub_100026298();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100026464()
{
  result = sub_1000A38F8();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1000A3938();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_1000A2578();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_1000A2508();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000265EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v2 - 8) + 64));
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v26 - v4;
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v29 = a1;
  sub_1000A3118();
  v31 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  sub_1000A2778();
  v17 = sub_1000A27B8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  v30 = v18;
  if (v20 == 1)
  {
    sub_100022154(v16, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v18 + 8))(v16, v17);
  }

  sub_1000A30A8();
  sub_1000A2748();
  if (v19(v13, 1, v17) == 1)
  {
    sub_100022154(v13, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v30 + 8))(v13, v17);
  }

  sub_1000A3018();
  sub_1000A2768();
  if (v19(v10, 1, v17) == 1)
  {
    sub_100022154(v10, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v30 + 8))(v10, v17);
  }

  v21 = v27;
  sub_1000A3078();
  sub_1000A2758();
  if (v19(v7, 1, v17) == 1)
  {
    sub_100022154(v7, &qword_1000C7F90, &qword_1000ABDB8);
    v22 = v30;
  }

  else
  {
    sub_1000A27A8();
    v22 = v30;
    (*(v30 + 8))(v7, v17);
  }

  sub_1000A3048();
  sub_1000A2788();
  v23 = v19(v21, 1, v17);
  v24 = v28;
  if (v23 == 1)
  {
    sub_100022154(v21, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v22 + 8))(v21, v17);
  }

  sub_1000A30D8();
  sub_1000A2798();
  if (v19(v24, 1, v17) == 1)
  {
    sub_100022154(v24, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v22 + 8))(v24, v17);
  }

  return sub_1000A3108();
}

uint64_t sub_100026AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  v19[0] = a2;
  sub_1000A3228();
  sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v19[1] = a1;
  sub_1000A27D8();
  v15 = sub_1000A27B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_100022154(v14, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v14, v15);
  }

  sub_1000A3188();
  sub_1000A27E8();
  if (v17(v11, 1, v15) == 1)
  {
    sub_100022154(v11, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v11, v15);
  }

  sub_1000A31B8();
  sub_1000A27F8();
  if (v17(v8, 1, v15) == 1)
  {
    sub_100022154(v8, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v8, v15);
  }

  sub_1000A3218();
  sub_1000A2808();
  if (v17(v6, 1, v15) == 1)
  {
    sub_100022154(v6, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v16 + 8))(v6, v15);
  }

  return sub_1000A31E8();
}

uint64_t sub_100026E20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v2 - 8) + 64));
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v26 - v4;
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v29 = a1;
  sub_1000A3118();
  v31 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  sub_1000A2778();
  v17 = sub_1000A2918();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v16, 1, v17);
  v30 = v18;
  if (v20 == 1)
  {
    sub_100022154(v16, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v18 + 8))(v16, v17);
  }

  sub_1000A30A8();
  sub_1000A2748();
  if (v19(v13, 1, v17) == 1)
  {
    sub_100022154(v13, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v30 + 8))(v13, v17);
  }

  sub_1000A3018();
  sub_1000A2768();
  if (v19(v10, 1, v17) == 1)
  {
    sub_100022154(v10, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v30 + 8))(v10, v17);
  }

  v21 = v27;
  sub_1000A3078();
  sub_1000A2758();
  if (v19(v7, 1, v17) == 1)
  {
    sub_100022154(v7, &qword_1000C7F88, &qword_1000ABDB0);
    v22 = v30;
  }

  else
  {
    sub_1000A2908();
    v22 = v30;
    (*(v30 + 8))(v7, v17);
  }

  sub_1000A3048();
  sub_1000A2788();
  v23 = v19(v21, 1, v17);
  v24 = v28;
  if (v23 == 1)
  {
    sub_100022154(v21, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v22 + 8))(v21, v17);
  }

  sub_1000A30D8();
  sub_1000A2798();
  if (v19(v24, 1, v17) == 1)
  {
    sub_100022154(v24, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v22 + 8))(v24, v17);
  }

  return sub_1000A3108();
}

uint64_t sub_1000272EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v4 - 8) + 64));
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v19 - v7;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  v19[0] = a2;
  sub_1000A3228();
  sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v19[1] = a1;
  sub_1000A27D8();
  v15 = sub_1000A2918();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v14, 1, v15) == 1)
  {
    sub_100022154(v14, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v14, v15);
  }

  sub_1000A3188();
  sub_1000A27E8();
  if (v17(v11, 1, v15) == 1)
  {
    sub_100022154(v11, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v11, v15);
  }

  sub_1000A31B8();
  sub_1000A27F8();
  if (v17(v8, 1, v15) == 1)
  {
    sub_100022154(v8, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v8, v15);
  }

  sub_1000A3218();
  sub_1000A2808();
  if (v17(v6, 1, v15) == 1)
  {
    sub_100022154(v6, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v16 + 8))(v6, v15);
  }

  return sub_1000A31E8();
}

void *sub_100027654()
{
  v1 = v0;
  v2 = sub_1000A2498();
  v30 = *(v2 - 8);
  __chkstk_darwin(*(v30 + 64));
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v28 - v4;
  sub_1000A2F08();
  v6 = sub_1000A2EF8();
  [v6 setResultType:0];
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1000A3A78();
  v9 = [v7 initWithKey:v8 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000ABC60;
  *(v10 + 32) = v9;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v29 = v9;
  isa = sub_1000A3B48().super.isa;

  [v6 setSortDescriptors:isa];

  v12 = sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  v28[1] = "AND isConsumptionBlock = %@";
  v28[2] = v12;
  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000ABC70;
  v14 = sub_1000A24D8().super.isa;
  *(v13 + 56) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v13 + 64) = sub_100032180(&qword_1000C7F08, &qword_1000C7F00, NSUUID_ptr);
  *(v13 + 32) = v14;
  v16 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
  v15 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID + 8);
  *(v13 + 96) = &type metadata for String;
  v17 = sub_1000321D0();
  *(v13 + 72) = v16;
  *(v13 + 80) = v15;
  v18 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
  v19 = *(v1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID + 8);
  *(v13 + 136) = &type metadata for String;
  *(v13 + 144) = v17;
  *(v13 + 104) = v17;
  *(v13 + 112) = v18;
  *(v13 + 120) = v19;

  sub_1000A2288();
  v20 = sub_1000A2418().super.isa;
  v21 = *(v30 + 8);
  v21(v5, v2);
  v22 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v13 + 176) = v22;
  v23 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v13 + 184) = v23;
  *(v13 + 152) = v20;
  v24 = v31;
  sub_1000A2248();
  v25 = sub_1000A2418().super.isa;
  v21(v24, v2);
  *(v13 + 216) = v22;
  *(v13 + 224) = v23;
  *(v13 + 192) = v25;
  v26 = sub_1000A3C98();
  [v6 setPredicate:v26];
  [v6 setFetchBatchSize:30];
  [v6 setReturnsObjectsAsFaults:0];

  return v6;
}

void *sub_100027A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000A2498();
  v6 = *(v5 - 8);
  __chkstk_darwin(*(v6 + 64));
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = sub_1000A3318();
  v11 = *(v10 - 8);
  __chkstk_darwin(*(v11 + 64));
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for IntervalBlockPayload.FlowDirection.reverse(_:), v10);
  v14 = sub_1000A3308();
  (*(v11 + 8))(v13, v10);
  v40 = v14 != a2;
  sub_1000A2F28();
  v15 = sub_1000A2F18();
  [v15 setResultType:0];
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_1000A3A78();
  v18 = [v16 initWithKey:v17 ascending:1];

  sub_10000275C(&qword_1000C7EE8, &unk_1000ABD70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000ABC60;
  *(v19 + 32) = v18;
  sub_100032224(0, &qword_1000C7EF0, NSSortDescriptor_ptr);
  v39 = v18;
  isa = sub_1000A3B48().super.isa;

  [v15 setSortDescriptors:isa];

  sub_10000275C(&qword_1000C7EF8, &qword_1000AC380);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000ABC80;
  v22 = sub_1000A24D8().super.isa;
  *(v21 + 56) = sub_100032224(0, &qword_1000C7F00, NSUUID_ptr);
  *(v21 + 64) = sub_100032180(&qword_1000C7F08, &qword_1000C7F00, NSUUID_ptr);
  *(v21 + 32) = v22;
  v24 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID);
  v23 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_appID + 8);
  *(v21 + 96) = &type metadata for String;
  v25 = sub_1000321D0();
  *(v21 + 72) = v24;
  *(v21 + 80) = v23;
  v26 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID);
  v27 = *(v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_deviceID + 8);
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v25;
  *(v21 + 104) = v25;
  *(v21 + 112) = v26;
  *(v21 + 120) = v27;

  sub_1000A2288();
  v28 = sub_1000A2418().super.isa;
  v29 = *(v6 + 8);
  v29(v9, v5);
  v30 = sub_100032224(0, &qword_1000C7F18, NSDate_ptr);
  *(v21 + 176) = v30;
  v31 = sub_100032180(&qword_1000C7F20, &qword_1000C7F18, NSDate_ptr);
  *(v21 + 184) = v31;
  *(v21 + 152) = v28;
  v32 = v41;
  sub_1000A2248();
  v33 = sub_1000A2418().super.isa;
  v29(v32, v5);
  *(v21 + 216) = v30;
  *(v21 + 224) = v31;
  *(v21 + 192) = v33;
  v34 = sub_100032224(0, &qword_1000C7F28, NSNumber_ptr);
  v35 = sub_1000A3D98(v40).super.super.isa;
  sub_100032224(0, &qword_1000C7F30, NSPredicate_ptr);
  *(v21 + 256) = v34;
  *(v21 + 264) = sub_100032180(&qword_1000C7F38, &qword_1000C7F28, NSNumber_ptr);
  *(v21 + 232) = v35;
  v36 = sub_1000A3C98();
  [v15 setPredicate:v36];
  [v15 setFetchBatchSize:24];
  [v15 setReturnsObjectsAsFaults:0];

  return v15;
}

void sub_100027F7C(unint64_t a1, void **a2, uint64_t a3)
{
  v109 = a3;
  v90 = a2;
  v130 = a1;
  v112 = sub_1000A2C08();
  v129 = *(v112 - 8);
  __chkstk_darwin(*(v129 + 64));
  v111 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000A3538();
  v128 = *(v115 - 8);
  __chkstk_darwin(*(v128 + 8));
  v125 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000A22A8();
  v121 = *(v108 - 8);
  __chkstk_darwin(*(v121 + 64));
  v107 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for HourlyBlockReading(0);
  __chkstk_darwin(*(*(v100 - 8) + 64));
  v116 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1000A2498();
  v120 = *(v127 - 8);
  __chkstk_darwin(*(v120 + 64));
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v124 = &v90 - v9;
  __chkstk_darwin(v10);
  v12 = &v90 - v11;
  __chkstk_darwin(v13);
  v15 = &v90 - v14;
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  v19 = sub_10000275C(&qword_1000C7F40, &unk_1000ABD80);
  __chkstk_darwin(((*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = &v90 - v20;
  v22 = sub_1000A2888();
  v23 = *(v22 - 8);
  __chkstk_darwin(*(v23 + 64));
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  v27 = *(v3 + 136);
  sub_1000A2F28();
  v28 = v131;
  v29 = sub_1000A3D68();
  v30 = v28;
  if (!v28)
  {
    v31 = v29;
    v97 = v26;
    v113 = v25;
    v126 = v22;
    v122 = v21;
    v99 = v18;
    v114 = v15;
    v117 = v12;
    v123 = v29;
    if (v29 >> 62)
    {
LABEL_32:
      v89 = sub_1000A3EC8();
      v31 = v123;
      v32 = v89;
    }

    else
    {
      v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v115;
    v34 = v99;
    v35 = v126;
    v37 = v120;
    v36 = v121;
    if (v32)
    {
      v131 = v30;
      v30 = 0;
      v119 = *(v97 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder);
      v121 = v31 & 0xC000000000000001;
      v96 = v31 & 0xFFFFFFFFFFFFFF8;
      v118 = (v23 + 56);
      v105 = (v129 + 104);
      v104 = enum case for Logging.framework(_:);
      v103 = (v129 + 8);
      v102 = (v128 + 8);
      v95 = (v23 + 32);
      v94 = (v23 + 16);
      v93 = (v120 + 16);
      v101 = (v36 + 8);
      v91 = (v23 + 8);
      v120 = v32;
      v92 = (v37 + 8);
      while (1)
      {
        if (v121)
        {
          v38 = sub_1000A3EA8();
        }

        else
        {
          if (v30 >= *(v96 + 16))
          {
            goto LABEL_31;
          }

          v38 = *(v31 + 8 * v30 + 32);
        }

        v39 = v38;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v129 = v30 + 1;
        v130 = v30;
        v128 = objc_autoreleasePoolPush();
        v40 = [v39 blockData];
        v41 = sub_1000A23B8();
        v43 = v42;

        sub_100032134(&qword_1000C7F48, &type metadata accessor for EnergyKit.LoadSessionEvent.Block);
        v44 = v35;
        v45 = v122;
        v46 = v131;
        sub_1000A2318();
        if (v46)
        {
          v131 = 0;

          sub_10003228C(v41, v43);
          (*v118)(v45, 1, 1, v44);
          sub_100022154(v45, &qword_1000C7F40, &unk_1000ABD80);
          v48 = v111;
          v47 = v112;
          (*v105)(v111, v104, v112);
          v49 = v125;
          sub_1000A2B68();
          (*v103)(v48, v47);
          v50 = sub_1000A3518();
          v51 = sub_1000A3CC8();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "Failed to decode data", v52, 2u);

            (*v102)(v125, v115);
          }

          else
          {

            (*v102)(v49, v115);
          }

          v35 = v126;
          v78 = v120;
        }

        else
        {
          v131 = 0;
          sub_10003228C(v41, v43);
          (*v118)(v45, 0, 1, v44);
          v53 = v113;
          (*v95)(v113, v45, v44);
          v54 = [v39 blockStart];
          sub_1000A2468();

          v55 = [v39 blockEnd];
          v56 = v114;
          sub_1000A2468();

          v57 = v34;
          v58 = v116;
          (*v94)(v116, v53, v44);
          v59 = v100;
          v60 = *(v100 + 20);
          v61 = *v93;
          (*v93)(v58 + v60, v57, v127);
          v62 = *(v59 + 24);
          v61(v58 + v62, v56, v127);
          v110 = v39;
          v63 = [v39 loadType];
          v98 = sub_1000A3A88();
          v65 = v64;

          v61(v117, (v58 + v60), v127);
          v66 = (v58 + v62);
          v67 = v127;
          v61(v124, v66, v127);
          v68 = v92;
          v69 = v107;
          sub_1000A3868();
          v70 = v106;
          sub_1000A2288();
          v71 = *v101;
          (*v101)(v69, v108);
          sub_100032134(&qword_1000C7F50, &type metadata accessor for Date);
          LOBYTE(v63) = sub_1000A3A48();
          v72 = *v68;
          (*v68)(v70, v67);
          if (v63)
          {
            goto LABEL_16;
          }

          v73 = v107;
          sub_1000A3868();
          v74 = v106;
          sub_1000A2248();
          v75 = v73;
          v67 = v127;
          v71(v75, v108);
          v76 = sub_1000A3A48();
          v72(v74, v67);
          if (v76)
          {
LABEL_16:

            v77 = v116;
          }

          else
          {
            v79 = objc_autoreleasePoolPush();
            v77 = v116;
            v80 = v131;
            sub_100029E44(v117, v97, v90, v98, v65, v116);
            v131 = v80;
            if (v80)
            {
              objc_autoreleasePoolPop(v79);
              __break(1u);
              return;
            }

            objc_autoreleasePoolPop(v79);
          }

          v82 = v113;
          v81 = v114;
          v35 = v126;
          v72(v124, v67);
          v72(v81, v67);
          v83 = v99;
          v72(v99, v67);
          (*v91)(v82, v35);
          v84 = v67;
          v34 = v83;
          v72(v117, v84);
          sub_100033764(v77, type metadata accessor for HourlyBlockReading);
          v78 = v120;
          v39 = v110;
        }

        v23 = v129;
        v85 = v130;
        objc_autoreleasePoolPop(v128);

        v30 = v85 + 1;
        v31 = v123;
        if (v23 == v78)
        {

          return;
        }
      }
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    sub_100001E38(v33, qword_1000C96B8);
    v86 = sub_1000A3518();
    v87 = sub_1000A3CA8();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "[LoadEventsQueryEngine] No hourly blocks found for query range", v88, 2u);
    }
  }
}

void sub_100028C0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v113 = a4;
  v106 = a3;
  v103 = a2;
  v117 = a1;
  v105 = sub_1000A22A8();
  v114 = *(v105 - 8);
  __chkstk_darwin(*(v114 + 64));
  v104 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DailyDigestReading(0);
  __chkstk_darwin(*(*(v108 - 8) + 64));
  v116 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000275C(&qword_1000C7F98, &unk_1000ABDC0);
  __chkstk_darwin(((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = &v85 - v7;
  v110 = sub_1000A28F8();
  v112 = *(v110 - 8);
  __chkstk_darwin(v112[8]);
  v107 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000A2498();
  v111 = *(v115 - 8);
  __chkstk_darwin(*(v111 + 64));
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v85 - v11;
  __chkstk_darwin(v13);
  v15 = &v85 - v14;
  __chkstk_darwin(v16);
  v18 = &v85 - v17;
  __chkstk_darwin(v19);
  v21 = &v85 - v20;
  v22 = sub_1000A3318();
  v23 = *(v22 - 8);
  __chkstk_darwin(*(v23 + 64));
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v25, enum case for IntervalBlockPayload.FlowDirection.reverse(_:), v22);
  v26 = sub_1000A3308();
  v27 = v25;
  v28 = v118;
  (*(v23 + 8))(v27, v22);
  v29 = *(v28 + 136);
  sub_1000A2F08();
  v30 = v119;
  v31 = sub_1000A3D68();
  if (!v30)
  {
    v32 = v31;
    v101 = v18;
    v102 = v26;
    v99 = v15;
    v100 = v21;
    v98 = v10;
    v33 = v113;
    v117 = 0;
    v97 = v12;
    if (v31 >> 62)
    {
LABEL_46:
      v34 = sub_1000A3EC8();
    }

    else
    {
      v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v33;
    v36 = v102;
    v38 = v111;
    v37 = v112;
    if (v34)
    {
      v39 = 0;
      v40 = 0;
      v111 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_decoder;
      v119 = v32 & 0xFFFFFFFFFFFFFF8;
      v96 = (v112 + 7);
      v92 = (v112 + 4);
      v91 = (v112 + 2);
      v94 = (v38 + 16);
      v93 = (v114 + 8);
      v112 = (v38 + 8);
      v90 = (v37 + 1);
      v41 = &off_1000C6000;
LABEL_6:
      LODWORD(v114) = v39;
      v33 = v40;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v42 = sub_1000A3EA8();
        }

        else
        {
          if (v33 >= *(v119 + 16))
          {
            goto LABEL_45;
          }

          v42 = *(v32 + 8 * v33 + 32);
        }

        v43 = v42;
        v40 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v36 == v35)
        {
          v44 = [v42 v41[294]];
          if (v44)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v44 = [v42 digestConsumptionData];
          if (v44)
          {
LABEL_18:
            v45 = v44;
            v46 = sub_1000A23B8();
            v113 = v47;
            v114 = v46;

            v48 = [v43 startDate];
            sub_1000A2468();

            v49 = [v43 endDate];
            sub_1000A2468();

            v95 = objc_autoreleasePoolPush();
            v50 = *(v118 + v111);
            sub_100032134(&qword_1000C7FA0, &type metadata accessor for EnergyKit.LoadDailyDigestEvent.Value);
            v51 = v109;
            v52 = v110;
            v53 = v117;
            sub_1000A2318();
            if (v53)
            {

              (*v96)(v51, 1, 1, v52);
              sub_100022154(v51, &qword_1000C7F98, &unk_1000ABDC0);
              v117 = 0;
              v36 = v102;
              v54 = v112;
            }

            else
            {
              v117 = 0;
              (*v96)(v51, 0, 1, v52);
              v55 = v107;
              (*v92)(v107, v51, v52);
              v56 = v116;
              (*v91)(v116, v55, v52);
              v87 = *(v108 + 20);
              v57 = *v94;
              v86 = v57;
              v58 = v87 + v56;
              v59 = v115;
              v57(v58, v100, v115);
              v89 = *(v108 + 24);
              v57(v89 + v116, v101, v59);
              v60 = [v43 loadType];
              v85 = sub_1000A3A88();
              v88 = v61;

              v62 = v86;
              v86(v99, v87 + v116, v59);
              v62(v97, v89 + v116, v59);
              v63 = v104;
              sub_1000A3868();
              sub_1000A2288();
              v64 = v63;
              v65 = v59;
              v87 = *v93;
              v87(v64, v105);
              v66 = sub_100032134(&qword_1000C7F50, &type metadata accessor for Date);
              v67 = v98;
              v86 = v66;
              LOBYTE(v60) = sub_1000A3A48();
              v89 = *v112;
              v89(v67, v65);
              if (v60)
              {
                goto LABEL_22;
              }

              v68 = v104;
              sub_1000A3868();
              v69 = v98;
              sub_1000A2248();
              v70 = v68;
              v65 = v115;
              v87(v70, v105);
              v71 = sub_1000A3A48();
              v89(v69, v65);
              if (v71)
              {
LABEL_22:

                v36 = v102;
              }

              else
              {
                v87 = objc_autoreleasePoolPush();
                v72 = v117;
                sub_10002C184(v99, v118, v103, v85, v88, v116);
                v117 = v72;
                v36 = v102;
                if (v72)
                {
                  objc_autoreleasePoolPop(v87);
                  __break(1u);
                  return;
                }

                objc_autoreleasePoolPop(v87);
              }

              v73 = v65;
              v54 = v112;
              v74 = v89;
              v89(v97, v73);
              (*v90)(v107, v110);
              v74(v99, v115);
              sub_100033764(v116, type metadata accessor for DailyDigestReading);
            }

            objc_autoreleasePoolPop(v95);

            sub_10003228C(v114, v113);
            v75 = *v54;
            v76 = v115;
            (*v54)(v101, v115);
            v75(v100, v76);
            v39 = 1;
            v41 = &off_1000C6000;
            if (v40 != v34)
            {
              goto LABEL_6;
            }

            return;
          }
        }

        ++v33;
      }

      while (v40 != v34);

      if ((v114 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {

LABEL_31:
      if (v36 == v35)
      {
        v77 = 0x69746375646F7270;
      }

      else
      {
        v77 = 0x74706D75736E6F63;
      }

      if (v36 == v35)
      {
        v78 = 0xEA00000000006E6FLL;
      }

      else
      {
        v78 = 0xEB000000006E6F69;
      }

      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v79 = sub_1000A3538();
      sub_100001E38(v79, qword_1000C96B8);

      v80 = sub_1000A3518();
      v81 = sub_1000A3CA8();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v120 = v83;
        *v82 = 136315138;
        v84 = sub_1000954AC(v77, v78, &v120);

        *(v82 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v80, v81, "[LoadEventsQueryEngine] No %s digest data found for query range", v82, 0xCu);
        sub_10000F7B8(v83);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100029828(uint64_t a1, uint64_t a2, void **a3)
{
  v28 = a3;
  v5 = sub_1000A2508();
  __chkstk_darwin(*(*(v5 - 8) + 64));
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A38F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000A22A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(*(v12 + 64));
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  swift_beginAccess();
  v25 = *(v12 + 16);
  v25(v15, a2, v11);
  v16 = *(v8 + 16);
  v32 = a1;
  v16(v10, a1 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    v17 = sub_100027A58(v15, *(v32 + 112));
    v31 = sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    v30[0] = v17;
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v18 = sub_100027654();
    v31 = sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    v30[0] = v18;
    (*(v12 + 8))(v15, v11);
    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v25(v26, a2, v11);
  v19 = *(v32 + 120);
  v25 = sub_1000A3888();
  sub_1000A3858();
  sub_1000A3838();
  sub_1000A3848();
  sub_1000A3898();
  sub_1000A38A8();
  sub_1000A3828();
  v20 = objc_allocWithZone(sub_1000A38B8());
  v21 = sub_1000A3878();
  v22 = v28;
  swift_beginAccess();
  v23 = v29;
  sub_100029C40(v30, v22, v21);
  swift_endAccess();
  if (!v23)
  {
    [*(v32 + 136) reset];
  }

  return sub_10000F7B8(v30);
}

void sub_100029C40(uint64_t a1, void **a2, uint64_t a3)
{
  v7 = sub_1000A38F8();
  v8 = *(v7 - 8);
  __chkstk_darwin(*(v8 + 64));
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ElectricityInsightQuery.Granularity.hourly(_:))
  {
    sub_10000F814(a1, v13);
    sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    if (swift_dynamicCast())
    {
      v11 = v14;
      sub_100027F7C(v14, a2, a3);
    }
  }

  else
  {
    sub_10000F814(a1, v13);
    sub_10000275C(&qword_1000C7EE0, &qword_1000ABD68);
    if (swift_dynamicCast())
    {
      v12 = v14;
      sub_100028C0C(v14, a2, a3, *(v3 + 112));
    }

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100029E44(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v291 = a6;
  v292 = a5;
  v283 = a4;
  v302 = a3;
  v300 = a1;
  v7 = sub_1000A3238();
  __chkstk_darwin(*(*(v7 - 8) + 64));
  v251 = &v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A3128();
  __chkstk_darwin(*(*(v9 - 8) + 64));
  v250 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_1000A32C8();
  v263 = *(v264 - 8);
  __chkstk_darwin(*(v263 + 64));
  v262 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = &v236 - v13;
  v243 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v242 = *(v243 - 8);
  __chkstk_darwin(*(v242 + 64));
  v241 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v238 = &v236 - v15;
  v245 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  v244 = *(v245 - 8);
  __chkstk_darwin(*(v244 + 64));
  v240 = &v236 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v239 = &v236 - v17;
  v254 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v253 = *(v254 - 8);
  __chkstk_darwin(*(v253 + 64));
  v249 = &v236 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v246 = &v236 - v19;
  v256 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  v255 = *(v256 - 8);
  __chkstk_darwin(*(v255 + 64));
  v248 = &v236 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v247 = &v236 - v21;
  v282 = sub_1000A3938();
  v267 = *(v282 - 8);
  __chkstk_darwin(*(v267 + 64));
  v280 = &v236 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v281 = &v236 - v23;
  v272 = sub_1000A38D8();
  v271 = *(v272 - 8);
  __chkstk_darwin(*(v271 + 64));
  v270 = &v236 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_1000A2918();
  v274 = *(v275 - 8);
  __chkstk_darwin(*(v274 + 64));
  v273 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_1000A27B8();
  v258 = *(v259 - 8);
  __chkstk_darwin(*(v258 + 64));
  v257 = &v236 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_1000A2938();
  v289 = *(v284 - 8);
  __chkstk_darwin(v289[8]);
  v260 = &v236 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v266 = &v236 - v28;
  __chkstk_darwin(v29);
  v252 = &v236 - v30;
  __chkstk_darwin(v31);
  v265 = &v236 - v32;
  v33 = sub_1000A3408();
  v34 = *(v33 - 8);
  v287 = v33;
  v288 = v34;
  __chkstk_darwin(*(v34 + 8));
  v294 = &v236 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_1000A32F8();
  v299 = *(v301 - 8);
  __chkstk_darwin(*(v299 + 8));
  v279 = &v236 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v276 = &v236 - v37;
  __chkstk_darwin(v38);
  v268 = &v236 - v39;
  __chkstk_darwin(v40);
  v269 = &v236 - v41;
  v303 = sub_1000A2498();
  v293 = *(v303 - 8);
  __chkstk_darwin(*(v293 + 64));
  v277 = &v236 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v297 = &v236 - v43;
  __chkstk_darwin(v44);
  v296 = &v236 - v45;
  __chkstk_darwin(v46);
  v48 = &v236 - v47;
  __chkstk_darwin(v49);
  v51 = &v236 - v50;
  v52 = sub_1000A2578();
  v53 = *(v52 - 8);
  __chkstk_darwin(*(v53 + 64));
  v55 = &v236 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_1000A22A8();
  v285 = *(v286 - 8);
  __chkstk_darwin(*(v285 + 64));
  v57 = &v236 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsightBucketBoundaries();
  v58 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  (*(v53 + 16))(v55, a2 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar, v52);
  v290 = a2;
  v59 = a2 + v58;
  v60 = v302;
  sub_10004CC8C(v300, v59, v55, v57);
  v61 = v55;
  v62 = v296;
  (*(v53 + 8))(v61, v52);
  v63 = v51;
  v64 = v287;
  v65 = v301;
  sub_1000A2288();
  v295 = v48;
  v66 = v299;
  v300 = v57;
  sub_1000A2248();
  v67 = v60;
  v68 = *v60;
  v69 = (*v60)[2];
  v70 = v303;
  v298 = v63;
  if (!v69)
  {
    goto LABEL_6;
  }

  v261 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v237 = *(v66 + 9);
  v71 = v269;
  (*(v66 + 2))(v269, v68 + v261 + v237 * (v69 - 1), v65);
  v72 = v294;
  sub_1000A3278();
  (*(v66 + 1))(v71, v65);
  sub_1000A33E8();
  (*(v288 + 1))(v72, v64);
  LOBYTE(v72) = sub_1000A2458();
  v73 = v293 + 8;
  v74 = *(v293 + 8);
  v74(v62, v70);
  if ((v72 & 1) == 0)
  {
LABEL_6:
    v87 = v293;
    v88 = v294;
    sub_1000A2288();
    v89 = (*v67)[2];
    if (v89)
    {
      v90 = v268;
      v91 = v301;
      (*(v66 + 2))(v268, *v67 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 9) * (v89 - 1), v301);
      sub_1000A3258();
      (*(v66 + 1))(v90, v91);
      v92 = v278;
      sub_1000A33E8();
      (*(v288 + 1))(v88, v64);
      v93 = v87;
      v94 = *(v87 + 56);
      v95 = v303;
      v94(v92, 0, 1, v303);
      v96 = v277;
      (*(v93 + 32))(v277, v92, v95);
    }

    else
    {
      v93 = v87;
      v97 = *(v87 + 56);
      v98 = v278;
      v95 = v303;
      v97(v278, 1, 1, v303);
      v96 = v277;
      sub_1000A23C8();
      if ((*(v93 + 48))(v98, 1, v95) != 1)
      {
        sub_100022154(v98, &qword_1000C7F58, &qword_1000AC770);
      }
    }

    sub_100032134(&qword_1000C7F50, &type metadata accessor for Date);
    v99 = v297;
    v100 = sub_1000A3A48();
    v101 = *(v93 + 8);
    v101(v96, v95);
    v297 = (v93 + 8);
    v101(v99, v95);
    if (v100)
    {
      v101(v295, v95);
      v101(v298, v95);
      return (*(v285 + 8))(v300, v286);
    }

    v294 = v101;
    v103 = v276;
    sub_1000A32E8();
    v104 = *(v93 + 16);
    v105 = v296;
    v104(v296, v298, v95);
    sub_1000A33F8();
    sub_1000A3288();
    v104(v105, v295, v95);
    sub_1000A33F8();
    sub_1000A3268();
    v106 = v289;
    v107 = v289[13];
    v108 = v266;
    LODWORD(v296) = enum case for EnergyKit.LoadType.hvac(_:);
    v109 = v284;
    v293 = v107;
    v107(v266);
    v110 = sub_1000A2928();
    v112 = v111;
    v288 = v106[1];
    v288(v108, v109);
    v113 = v283;
    v289 = v106 + 1;
    if (v110 == v283 && v112 == v292)
    {

      v114 = v290;
    }

    else
    {
      v115 = sub_1000A3F48();

      v114 = v290;
      if ((v115 & 1) == 0)
      {
        v116 = v257;
        sub_1000A2868();
        sub_1000A27A8();
        (*(v258 + 8))(v116, v259);
      }
    }

    sub_1000A2FB8();
    v117 = v273;
    sub_1000A2878();
    sub_1000A2908();
    (*(v274 + 8))(v117, v275);
    sub_1000A2FE8();
    v118 = *(v114 + 120);
    v119 = sub_1000A3858();
    v120 = v271;
    v121 = v270;
    v122 = v114;
    v123 = v272;
    (*(v271 + 104))(v270, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v272);
    v124 = sub_1000A38C8();
    (*(v120 + 8))(v121, v123);
    if (v119 == v124)
    {
      (*(v263 + 104))(v262, enum case for InsightRecordPayload.Grouping.runtime(_:), v264);
      sub_1000A32D8();
      v125 = v267;
      v126 = *(v267 + 16);
      v296 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v127 = v122 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v128 = v281;
      v129 = v282;
      v126(v281, v127, v282);
      v130 = v280;
      sub_1000A3918();
      sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
      v131 = sub_1000A3DF8();
      v132 = *(v125 + 8);
      v132(v130, v129);
      v132(v128, v129);
      if (v131)
      {
        v133 = v248;
        sub_1000A2848();
        sub_100026E20(v250);
        (*(v255 + 8))(v133, v256);
        sub_1000A32B8();
      }

      v134 = v281;
      v135 = v282;
      v126(v281, v290 + v296, v282);
      v136 = v280;
      sub_1000A3908();
      v137 = sub_1000A3DF8();
      v132(v136, v135);
      v132(v134, v135);
      v139 = v301;
      v138 = v302;
      v140 = v299;
      v103 = v276;
      if ((v137 & 1) == 0)
      {
        goto LABEL_51;
      }

      v141 = v249;
      sub_1000A2858();
      sub_1000272EC(v141, v251);
      (*(v253 + 8))(v141, v254);
    }

    else
    {
      v142 = v260;
      v143 = v284;
      (v293)(v260, v296, v284);
      v144 = sub_1000A2928();
      v146 = v145;
      v288(v142, v143);
      if (v144 == v113 && v146 == v292)
      {

        v139 = v301;
        v138 = v302;
        v140 = v299;
        goto LABEL_51;
      }

      v190 = sub_1000A3F48();

      v139 = v301;
      v138 = v302;
      v140 = v299;
      if (v190)
      {
        goto LABEL_51;
      }

      (*(v263 + 104))(v262, enum case for InsightRecordPayload.Grouping.energy(_:), v264);
      sub_1000A32D8();
      v191 = v267;
      v192 = *(v267 + 16);
      v193 = v290;
      v293 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v194 = v281;
      v195 = v282;
      v296 = v192;
      v192(v281, v290 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v282);
      v196 = v280;
      sub_1000A3918();
      sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
      v197 = sub_1000A3DF8();
      v198 = *(v191 + 8);
      v198(v196, v195);
      v198(v194, v195);
      if (v197)
      {
        v199 = v240;
        sub_1000A2838();
        sub_1000265EC(v250);
        (*(v244 + 8))(v199, v245);
        sub_1000A32B8();
      }

      v200 = v281;
      v201 = v282;
      (v296)(v281, v193 + v293, v282);
      v202 = v280;
      sub_1000A3908();
      v203 = sub_1000A3DF8();
      v198(v202, v201);
      v198(v200, v201);
      v139 = v301;
      v138 = v302;
      v140 = v299;
      v103 = v276;
      if ((v203 & 1) == 0)
      {
        goto LABEL_51;
      }

      v204 = v241;
      sub_1000A2828();
      sub_100026AB8(v204, v251);
      (*(v242 + 8))(v204, v243);
    }

    sub_1000A3158();
LABEL_51:
    (*(v140 + 2))(v279, v103, v139);
    v205 = *v138;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v138 = v205;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v205 = sub_10009501C(0, v205[2] + 1, 1, v205);
      *v138 = v205;
    }

    v207 = v300;
    v209 = v205[2];
    v208 = v205[3];
    if (v209 >= v208 >> 1)
    {
      *v138 = sub_10009501C(v208 > 1, v209 + 1, 1, v205);
    }

    v210 = v299;
    (*(v299 + 1))(v103, v139);
    v211 = v294;
    v212 = v303;
    (v294)(v295, v303);
    v211(v298, v212);
    (*(v285 + 8))(v207, v286);
    v213 = *v138;
    v213[2] = v209 + 1;
    return (*(v210 + 4))(v213 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 9) * v209, v279, v139);
  }

  v299 = v74;
  v301 = v73;
  v75 = (*v67)[2];
  v76 = v75 - 1;
  v77 = v289;
  v78 = v289[13];
  v79 = v265;
  LODWORD(v294) = enum case for EnergyKit.LoadType.hvac(_:);
  v80 = v284;
  v293 = v78;
  v78(v265);
  v81 = sub_1000A2928();
  v83 = v82;
  v85 = v77[1];
  v84 = (v77 + 1);
  v289 = v85;
  (v85)(v79, v80);
  if (v81 == v283 && v83 == v292)
  {

    v86 = v237;
    goto LABEL_31;
  }

  v147 = sub_1000A3F48();

  v86 = v237;
  if ((v147 & 1) == 0)
  {
    v148 = v257;
    sub_1000A2868();
    v149 = sub_1000A27A8();
    (*(v258 + 8))(v148, v259);
    v150 = v302;
    v151 = *v302;
    v152 = swift_isUniquelyReferenced_nonNull_native();
    *v150 = v151;
    if ((v152 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (v75)
    {
      goto LABEL_29;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v149 = sub_1000322E0(v149);
    *v302 = v149;
LABEL_37:
    if (v297 <= v149[2])
    {
      v174 = sub_1000A3298();
      sub_100032D00();
      (*(v255 + 8))(v62, v256);
      v174(v304, 0);
      v159 = v290;
      v151 = v300;
      goto LABEL_39;
    }

    __break(1u);
LABEL_78:
    v86 = sub_1000322E0(v86);
    *v149 = v86;
LABEL_41:
    if (v297 <= *(v86 + 16))
    {
      v180 = sub_1000A3138();
      sub_1000332D8();
      (*(v253 + 8))(v62, v254);
      v180(v304, 0);
      v181 = v303;
      v182 = v299;
      v299(v295, v303);
      v182(v150, v181);
      return (*(v285 + 8))(v151, v286);
    }

    __break(1u);
    goto LABEL_80;
  }

  while (1)
  {
LABEL_31:
    v155 = v273;
    sub_1000A2878();
    v149 = sub_1000A2908();
    (*(v274 + 8))(v155, v275);
    v150 = v302;
    v151 = *v302;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    *v150 = v151;
    if (v156)
    {
      if (!v75)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v151 = sub_1000322E0(v151);
      *v302 = v151;
      if (!v75)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    if (v75 <= v151[2])
    {
      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    v151 = sub_1000322E0(v151);
    *v302 = v151;
    if (!v75)
    {
      goto LABEL_74;
    }

LABEL_29:
    if (v75 > v151[2])
    {
      goto LABEL_75;
    }

    v153 = sub_1000A2F98();
    *v154 = *v154 + v149;
    v153(v304, 0);
  }

  v297 = v75;
  v296 = v76 * v86;
  v157 = sub_1000A2FD8();
  *v158 = *v158 + v149;
  v157(v304, 0);
  v159 = v290;
  v160 = *(v290 + 120);
  v161 = sub_1000A3858();
  v162 = v271;
  v163 = v270;
  v164 = v272;
  (*(v271 + 104))(v270, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v272);
  v165 = sub_1000A38C8();
  (*(v162 + 8))(v163, v164);
  if (v161 != v165)
  {
    v183 = v252;
    v184 = v284;
    (v293)(v252, v294, v284);
    v185 = sub_1000A2928();
    v187 = v186;
    (v289)(v183, v184);
    if (v185 == v283 && v187 == v292)
    {

      v188 = v303;
      v189 = v298;
      v75 = v300;
    }

    else
    {
      v214 = sub_1000A3F48();

      v188 = v303;
      v189 = v298;
      v75 = v300;
      if ((v214 & 1) == 0)
      {
        v218 = v267;
        v219 = *(v267 + 16);
        v220 = v290;
        v293 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
        v221 = v281;
        v222 = v282;
        v294 = v219;
        (v219)(v281, v290 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v282);
        v223 = v280;
        sub_1000A3918();
        v292 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
        v76 = sub_1000A3DF8();
        v84 = *(v218 + 8);
        v84(v223, v222);
        v84(v221, v222);
        if ((v76 & 1) == 0)
        {
          goto LABEL_64;
        }

        v86 = v239;
        sub_1000A2838();
        v150 = v302;
        v149 = *v302;
        v224 = swift_isUniquelyReferenced_nonNull_native();
        *v150 = v149;
        if (v224)
        {
LABEL_62:
          if (v297 > v149[2])
          {
            __break(1u);
LABEL_82:
            result = sub_1000322E0(v86);
            v86 = result;
            *v149 = result;
LABEL_66:
            if (v297 > *(v86 + 16))
            {
              __break(1u);
              return result;
            }

            v231 = sub_1000A3138();
            sub_1000328CC();
            (*(v242 + 8))(v76, v243);
            v231(v304, 0);
            v232 = v303;
            v233 = v299;
            v299(v295, v303);
            v233(v150, v232);
            return (*(v285 + 8))(v75, v286);
          }

          v225 = sub_1000A3298();
          sub_1000322F4();
          (*(v244 + 8))(v86, v245);
          v225(v304, 0);
          v220 = v290;
          v75 = v300;
LABEL_64:
          v226 = v220 + v293;
          v227 = v281;
          v228 = v282;
          (v294)(v281, v226, v282);
          v229 = v280;
          sub_1000A3908();
          v230 = sub_1000A3DF8();
          v84(v229, v228);
          v84(v227, v228);
          if ((v230 & 1) == 0)
          {
            v234 = v303;
            v235 = v299;
            v299(v295, v303);
            v235(v298, v234);
            return (*(v285 + 8))(v75, v286);
          }

          v76 = v238;
          sub_1000A2828();
          v149 = v302;
          v86 = *v302;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v149 = v86;
          v150 = v298;
          if (result)
          {
            goto LABEL_66;
          }

          goto LABEL_82;
        }

LABEL_80:
        v149 = sub_1000322E0(v149);
        *v302 = v149;
        goto LABEL_62;
      }
    }

    v215 = v299;
    v299(v295, v188);
    v215(v189, v188);
    return (*(v285 + 8))(v75, v286);
  }

  v166 = v267;
  v76 = v267 + 16;
  v167 = *(v267 + 16);
  v293 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v168 = v281;
  v169 = v282;
  v294 = v167;
  (v167)(v281, v159 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v282);
  v170 = v280;
  sub_1000A3918();
  v86 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
  v171 = sub_1000A3DF8();
  v84 = *(v166 + 8);
  v84(v170, v169);
  v172 = v169;
  v75 = v166 + 8;
  v84(v168, v172);
  v151 = v300;
  if (v171)
  {
    v62 = v247;
    sub_1000A2848();
    v150 = v302;
    v149 = *v302;
    v173 = swift_isUniquelyReferenced_nonNull_native();
    *v150 = v149;
    if (v173)
    {
      goto LABEL_37;
    }

    goto LABEL_76;
  }

LABEL_39:
  v175 = v159 + v293;
  v176 = v281;
  v177 = v282;
  (v294)(v281, v175, v282);
  v76 = v280;
  sub_1000A3908();
  v178 = sub_1000A3DF8();
  v84(v76, v177);
  v84(v176, v177);
  if (v178)
  {
    v62 = v246;
    sub_1000A2858();
    v149 = v302;
    v86 = *v302;
    v179 = swift_isUniquelyReferenced_nonNull_native();
    *v149 = v86;
    v150 = v298;
    if (v179)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

  v216 = v303;
  v217 = v299;
  v299(v295, v303);
  v217(v298, v216);
  return (*(v285 + 8))(v151, v286);
}

uint64_t sub_10002C184(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v766 = a6;
  v750 = a5;
  v761 = a4;
  v765 = a3;
  v763 = a1;
  v711 = sub_1000A32C8();
  v710 = *(v711 - 8);
  __chkstk_darwin(*(v710 + 64));
  v709 = &v602 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v741 = &v602 - v9;
  v685 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  v651 = *(v685 - 8);
  __chkstk_darwin(*(v651 + 64));
  v650 = &v602 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v649 = &v602 - v11;
  __chkstk_darwin(v12);
  v647 = &v602 - v13;
  __chkstk_darwin(v14);
  v606 = &v602 - v15;
  __chkstk_darwin(v16);
  v614 = &v602 - v17;
  __chkstk_darwin(v18);
  v622 = &v602 - v19;
  v708 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  v712 = *(v708 - 8);
  __chkstk_darwin(*(v712 + 64));
  v644 = &v602 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v643 = &v602 - v21;
  __chkstk_darwin(v22);
  v641 = &v602 - v23;
  __chkstk_darwin(v24);
  v639 = &v602 - v25;
  __chkstk_darwin(v26);
  v637 = &v602 - v27;
  __chkstk_darwin(v28);
  v610 = &v602 - v29;
  __chkstk_darwin(v30);
  v618 = &v602 - v31;
  __chkstk_darwin(v32);
  v626 = &v602 - v33;
  __chkstk_darwin(v34);
  v630 = &v602 - v35;
  __chkstk_darwin(v36);
  v634 = &v602 - v37;
  v38 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v38 - 8) + 64));
  v648 = &v602 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v646 = &v602 - v40;
  __chkstk_darwin(v41);
  v645 = &v602 - v42;
  __chkstk_darwin(v43);
  v642 = &v602 - v44;
  __chkstk_darwin(v45);
  v640 = &v602 - v46;
  __chkstk_darwin(v47);
  v638 = &v602 - v48;
  __chkstk_darwin(v49);
  v636 = &v602 - v50;
  __chkstk_darwin(v51);
  v635 = &v602 - v52;
  __chkstk_darwin(v53);
  v605 = &v602 - v54;
  __chkstk_darwin(v55);
  v613 = &v602 - v56;
  __chkstk_darwin(v57);
  v621 = &v602 - v58;
  __chkstk_darwin(v59);
  v609 = &v602 - v60;
  __chkstk_darwin(v61);
  v617 = &v602 - v62;
  __chkstk_darwin(v63);
  v625 = &v602 - v64;
  __chkstk_darwin(v65);
  v629 = &v602 - v66;
  __chkstk_darwin(v67);
  v633 = &v602 - v68;
  v715 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  v719 = *(v715 - 8);
  __chkstk_darwin(*(v719 + 64));
  v701 = &v602 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v700 = &v602 - v70;
  __chkstk_darwin(v71);
  v699 = &v602 - v72;
  __chkstk_darwin(v73);
  v656 = &v602 - v74;
  __chkstk_darwin(v75);
  v664 = &v602 - v76;
  __chkstk_darwin(v77);
  v672 = &v602 - v78;
  v720 = sub_1000A3238();
  v734 = *(v720 - 8);
  __chkstk_darwin(*(v734 + 8));
  v702 = &v602 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v704 = &v602 - v80;
  __chkstk_darwin(v81);
  v713 = &v602 - v82;
  __chkstk_darwin(v83);
  v604 = &v602 - v84;
  __chkstk_darwin(v85);
  v612 = &v602 - v86;
  __chkstk_darwin(v87);
  v620 = &v602 - v88;
  __chkstk_darwin(v89);
  v655 = &v602 - v90;
  __chkstk_darwin(v91);
  v663 = &v602 - v92;
  __chkstk_darwin(v93);
  v671 = &v602 - v94;
  v726 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  v743 = *(v726 - 8);
  __chkstk_darwin(*(v743 + 64));
  v695 = &v602 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v694 = &v602 - v96;
  __chkstk_darwin(v97);
  v692 = &v602 - v98;
  __chkstk_darwin(v99);
  v690 = &v602 - v100;
  __chkstk_darwin(v101);
  v688 = &v602 - v102;
  __chkstk_darwin(v103);
  v660 = &v602 - v104;
  __chkstk_darwin(v105);
  v668 = &v602 - v106;
  __chkstk_darwin(v107);
  v676 = &v602 - v108;
  __chkstk_darwin(v109);
  v680 = &v602 - v110;
  __chkstk_darwin(v111);
  v684 = &v602 - v112;
  v113 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v113 - 8) + 64));
  v698 = &v602 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v114);
  v697 = &v602 - v115;
  __chkstk_darwin(v116);
  v696 = &v602 - v117;
  __chkstk_darwin(v118);
  v693 = &v602 - v119;
  __chkstk_darwin(v120);
  v691 = &v602 - v121;
  __chkstk_darwin(v122);
  v689 = &v602 - v123;
  __chkstk_darwin(v124);
  v687 = &v602 - v125;
  __chkstk_darwin(v126);
  v686 = &v602 - v127;
  __chkstk_darwin(v128);
  v654 = &v602 - v129;
  __chkstk_darwin(v130);
  v662 = &v602 - v131;
  __chkstk_darwin(v132);
  v670 = &v602 - v133;
  __chkstk_darwin(v134);
  v659 = &v602 - v135;
  __chkstk_darwin(v136);
  v667 = &v602 - v137;
  __chkstk_darwin(v138);
  v675 = &v602 - v139;
  __chkstk_darwin(v140);
  v679 = &v602 - v141;
  __chkstk_darwin(v142);
  v683 = &v602 - v143;
  v729 = sub_1000A3128();
  v742 = *(v729 - 8);
  __chkstk_darwin(*(v742 + 64));
  v652 = &v602 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v144);
  v703 = &v602 - v145;
  __chkstk_darwin(v146);
  v728 = &v602 - v147;
  __chkstk_darwin(v148);
  v608 = &v602 - v149;
  __chkstk_darwin(v150);
  v616 = &v602 - v151;
  __chkstk_darwin(v152);
  v624 = &v602 - v153;
  __chkstk_darwin(v154);
  v628 = &v602 - v155;
  __chkstk_darwin(v156);
  v632 = &v602 - v157;
  __chkstk_darwin(v158);
  v658 = &v602 - v159;
  __chkstk_darwin(v160);
  v666 = &v602 - v161;
  __chkstk_darwin(v162);
  v674 = &v602 - v163;
  __chkstk_darwin(v164);
  v678 = &v602 - v165;
  __chkstk_darwin(v166);
  v682 = &v602 - v167;
  v732 = sub_1000A3938();
  v733 = *(v732 - 8);
  __chkstk_darwin(*(v733 + 64));
  v735 = &v602 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v168);
  v731 = &v602 - v169;
  v738 = sub_1000A38D8();
  v737 = *(v738 - 8);
  __chkstk_darwin(*(v737 + 64));
  v736 = &v602 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1000A2918();
  v172 = *(v171 - 8);
  v759 = v171;
  v760 = v172;
  __chkstk_darwin(*(v172 + 64));
  v739 = &v602 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v724 = sub_1000A27B8();
  v717 = *(v724 - 8);
  __chkstk_darwin(*(v717 + 64));
  v706 = &v602 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = sub_1000A2938();
  v749 = *(v744 - 8);
  __chkstk_darwin(*(v749 + 64));
  v707 = &v602 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v175);
  v716 = &v602 - v176;
  __chkstk_darwin(v177);
  v705 = &v602 - v178;
  __chkstk_darwin(v179);
  v714 = (&v602 - v180);
  v748 = sub_1000A3408();
  v753 = *(v748 - 1);
  __chkstk_darwin(*(v753 + 64));
  v755 = &v602 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v767 = sub_1000A32F8();
  v762 = *(v767 - 8);
  __chkstk_darwin(*(v762 + 64));
  v727 = &v602 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v182);
  v751 = &v602 - v183;
  __chkstk_darwin(v184);
  v725 = &v602 - v185;
  __chkstk_darwin(v186);
  v603 = &v602 - v187;
  __chkstk_darwin(v188);
  v611 = &v602 - v189;
  __chkstk_darwin(v190);
  v619 = &v602 - v191;
  __chkstk_darwin(v192);
  v607 = &v602 - v193;
  __chkstk_darwin(v194);
  v615 = &v602 - v195;
  __chkstk_darwin(v196);
  v623 = &v602 - v197;
  __chkstk_darwin(v198);
  v627 = &v602 - v199;
  __chkstk_darwin(v200);
  v631 = &v602 - v201;
  __chkstk_darwin(v202);
  v653 = &v602 - v203;
  __chkstk_darwin(v204);
  v661 = &v602 - v205;
  __chkstk_darwin(v206);
  v669 = &v602 - v207;
  __chkstk_darwin(v208);
  v657 = &v602 - v209;
  __chkstk_darwin(v210);
  v665 = &v602 - v211;
  __chkstk_darwin(v212);
  v673 = &v602 - v213;
  __chkstk_darwin(v214);
  v677 = &v602 - v215;
  __chkstk_darwin(v216);
  v681 = &v602 - v217;
  __chkstk_darwin(v218);
  v730 = &v602 - v219;
  v764 = sub_1000A2498();
  v752 = *(v764 - 8);
  __chkstk_darwin(*(v752 + 64));
  v740 = &v602 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v220);
  v757 = &v602 - v221;
  __chkstk_darwin(v222);
  v754 = &v602 - v223;
  __chkstk_darwin(v224);
  v226 = &v602 - v225;
  __chkstk_darwin(v227);
  v229 = &v602 - v228;
  v230 = sub_1000A2578();
  v231 = *(v230 - 8);
  __chkstk_darwin(*(v231 + 64));
  v233 = &v602 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
  v746 = sub_1000A22A8();
  v745 = *(v746 - 8);
  __chkstk_darwin(*(v745 + 64));
  v235 = &v602 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsightBucketBoundaries();
  v236 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_granularity;
  (*(v231 + 16))(v233, a2 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_calendar, v230);
  v747 = a2;
  v237 = a2 + v236;
  v238 = v764;
  sub_10004CC8C(v763, v237, v233, v235);
  (*(v231 + 8))(v233, v230);
  v239 = v765;
  sub_1000A2288();
  v756 = v226;
  v240 = v762;
  v241 = v767;
  v763 = v235;
  sub_1000A2248();
  v242 = *v239;
  v243 = *(*v239 + 16);
  v758 = v229;
  if (!v243)
  {
    goto LABEL_6;
  }

  v718 = (*(v240 + 80) + 32) & ~*(v240 + 80);
  v602 = *(v240 + 72);
  v244 = v242 + v718 + v602 * (v243 - 1);
  v245 = *(v240 + 16);
  v246 = v730;
  v722 = v240 + 16;
  v721 = v245;
  v245(v730, v244, v241);
  v247 = v755;
  sub_1000A3278();
  v248 = *(v240 + 8);
  v730 = (v240 + 8);
  v723 = v248;
  v248(v246, v241);
  v249 = v754;
  sub_1000A33E8();
  (*(v753 + 8))(v247, v748);
  LOBYTE(v247) = sub_1000A2458();
  v250 = (v752 + 8);
  v251 = *(v752 + 8);
  v251(v249, v238);
  if ((v247 & 1) == 0)
  {
LABEL_6:
    v264 = v752;
    v265 = v753;
    v266 = v755;
    sub_1000A2288();
    v267 = *(*v239 + 16);
    if (v267)
    {
      v268 = v725;
      (*(v240 + 16))(v725, *v239 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * (v267 - 1), v241);
      sub_1000A3258();
      (*(v240 + 8))(v268, v241);
      v269 = v741;
      sub_1000A33E8();
      (*(v265 + 8))(v266, v748);
      v270 = v264;
      (*(v264 + 56))(v269, 0, 1, v238);
      v271 = v740;
      (*(v264 + 32))(v740, v269, v238);
      v272 = v754;
    }

    else
    {
      v270 = v264;
      v273 = v741;
      (*(v264 + 56))(v741, 1, 1, v238);
      v271 = v740;
      sub_1000A23C8();
      v274 = (*(v264 + 48))(v273, 1, v238);
      v272 = v754;
      if (v274 != 1)
      {
        sub_100022154(v273, &qword_1000C7F58, &qword_1000AC770);
      }
    }

    sub_100032134(&qword_1000C7F50, &type metadata accessor for Date);
    v275 = v757;
    v276 = sub_1000A3A48();
    v277 = *(v270 + 8);
    v277(v271, v238);
    v277(v275, v238);
    if (v276)
    {
      v277(v756, v238);
      v277(v758, v238);
      return (*(v745 + 8))(v763, v746);
    }

    v757 = v277;
    sub_1000A32E8();
    v278 = *(v270 + 16);
    v278(v272, v758, v238);
    sub_1000A33F8();
    sub_1000A3288();
    v278(v272, v756, v238);
    sub_1000A33F8();
    sub_1000A3268();
    v279 = v749;
    v280 = *(v749 + 104);
    v281 = v716;
    LODWORD(v752) = enum case for EnergyKit.LoadType.hvac(_:);
    v282 = v744;
    v748 = v280;
    v280(v716);
    v283 = sub_1000A2928();
    v285 = v284;
    v286 = *(v279 + 8);
    v749 = v279 + 8;
    v286(v281, v282);
    v755 = (v270 + 8);
    if (v283 == v761 && v285 == v750)
    {
    }

    else
    {
      v287 = sub_1000A3F48();

      if ((v287 & 1) == 0)
      {
        v288 = v706;
        sub_1000A28D8();
        sub_1000A27A8();
        (*(v717 + 8))(v288, v724);
      }
    }

    sub_1000A2FB8();
    v289 = v739;
    sub_1000A28E8();
    sub_1000A2908();
    v753 = v760[1];
    v754 = (v760 + 1);
    (v753)(v289, v759);
    sub_1000A2FE8();
    v290 = v747;
    v291 = *(v747 + 120);
    v292 = sub_1000A3858();
    v293 = v737;
    v294 = v736;
    v295 = v738;
    (*(v737 + 104))(v736, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v738);
    v296 = sub_1000A38C8();
    (*(v293 + 8))(v294, v295);
    if (v292 == v296)
    {
      (*(v710 + 104))(v709, enum case for InsightRecordPayload.Grouping.runtime(_:), v711);
      sub_1000A32D8();
      v297 = (v733 + 16);
      v298 = *(v733 + 16);
      v761 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v299 = v290 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
      v300 = v733;
      v301 = v731;
      v302 = v732;
      v298(v731, v299, v732);
      v303 = v735;
      sub_1000A3918();
      v752 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
      v304 = sub_1000A3DF8();
      v305 = *(v300 + 8);
      v305(v303, v302);
      v750 = v305;
      v305(v301, v302);
      v306 = v713;
      if (v304)
      {
        v744 = v298;
        v748 = v297;
        sub_1000A3118();
        v307 = v688;
        sub_1000A28B8();
        v308 = v686;
        v309 = v726;
        sub_1000A2778();
        v310 = *(v743 + 8);
        v743 += 8;
        v311 = v310;
        v310(v307, v309);
        v312 = v759;
        v749 = v760[6];
        if ((v749)(v308, 1, v759) == 1)
        {
          sub_100022154(v308, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v308, v312);
        }

        v380 = v691;
        v381 = v687;
        sub_1000A30A8();
        v382 = v690;
        sub_1000A28B8();
        sub_1000A2748();
        v311(v382, v309);
        if ((v749)(v381, 1, v312) == 1)
        {
          sub_100022154(v381, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v381, v312);
        }

        sub_1000A3018();
        v383 = v692;
        sub_1000A28B8();
        v384 = v689;
        sub_1000A2768();
        v385 = v383;
        v386 = v384;
        v311(v385, v309);
        v387 = v384;
        v388 = v749;
        if ((v749)(v387, 1, v312) == 1)
        {
          sub_100022154(v386, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v386, v312);
        }

        sub_1000A3078();
        v389 = v694;
        sub_1000A28B8();
        sub_1000A2758();
        v311(v389, v309);
        if (v388(v380, 1, v312) == 1)
        {
          sub_100022154(v380, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v380, v312);
        }

        sub_1000A3048();
        v390 = v695;
        sub_1000A28B8();
        v391 = v693;
        sub_1000A2788();
        v311(v390, v309);
        if (v388(v391, 1, v312) == 1)
        {
          sub_100022154(v391, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v391, v312);
        }

        v302 = v732;
        v301 = v731;
        v303 = v735;
        v392 = v728;
        sub_1000A30D8();
        sub_1000A3108();
        v393 = v742;
        v394 = v729;
        (*(v742 + 16))(v703, v392, v729);
        sub_1000A32B8();
        (*(v393 + 8))(v392, v394);
        v306 = v713;
        v298 = v744;
      }

      v298(v301, &v761[v747], v302);
      sub_1000A3908();
      v395 = sub_1000A3DF8();
      v396 = v303;
      v397 = v395;
      v398 = v750;
      v750(v396, v302);
      v398(v301, v302);
      v318 = v762;
      v261 = v727;
      v255 = v751;
      if (v397)
      {
        sub_1000A3228();
        v399 = v699;
        sub_1000A28C8();
        v400 = v696;
        v401 = v715;
        sub_1000A27D8();
        v402 = v400;
        v403 = *(v719 + 8);
        v403(v399, v401);
        v404 = v759;
        v405 = v760[6];
        v760 += 6;
        if (v405(v402, 1, v759) == 1)
        {
          sub_100022154(v402, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v402, v404);
        }

        sub_1000A3188();
        v406 = v700;
        sub_1000A28C8();
        v407 = v697;
        sub_1000A27E8();
        v403(v406, v401);
        if (v405(v407, 1, v404) == 1)
        {
          sub_100022154(v407, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v407, v404);
        }

        v408 = v306;
        sub_1000A31B8();
        v409 = v701;
        sub_1000A28C8();
        v410 = v698;
        sub_1000A27F8();
        v403(v409, v401);
        if (v405(v410, 1, v404) == 1)
        {
          sub_100022154(v410, &qword_1000C7F88, &qword_1000ABDB0);
        }

        else
        {
          sub_1000A2908();
          (v753)(v410, v404);
        }

        v318 = v762;
        v261 = v727;
        v255 = v751;
        sub_1000A3218();
        sub_1000A31E8();
        v411 = v734;
        v412 = v720;
        (*(v734 + 2))(v704, v408, v720);
        sub_1000A3158();
        (*(v411 + 1))(v408, v412);
      }
    }

    else
    {
      v313 = v707;
      v314 = v744;
      (v748)(v707, v752, v744);
      v315 = sub_1000A2928();
      v317 = v316;
      v286(v313, v314);
      if (v315 == v761 && v317 == v750)
      {

        v318 = v762;
        v261 = v727;
        v255 = v751;
      }

      else
      {
        v362 = sub_1000A3F48();

        v318 = v762;
        v261 = v727;
        v255 = v751;
        if ((v362 & 1) == 0)
        {
          (*(v710 + 104))(v709, enum case for InsightRecordPayload.Grouping.energy(_:), v711);
          sub_1000A32D8();
          v363 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
          v364 = v733;
          v365 = *(v733 + 16);
          v366 = v731;
          v367 = v732;
          v365(v731, v747 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v732);
          v368 = v735;
          sub_1000A3918();
          v759 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
          v369 = sub_1000A3DF8();
          v370 = *(v364 + 8);
          v370(v368, v367);
          v370(v366, v367);
          if (v369)
          {
            v752 = v370;
            v753 = v363;
            v754 = v365;
            sub_1000A3118();
            v371 = v637;
            sub_1000A28A8();
            v372 = v635;
            v373 = v708;
            sub_1000A2778();
            v374 = *(v712 + 8);
            v712 += 8;
            v761 = v374;
            (v374)(v371, v373);
            v375 = v717;
            v376 = v724;
            v760 = *(v717 + 48);
            if ((v760)(v372, 1, v724) == 1)
            {
              sub_100022154(v372, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v375 + 8))(v372, v376);
            }

            v498 = v638;
            sub_1000A30A8();
            v499 = v639;
            sub_1000A28A8();
            v500 = v636;
            v501 = v708;
            sub_1000A2748();
            (v761)(v499, v501);
            if ((v760)(v500, 1, v376) == 1)
            {
              sub_100022154(v500, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v500, v376);
            }

            v502 = v652;
            sub_1000A3018();
            v503 = v641;
            sub_1000A28A8();
            v504 = v708;
            sub_1000A2768();
            (v761)(v503, v504);
            if ((v760)(v498, 1, v376) == 1)
            {
              sub_100022154(v498, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v498, v376);
            }

            v505 = v640;
            sub_1000A3078();
            v506 = v643;
            sub_1000A28A8();
            v507 = v708;
            sub_1000A2758();
            (v761)(v506, v507);
            if ((v760)(v505, 1, v376) == 1)
            {
              sub_100022154(v505, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v505, v376);
            }

            sub_1000A3048();
            v508 = v644;
            sub_1000A28A8();
            v509 = v642;
            v510 = v708;
            sub_1000A2788();
            (v761)(v508, v510);
            if ((v760)(v509, 1, v376) == 1)
            {
              sub_100022154(v509, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v509, v376);
            }

            v367 = v732;
            v366 = v731;
            v511 = v729;
            v363 = v753;
            sub_1000A30D8();
            sub_1000A3108();
            v512 = v742;
            (*(v742 + 16))(v703, v502, v511);
            sub_1000A32B8();
            (*(v512 + 8))(v502, v511);
            v365 = v754;
            v370 = v752;
          }

          v365(v366, v747 + v363, v367);
          v513 = v735;
          sub_1000A3908();
          v514 = sub_1000A3DF8();
          v370(v513, v367);
          v370(v366, v367);
          v318 = v762;
          v261 = v727;
          v255 = v751;
          if (v514)
          {
            sub_1000A3228();
            v515 = v647;
            sub_1000A2898();
            v516 = v645;
            v517 = v685;
            sub_1000A27D8();
            v518 = *(v651 + 8);
            v518(v515, v517);
            v519 = v717;
            v520 = v724;
            v761 = *(v717 + 48);
            if ((v761)(v516, 1, v724) == 1)
            {
              sub_100022154(v516, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v519 + 8))(v516, v724);
              v520 = v724;
            }

            v521 = v648;
            sub_1000A3188();
            v522 = v649;
            sub_1000A2898();
            v523 = v646;
            sub_1000A27E8();
            v524 = v523;
            v518(v522, v517);
            v525 = v523;
            v526 = v761;
            if ((v761)(v525, 1, v520) == 1)
            {
              sub_100022154(v524, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v524, v724);
              v520 = v724;
            }

            sub_1000A31B8();
            v527 = v650;
            sub_1000A2898();
            sub_1000A27F8();
            v518(v527, v517);
            if ((v526)(v521, 1, v520) == 1)
            {
              sub_100022154(v521, &qword_1000C7F90, &qword_1000ABDB8);
            }

            else
            {
              sub_1000A27A8();
              (*(v717 + 8))(v521, v520);
            }

            v318 = v762;
            v261 = v727;
            v255 = v751;
            v528 = v702;
            sub_1000A3218();
            sub_1000A31E8();
            v529 = v734;
            v530 = v720;
            (*(v734 + 2))(v704, v528, v720);
            sub_1000A3158();
            (*(v529 + 1))(v528, v530);
          }
        }
      }
    }

    (*(v318 + 16))(v261, v255, v767);
    v256 = v765;
    v321 = *v765;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v321;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_208:
      v321 = sub_10009501C(0, *(v321 + 2) + 1, 1, v321);
      *v256 = v321;
    }

    v415 = *(v321 + 2);
    v414 = *(v321 + 3);
    if (v415 >= v414 >> 1)
    {
      *v256 = sub_10009501C(v414 > 1, v415 + 1, 1, v321);
    }

    v416 = v255;
    v417 = v767;
    (*(v318 + 8))(v416, v767);
    v418 = v757;
    v419 = v764;
    (v757)(v756, v764);
    v418(v758, v419);
    (*(v745 + 8))(v763, v746);
    v420 = *v256;
    *(v420 + 16) = v415 + 1;
    return (*(v318 + 32))(v420 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v415, v261, v417);
  }

  v754 = v250;
  v755 = v251;
  v762 = *(*v239 + 16);
  v252 = v762 - 1;
  v253 = enum case for EnergyKit.LoadType.hvac(_:);
  v254 = v749;
  v255 = v749 + 104;
  v256 = v714;
  v257 = v744;
  v751 = *(v749 + 104);
  (v751)(v714, enum case for EnergyKit.LoadType.hvac(_:), v744);
  v258 = sub_1000A2928();
  v260 = v259;
  v262 = *(v254 + 8);
  v261 = (v254 + 8);
  v749 = v262;
  v262(v256, v257);
  if (v258 == v761 && v260 == v750)
  {

    v263 = v602;
    goto LABEL_29;
  }

  v319 = sub_1000A3F48();

  v263 = v602;
  if ((v319 & 1) == 0)
  {
    v320 = v706;
    sub_1000A28D8();
    v321 = sub_1000A27A8();
    (*(v717 + 8))(v320, v724);
    v322 = v765;
    v323 = *v765;
    v324 = swift_isUniquelyReferenced_nonNull_native();
    *v322 = v323;
    if ((v324 & 1) == 0)
    {
      goto LABEL_212;
    }

    v325 = v762;
    if (v762)
    {
      goto LABEL_27;
    }

LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  while (1)
  {
LABEL_29:
    v328 = v739;
    sub_1000A28E8();
    v321 = sub_1000A2908();
    v752 = v760[1];
    v753 = (v760 + 1);
    (v752)(v328, v759);
    v322 = v765;
    v323 = *v765;
    v329 = swift_isUniquelyReferenced_nonNull_native();
    *v322 = v323;
    if (v329)
    {
      v330 = v762;
      if (!v762)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v323 = sub_1000322E0(v323);
      *v765 = v323;
      v330 = v762;
      if (!v762)
      {
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }
    }

    if (v330 <= *(v323 + 2))
    {
      break;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    v323 = sub_1000322E0(v323);
    *v765 = v323;
    v325 = v762;
    if (!v762)
    {
      goto LABEL_213;
    }

LABEL_27:
    if (v325 > *(v323 + 2))
    {
      goto LABEL_214;
    }

    v326 = sub_1000A2F98();
    *v327 = *v327 + v321;
    v326(v768, 0);
  }

  v757 = v252 * v263;
  v331 = sub_1000A2FD8();
  *v332 = *v332 + v321;
  v331(v768, 0);
  v333 = v747;
  v334 = *(v747 + 120);
  v335 = sub_1000A3858();
  v336 = v737;
  v337 = v736;
  v338 = v738;
  (*(v737 + 104))(v736, enum case for ElectricityInsightQuery.QueryType.runtime(_:), v738);
  v339 = sub_1000A38C8();
  (*(v336 + 8))(v337, v338);
  if (v335 != v339)
  {
    v355 = v333;
    v356 = v705;
    v357 = v744;
    (v751)(v705, v253, v744);
    v358 = sub_1000A2928();
    v360 = v359;
    (v749)(v356, v357);
    v261 = v734;
    v323 = v764;
    if (v358 == v761 && v360 == v750)
    {

      v361 = v758;
      v255 = v755;
LABEL_45:
      (v255)(v756, v323);
      v378 = v361;
      v379 = v323;
      goto LABEL_128;
    }

    v377 = sub_1000A3F48();

    v361 = v758;
    v255 = v755;
    if (v377)
    {
      goto LABEL_45;
    }

    v422 = v733;
    v423 = *(v733 + 16);
    v751 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
    v255 = v355;
    v321 = v731;
    v424 = v732;
    v752 = v423;
    v753 = v733 + 16;
    v423(v731, &v355[OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options], v732);
    v425 = v735;
    sub_1000A3918();
    v749 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
    v252 = sub_1000A3DF8();
    v427 = *(v422 + 8);
    v426 = v422 + 8;
    v263 = v427;
    v427(v425, v424);
    v733 = v426;
    v750 = v427;
    v427(v321, v424);
    if ((v252 & 1) == 0)
    {
      goto LABEL_185;
    }

    v256 = v765;
    if (v762 > *(*v765 + 16))
    {
      goto LABEL_239;
    }

    v428 = v631;
    v429 = v767;
    v721(v631, *v765 + v718 + v757, v767);
    v430 = v632;
    sub_1000A32A8();
    v723(v428, v429);
    sub_1000A3098();
    v432 = v431;
    v433 = *(v742 + 8);
    v742 += 8;
    v761 = v433;
    (v433)(v430, v729);
    v434 = v634;
    sub_1000A28A8();
    v435 = v633;
    v436 = v708;
    sub_1000A2778();
    v437 = *(v712 + 8);
    v712 += 8;
    v760 = v437;
    (v437)(v434, v436);
    v263 = v717;
    v426 = v717 + 48;
    v438 = v724;
    v759 = *(v717 + 48);
    if ((v759)(v435, 1, v724) == 1)
    {
      sub_100022154(v435, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v263 + 8))(v435, v438);
      if (v432 != -1.0)
      {
        v252 = v718;
        v323 = v757;
LABEL_157:
        v321 = *v256;
        v531 = swift_isUniquelyReferenced_nonNull_native();
        *v256 = v321;
        if ((v531 & 1) == 0)
        {
          goto LABEL_240;
        }

        goto LABEL_158;
      }
    }

    v252 = v718;
    v323 = v757;
    goto LABEL_157;
  }

  v751 = OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options;
  v340 = v733;
  v252 = v733 + 16;
  v761 = *(v733 + 16);
  v321 = v731;
  v255 = v732;
  (v761)(v731, v333 + OBJC_IVAR____TtC16EnergyKitService21LoadEventsQueryEngine_options, v732);
  v261 = v735;
  sub_1000A3918();
  v341 = sub_100032134(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
  v322 = sub_1000A3DF8();
  v343 = *(v340 + 8);
  v342 = v340 + 8;
  v323 = v343;
  (v343)(v261, v255);
  (v343)(v321, v255);
  v344 = v751;
  v345 = v761;
  v346 = v764;
  if ((v322 & 1) == 0)
  {
    goto LABEL_107;
  }

  v744 = v341;
  v748 = v323;
  v741 = v252;
  v733 = v342;
  v256 = v765;
  v263 = v762;
  if (v762 > *(*v765 + 16))
  {
LABEL_215:
    __break(1u);
LABEL_216:
    v321 = sub_1000322E0(v321);
    *v256 = v321;
    goto LABEL_81;
  }

  v323 = v718;
  v347 = v681;
  v348 = v767;
  v721(v681, *v765 + v718 + v757, v767);
  v349 = v682;
  sub_1000A32A8();
  v723(v347, v348);
  sub_1000A3098();
  v350 = *(v742 + 8);
  v742 += 8;
  v750 = v350;
  v350(v349, v729);
  v351 = v684;
  sub_1000A28B8();
  v322 = v683;
  v352 = v726;
  sub_1000A2778();
  v353 = *(v743 + 8);
  v743 += 8;
  v749 = v353;
  v353(v351, v352);
  v354 = v759;
  v255 = (v760 + 6);
  v252 = v760[6];
  if ((v252)(v322, 1, v759) == 1)
  {
    sub_100022154(v322, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v752)(v322, v354);
  }

  v321 = *v256;
  v439 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v321;
  if ((v439 & 1) == 0)
  {
    goto LABEL_216;
  }

LABEL_81:
  if (v263 > *(v321 + 2))
  {
    __break(1u);
    goto LABEL_218;
  }

  v440 = v263;
  v322 = v323;
  v263 = v768;
  v261 = v757;
  v323 = sub_1000A3298();
  v321 = v441;
  sub_1000A30A8();
  (v323)(v768, 0);
  if (v440 > *(*v256 + 16))
  {
LABEL_218:
    __break(1u);
LABEL_219:
    v321 = sub_1000322E0(v321);
    *v256 = v321;
    goto LABEL_87;
  }

  v442 = v677;
  v443 = v767;
  v721(v677, &v261[*v256 + v322], v767);
  v444 = v678;
  sub_1000A32A8();
  v723(v442, v443);
  sub_1000A3008();
  v750(v444, v729);
  v323 = v680;
  sub_1000A28B8();
  v263 = v679;
  v445 = v726;
  sub_1000A2748();
  (v749)(v323, v445);
  v446 = v759;
  if ((v252)(v263, 1, v759) == 1)
  {
    sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v752)(v263, v446);
  }

  v321 = *v256;
  v447 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v321;
  if ((v447 & 1) == 0)
  {
    goto LABEL_219;
  }

LABEL_87:
  v448 = v762;
  if (v762 > *(v321 + 2))
  {
    __break(1u);
    goto LABEL_221;
  }

  v263 = v768;
  v323 = sub_1000A3298();
  v321 = v449;
  sub_1000A3018();
  (v323)(v768, 0);
  if (v448 > *(*v256 + 16))
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v450 = v673;
  v451 = v767;
  v721(v673, &v261[*v256 + v322], v767);
  v452 = v674;
  sub_1000A32A8();
  v723(v450, v451);
  sub_1000A3068();
  v750(v452, v729);
  v323 = v676;
  sub_1000A28B8();
  v263 = v675;
  v453 = v726;
  sub_1000A2768();
  (v749)(v323, v453);
  v454 = v759;
  if ((v252)(v263, 1, v759) == 1)
  {
    sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (v752)(v263, v454);
  }

  v321 = *v256;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v321;
  if ((v455 & 1) == 0)
  {
    goto LABEL_223;
  }

  while (1)
  {
    v456 = v762;
    if (v762 > *(v321 + 2))
    {
      __break(1u);
LABEL_225:
      v456 = sub_1000322E0(v456);
      *v256 = v456;
      goto LABEL_114;
    }

    v263 = v768;
    v323 = sub_1000A3298();
    v321 = v457;
    sub_1000A3078();
    (v323)(v768, 0);
    if (v456 > *(*v256 + 16))
    {
      goto LABEL_227;
    }

    v458 = v665;
    v459 = v767;
    v721(v665, &v261[*v256 + v322], v767);
    v460 = v666;
    sub_1000A32A8();
    v723(v458, v459);
    sub_1000A3038();
    v750(v460, v729);
    v323 = v668;
    sub_1000A28B8();
    v263 = v667;
    v461 = v726;
    sub_1000A2758();
    (v749)(v323, v461);
    v462 = v759;
    if ((v252)(v263, 1, v759) == 1)
    {
      sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
    }

    else
    {
      sub_1000A2908();
      (v752)(v263, v462);
    }

    v321 = *v256;
    v463 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v321;
    if ((v463 & 1) == 0)
    {
LABEL_229:
      v321 = sub_1000322E0(v321);
      *v256 = v321;
    }

    v426 = v762;
    if (v762 > *(v321 + 2))
    {
      __break(1u);
      goto LABEL_231;
    }

    v263 = v768;
    v323 = sub_1000A3298();
    v321 = v464;
    sub_1000A3048();
    (v323)(v768, 0);
    if (v426 > *(*v256 + 16))
    {
      goto LABEL_233;
    }

    v465 = v657;
    v466 = v767;
    v721(v657, &v261[*v256 + v322], v767);
    v467 = v658;
    sub_1000A32A8();
    v723(v465, v466);
    sub_1000A30C8();
    v750(v467, v729);
    v323 = v660;
    sub_1000A28B8();
    v263 = v659;
    v468 = v726;
    sub_1000A2788();
    (v749)(v323, v468);
    v426 = v759;
    if ((v252)(v263, 1, v759) == 1)
    {
      sub_100022154(v263, &qword_1000C7F88, &qword_1000ABDB0);
    }

    else
    {
      sub_1000A2908();
      (v752)(v263, v426);
    }

    v255 = v732;
    v321 = *v256;
    v469 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v321;
    if ((v469 & 1) == 0)
    {
LABEL_235:
      v321 = sub_1000322E0(v321);
      *v256 = v321;
    }

    if (v762 > *(v321 + 2))
    {
      __break(1u);
      goto LABEL_237;
    }

    v470 = sub_1000A3298();
    sub_1000A30D8();
    v470(v768, 0);
    v346 = v764;
    v333 = v747;
    v321 = v731;
    v261 = v735;
    v252 = v741;
    v345 = v761;
    v344 = v751;
    v323 = v748;
LABEL_107:
    v471 = v346;
    (v345)(v321, &v344[v333], v255);
    sub_1000A3908();
    v263 = sub_1000A3DF8();
    (v323)(v261, v255);
    (v323)(v321, v255);
    if ((v263 & 1) == 0)
    {
      v478 = v755;
      (v755)(v756, v471);
      v478(v758, v471);
      return (*(v745 + 8))(v763, v746);
    }

    v256 = v765;
    v322 = v762;
    if (v762 <= *(*v765 + 16))
    {
      break;
    }

LABEL_222:
    __break(1u);
LABEL_223:
    v321 = sub_1000322E0(v321);
    *v256 = v321;
  }

  v263 = v718;
  v472 = v669;
  v473 = v767;
  v721(v669, *v765 + v718 + v757, v767);
  v474 = v671;
  sub_1000A3148();
  v723(v472, v473);
  sub_1000A3178();
  v252 = *(v734 + 1);
  v734 += 8;
  (v252)(v474, v720);
  v475 = v672;
  sub_1000A28C8();
  v255 = v670;
  v476 = v715;
  v321 = v475;
  sub_1000A27D8();
  v477 = *(v719 + 8);
  v719 += 8;
  v761 = v477;
  (v477)(v475, v476);
  v323 = v759;
  v261 = v760[6];
  v760 += 6;
  if ((v261)(v255, 1, v759) == 1)
  {
    sub_100022154(v255, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v321 = v255;
    sub_1000A2908();
    (v752)(v255, v323);
  }

  v456 = *v256;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v456;
  if ((v479 & 1) == 0)
  {
    goto LABEL_225;
  }

LABEL_114:
  if (v322 > v456[2])
  {
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v323 = v768;
  v255 = v757;
  v480 = sub_1000A3138();
  v321 = v481;
  sub_1000A3188();
  v480(v768, 0);
  if (v322 > *(*v256 + 16))
  {
    goto LABEL_228;
  }

  v482 = v661;
  v483 = v767;
  v721(v661, *v256 + v263 + v255, v767);
  v484 = v663;
  sub_1000A3148();
  v723(v482, v483);
  sub_1000A31A8();
  (v252)(v484, v720);
  v485 = v664;
  sub_1000A28C8();
  v255 = v662;
  v486 = v715;
  v321 = v485;
  sub_1000A27E8();
  (v761)(v485, v486);
  v323 = v759;
  if ((v261)(v255, 1, v759) == 1)
  {
    sub_100022154(v255, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v321 = v255;
    sub_1000A2908();
    (v752)(v255, v323);
  }

  v426 = *v256;
  v487 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v426;
  if ((v487 & 1) == 0)
  {
LABEL_231:
    v426 = sub_1000322E0(v426);
    *v256 = v426;
  }

  if (v322 > *(v426 + 16))
  {
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v323 = v768;
  v255 = v757;
  v426 = sub_1000A3138();
  v321 = v488;
  sub_1000A31B8();
  (v426)(v768, 0);
  if (v322 > *(*v256 + 16))
  {
    goto LABEL_234;
  }

  v489 = v653;
  v490 = v767;
  v721(v653, *v256 + v263 + v255, v767);
  v491 = v655;
  sub_1000A3148();
  v723(v489, v490);
  sub_1000A3208();
  (v252)(v491, v720);
  v492 = v656;
  sub_1000A28C8();
  v493 = v654;
  v494 = v715;
  v321 = v492;
  sub_1000A27F8();
  (v761)(v492, v494);
  v323 = v759;
  if ((v261)(v493, 1, v759) == 1)
  {
    sub_100022154(v493, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    v321 = v493;
    sub_1000A2908();
    (v752)(v493, v323);
  }

  v263 = v758;
  v255 = v755;
  v426 = *v256;
  v495 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v426;
  if ((v495 & 1) == 0)
  {
LABEL_237:
    v426 = sub_1000322E0(v426);
    *v256 = v426;
  }

  if (v322 <= *(v426 + 16))
  {
    goto LABEL_127;
  }

  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  v321 = sub_1000322E0(v321);
  *v256 = v321;
LABEL_158:
  v532 = v762;
  if (v762 > *(v321 + 2))
  {
    __break(1u);
    goto LABEL_242;
  }

  v263 = v768;
  v261 = v323;
  v323 = sub_1000A3298();
  v321 = v533;
  sub_1000A30A8();
  (v323)(v768, 0);
  if (v532 > *(*v256 + 16))
  {
LABEL_242:
    __break(1u);
LABEL_243:
    v321 = sub_1000322E0(v321);
    *v256 = v321;
    goto LABEL_165;
  }

  v534 = v627;
  v535 = v767;
  v721(v627, &v261[*v256 + v252], v767);
  v536 = v628;
  sub_1000A32A8();
  v723(v534, v535);
  sub_1000A3008();
  (v761)(v536, v729);
  v263 = v630;
  sub_1000A28A8();
  v537 = v629;
  v538 = v708;
  sub_1000A2748();
  (v760)(v263, v538);
  v539 = v724;
  if ((v759)(v537, 1, v724) == 1)
  {
    sub_100022154(v537, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v717 + 8))(v537, v539);
  }

  v323 = v757;
  v321 = *v256;
  v540 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v321;
  if ((v540 & 1) == 0)
  {
    goto LABEL_243;
  }

LABEL_165:
  v541 = v762;
  if (v762 > *(v321 + 2))
  {
    __break(1u);
    goto LABEL_245;
  }

  v263 = v768;
  v261 = v323;
  v323 = sub_1000A3298();
  v321 = v542;
  sub_1000A3018();
  (v323)(v768, 0);
  if (v541 > *(*v256 + 16))
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v543 = v623;
  v544 = v767;
  v721(v623, &v261[*v256 + v252], v767);
  v545 = v624;
  sub_1000A32A8();
  v723(v543, v544);
  sub_1000A3068();
  (v761)(v545, v729);
  v263 = v626;
  sub_1000A28A8();
  v546 = v625;
  v547 = v708;
  sub_1000A2768();
  (v760)(v263, v547);
  v548 = v724;
  if ((v759)(v546, 1, v724) == 1)
  {
    sub_100022154(v546, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v717 + 8))(v546, v548);
  }

  v323 = v757;
  v321 = *v256;
  v549 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v321;
  if ((v549 & 1) == 0)
  {
    goto LABEL_247;
  }

  while (1)
  {
    v550 = v762;
    if (v762 > *(v321 + 2))
    {
      __break(1u);
      goto LABEL_249;
    }

    v263 = v768;
    v261 = v323;
    v323 = sub_1000A3298();
    v321 = v551;
    sub_1000A3078();
    (v323)(v768, 0);
    if (v550 > *(*v256 + 16))
    {
      goto LABEL_251;
    }

    v552 = v615;
    v553 = v767;
    v721(v615, &v261[*v256 + v252], v767);
    v554 = v616;
    sub_1000A32A8();
    v723(v552, v553);
    sub_1000A3038();
    (v761)(v554, v729);
    v263 = v618;
    sub_1000A28A8();
    v555 = v617;
    v556 = v708;
    sub_1000A2758();
    (v760)(v263, v556);
    v557 = v724;
    if ((v759)(v555, 1, v724) == 1)
    {
      sub_100022154(v555, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v717 + 8))(v555, v557);
    }

    v323 = v757;
    v321 = *v256;
    v558 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v321;
    if ((v558 & 1) == 0)
    {
LABEL_253:
      v321 = sub_1000322E0(v321);
      *v256 = v321;
    }

    v318 = v762;
    if (v762 > *(v321 + 2))
    {
      __break(1u);
      goto LABEL_255;
    }

    v263 = v768;
    v261 = v323;
    v559 = sub_1000A3298();
    v321 = v560;
    sub_1000A3048();
    v559(v768, 0);
    if (v318 > *(*v256 + 16))
    {
      goto LABEL_257;
    }

    v561 = v607;
    v562 = v767;
    v721(v607, &v261[*v256 + v252], v767);
    v563 = v608;
    sub_1000A32A8();
    v723(v561, v562);
    sub_1000A30C8();
    (v761)(v563, v729);
    v263 = v610;
    sub_1000A28A8();
    v318 = v609;
    v564 = v708;
    sub_1000A2788();
    (v760)(v263, v564);
    v565 = v724;
    v566 = (v759)(v318, 1, v724);
    v255 = v747;
    if (v566 == 1)
    {
      sub_100022154(v318, &qword_1000C7F90, &qword_1000ABDB8);
    }

    else
    {
      sub_1000A27A8();
      (*(v717 + 8))(v318, v565);
    }

    v426 = v762;
    v261 = v734;
    v321 = *v256;
    v567 = swift_isUniquelyReferenced_nonNull_native();
    *v256 = v321;
    if ((v567 & 1) == 0)
    {
LABEL_259:
      v321 = sub_1000322E0(v321);
      *v256 = v321;
    }

    if (v426 > *(v321 + 2))
    {
      __break(1u);
      goto LABEL_261;
    }

    v568 = sub_1000A3298();
    sub_1000A30D8();
    v568(v768, 0);
    v323 = v764;
LABEL_185:
    v263 = v731;
    v569 = v732;
    (v752)(v731, &v751[v255], v732);
    v570 = v735;
    sub_1000A3908();
    v426 = sub_1000A3DF8();
    v571 = v570;
    v321 = v733;
    v572 = v750;
    v750(v571, v569);
    v572(v263, v569);
    if ((v426 & 1) == 0)
    {
      v583 = v755;
      (v755)(v756, v323);
      v583(v758, v323);
      return (*(v745 + 8))(v763, v746);
    }

    v256 = v765;
    if (v762 <= *(*v765 + 16))
    {
      break;
    }

LABEL_246:
    __break(1u);
LABEL_247:
    v321 = sub_1000322E0(v321);
    *v256 = v321;
  }

  v573 = v619;
  v574 = v767;
  v721(v619, *v765 + v718 + v757, v767);
  v575 = v620;
  sub_1000A3148();
  v723(v573, v574);
  sub_1000A3178();
  v577 = v576;
  v578 = *(v261 + 1);
  v261 += 8;
  v761 = v578;
  (v578)(v575, v720);
  v579 = v622;
  sub_1000A2898();
  v255 = v621;
  v580 = v685;
  sub_1000A27D8();
  v252 = v651 + 8;
  v760 = *(v651 + 8);
  (v760)(v579, v580);
  v581 = v717;
  v323 = (v717 + 48);
  v582 = v724;
  v759 = *(v717 + 48);
  if ((v759)(v255, 1, v724) == 1)
  {
    sub_100022154(v255, &qword_1000C7F90, &qword_1000ABDB8);
    goto LABEL_191;
  }

  sub_1000A27A8();
  (*(v581 + 8))(v255, v582);
  if (v577 == -1.0)
  {
LABEL_191:
    v321 = v718;
    v263 = v762;
  }

  else
  {
    v321 = v718;
    v263 = v762;
  }

  v426 = *v256;
  v584 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v426;
  if (v584)
  {
    goto LABEL_193;
  }

LABEL_249:
  v426 = sub_1000322E0(v426);
  *v256 = v426;
LABEL_193:
  v734 = v261;
  if (v263 > *(v426 + 16))
  {
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  v318 = v321;
  v255 = v768;
  v261 = v757;
  v426 = sub_1000A3138();
  v321 = v585;
  sub_1000A3188();
  (v426)(v768, 0);
  if (v263 > *(*v256 + 16))
  {
    goto LABEL_252;
  }

  v586 = v611;
  v587 = v767;
  v721(v611, &v261[*v256 + v318], v767);
  v588 = v612;
  sub_1000A3148();
  v723(v586, v587);
  sub_1000A31A8();
  (v761)(v588, v720);
  v589 = v614;
  sub_1000A2898();
  v255 = v613;
  v590 = v685;
  sub_1000A27E8();
  (v760)(v589, v590);
  v591 = v724;
  if ((v759)(v255, 1, v724) == 1)
  {
    sub_100022154(v255, &qword_1000C7F90, &qword_1000ABDB8);
    v321 = v718;
    v263 = v762;
  }

  else
  {
    sub_1000A27A8();
    (*(v717 + 8))(v255, v591);
    v263 = v762;
    v321 = v718;
  }

  v426 = *v256;
  v592 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v426;
  if ((v592 & 1) == 0)
  {
LABEL_255:
    v426 = sub_1000322E0(v426);
    *v256 = v426;
  }

  if (v263 > *(v426 + 16))
  {
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v318 = v321;
  v255 = v768;
  v261 = v757;
  v426 = sub_1000A3138();
  v321 = v593;
  sub_1000A31B8();
  (v426)(v768, 0);
  if (v263 > *(*v256 + 16))
  {
    goto LABEL_258;
  }

  v594 = v603;
  v595 = v767;
  v721(v603, &v261[*v256 + v318], v767);
  v596 = v604;
  sub_1000A3148();
  v723(v594, v595);
  sub_1000A3208();
  (v761)(v596, v720);
  v597 = v606;
  sub_1000A2898();
  v598 = v605;
  v599 = v685;
  sub_1000A27F8();
  (v760)(v597, v599);
  v600 = v724;
  if ((v759)(v598, 1, v724) == 1)
  {
    sub_100022154(v598, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v717 + 8))(v598, v600);
  }

  v263 = v758;
  v255 = v755;
  v321 = v762;
  v426 = *v256;
  v601 = swift_isUniquelyReferenced_nonNull_native();
  *v256 = v426;
  if ((v601 & 1) == 0)
  {
LABEL_261:
    v426 = sub_1000322E0(v426);
    *v256 = v426;
  }

  if (v321 > *(v426 + 16))
  {
    __break(1u);
    goto LABEL_208;
  }

LABEL_127:
  v496 = sub_1000A3138();
  sub_1000A3218();
  v496(v768, 0);
  v497 = v764;
  (v255)(v756, v764);
  v378 = v263;
  v379 = v497;
LABEL_128:
  (v255)(v378, v379);
  return (*(v745 + 8))(v763, v746);
}

uint64_t sub_100032134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100032180(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100032224(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000321D0()
{
  result = qword_1000C7F10;
  if (!qword_1000C7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C7F10);
  }

  return result;
}

uint64_t sub_100032224(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10003228C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000322F4()
{
  v0 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v27 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v26 = &v24 - v2;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000A3098();
  v29 = sub_10000275C(&qword_1000C7F68, &qword_1000ABD98);
  sub_1000A2778();
  v14 = sub_1000A27B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  v28 = v15;
  if (v17 == 1)
  {
    sub_100022154(v13, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v15 + 8))(v13, v14);
  }

  v18 = v27;
  sub_1000A30A8();
  sub_1000A3008();
  sub_1000A2748();
  if (v16(v10, 1, v14) == 1)
  {
    sub_100022154(v10, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v28 + 8))(v10, v14);
  }

  sub_1000A3018();
  sub_1000A3068();
  sub_1000A2768();
  v19 = v16(v7, 1, v14);
  v20 = v28;
  v21 = v26;
  if (v19 == 1)
  {
    sub_100022154(v7, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v7, v14);
  }

  v22 = v25;
  sub_1000A3078();
  sub_1000A3038();
  sub_1000A2758();
  if (v16(v22, 1, v14) == 1)
  {
    sub_100022154(v22, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v22, v14);
  }

  sub_1000A3048();
  sub_1000A30C8();
  sub_1000A2788();
  if (v16(v21, 1, v14) == 1)
  {
    sub_100022154(v21, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v21, v14);
  }

  sub_1000A30D8();
  sub_1000A30F8();
  sub_1000A2798();
  if (v16(v18, 1, v14) == 1)
  {
    sub_100022154(v18, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v20 + 8))(v18, v14);
  }

  return sub_1000A3108();
}

uint64_t sub_1000328CC()
{
  v0 = sub_10000275C(&qword_1000C7F90, &qword_1000ABDB8);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v18 = &v17 - v2;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_1000A3178();
  v19 = sub_10000275C(&qword_1000C7F60, &qword_1000ABD90);
  sub_1000A27D8();
  v9 = sub_1000A27B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v10;
    sub_100022154(v8, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    v12 = v10;
    (*(v10 + 8))(v8, v9);
  }

  sub_1000A3188();
  sub_1000A31A8();
  sub_1000A27E8();
  v13 = v11(v5, 1, v9);
  v14 = v18;
  if (v13 == 1)
  {
    sub_100022154(v5, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v5, v9);
  }

  sub_1000A31B8();
  sub_1000A3208();
  sub_1000A27F8();
  if (v11(v14, 1, v9) == 1)
  {
    sub_100022154(v14, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v14, v9);
  }

  v15 = v20;
  sub_1000A3218();
  sub_1000A31D8();
  sub_1000A2808();
  if (v11(v15, 1, v9) == 1)
  {
    sub_100022154(v15, &qword_1000C7F90, &qword_1000ABDB8);
  }

  else
  {
    sub_1000A27A8();
    (*(v12 + 8))(v15, v9);
  }

  return sub_1000A31E8();
}

uint64_t sub_100032D00()
{
  v0 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v27 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v26 = &v24 - v2;
  __chkstk_darwin(v3);
  v25 = &v24 - v4;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_1000A3098();
  v29 = sub_10000275C(&qword_1000C7F78, &qword_1000ABDA8);
  sub_1000A2778();
  v14 = sub_1000A2918();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v13, 1, v14);
  v28 = v15;
  if (v17 == 1)
  {
    sub_100022154(v13, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v15 + 8))(v13, v14);
  }

  v18 = v27;
  sub_1000A30A8();
  sub_1000A3008();
  sub_1000A2748();
  if (v16(v10, 1, v14) == 1)
  {
    sub_100022154(v10, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v28 + 8))(v10, v14);
  }

  sub_1000A3018();
  sub_1000A3068();
  sub_1000A2768();
  v19 = v16(v7, 1, v14);
  v20 = v28;
  v21 = v26;
  if (v19 == 1)
  {
    sub_100022154(v7, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v7, v14);
  }

  v22 = v25;
  sub_1000A3078();
  sub_1000A3038();
  sub_1000A2758();
  if (v16(v22, 1, v14) == 1)
  {
    sub_100022154(v22, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v22, v14);
  }

  sub_1000A3048();
  sub_1000A30C8();
  sub_1000A2788();
  if (v16(v21, 1, v14) == 1)
  {
    sub_100022154(v21, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v21, v14);
  }

  sub_1000A30D8();
  sub_1000A30F8();
  sub_1000A2798();
  if (v16(v18, 1, v14) == 1)
  {
    sub_100022154(v18, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v20 + 8))(v18, v14);
  }

  return sub_1000A3108();
}

uint64_t sub_1000332D8()
{
  v0 = sub_10000275C(&qword_1000C7F88, &qword_1000ABDB0);
  __chkstk_darwin(*(*(v0 - 8) + 64));
  v20 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v18 = &v17 - v2;
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_1000A3178();
  v19 = sub_10000275C(&qword_1000C7F70, &qword_1000ABDA0);
  sub_1000A27D8();
  v9 = sub_1000A2918();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v10;
    sub_100022154(v8, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    v12 = v10;
    (*(v10 + 8))(v8, v9);
  }

  sub_1000A3188();
  sub_1000A31A8();
  sub_1000A27E8();
  v13 = v11(v5, 1, v9);
  v14 = v18;
  if (v13 == 1)
  {
    sub_100022154(v5, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v5, v9);
  }

  sub_1000A31B8();
  sub_1000A3208();
  sub_1000A27F8();
  if (v11(v14, 1, v9) == 1)
  {
    sub_100022154(v14, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v14, v9);
  }

  v15 = v20;
  sub_1000A3218();
  sub_1000A31D8();
  sub_1000A2808();
  if (v11(v15, 1, v9) == 1)
  {
    sub_100022154(v15, &qword_1000C7F88, &qword_1000ABDB0);
  }

  else
  {
    sub_1000A2908();
    (*(v12 + 8))(v15, v9);
  }

  return sub_1000A31E8();
}

uint64_t sub_10003372C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100033860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_1000A2498();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100033980(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_1000A2498();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_100033A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1000A2498();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100033B44()
{
  type metadata accessor for XPCStoreDriver();
  v0 = swift_allocObject();
  result = sub_100033B80();
  qword_1000C9648 = v0;
  return result;
}

void *sub_100033B80()
{
  v1 = v0;
  swift_defaultActor_initialize();
  type metadata accessor for XPCCoreDataStore();
  v2 = swift_allocObject();
  v2[10] = 0;
  v2[2] = 0xD000000000000010;
  v2[3] = 0x80000001000A6AC0;
  v2[4] = 0x6361436C61636F4CLL;
  v2[5] = 0xEA00000000006568;
  v2[6] = 0xD00000000000001ELL;
  v2[7] = 0x80000001000A6AE0;
  v2[8] = 0x656E696C66664FLL;
  v2[9] = 0xE700000000000000;

  v1[16] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000012;
  *(v3 + 24) = 0x80000001000A6B00;
  strcpy((v3 + 32), "InsightCache");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  *(v3 + 48) = 0xD000000000000020;
  *(v3 + 56) = 0x80000001000A6B20;
  *(v3 + 64) = 0x64756F6C43;
  *(v3 + 72) = 0xE500000000000000;
  *(v3 + 80) = 0;

  v1[14] = v3;
  v4 = swift_allocObject();
  *(v4 + 72) = 0xE500000000000000;
  *(v4 + 80) = 0;
  *(v4 + 16) = 0xD000000000000012;
  *(v4 + 24) = 0x80000001000A6B00;
  strcpy((v4 + 32), "InsightCache");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *(v4 + 48) = 0xD00000000000001FLL;
  *(v4 + 56) = 0x80000001000A6B50;
  *(v4 + 64) = 0x64756F6C43;

  v1[15] = v4;
  return v1;
}

uint64_t sub_100033D34()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100033DAC(uint64_t a1)
{
  v1 = *sub_100013C5C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100033DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v23 - v9;
  sub_100038E0C(a3, v23 - v9);
  v11 = sub_1000A3BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100022154(v10, &qword_1000C8240, &qword_1000AB688);
  }

  else
  {
    sub_1000A3BD8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000A3BA8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000A3AA8() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_10003403C(void *a1, id a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a5;
  v48 = a4;
  v49 = a1;
  v11 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v46 - v12;
  v14 = os_transaction_create();
  sub_10003690C();
  if (a3)
  {
    v15 = sub_1000A39B8();
    if (!(v15 >> 62))
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = sub_1000A3EC8();
    v50 = a6;
    v51 = v14;
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v15 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = a6;
  v51 = v14;
  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v16 < 1)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35B8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v42 = 32;
    do
    {
      v43 = *(v15 + v42);

      sub_1000A35B8();

      v42 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_11:

  v18 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a2];
  v19 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9EnergyKit22ClientEndpointProtocol_];
  [v18 setRemoteObjectInterface:v19];

  [v18 resume];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  aBlock[4] = sub_100039168;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034658;
  aBlock[3] = &unk_1000BF488;
  v21 = _Block_copy(aBlock);
  a2 = v18;

  v22 = [a2 remoteObjectProxyWithErrorHandler:v21];
  _Block_release(v21);
  sub_1000A3DE8();
  swift_unknownObjectRelease();
  sub_10000275C(&qword_1000C8248, &qword_1000ABEC0);
  if (swift_dynamicCast())
  {
    v23 = v52;
    v24 = sub_1000A3BE8();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v7;
    *(v25 + 40) = v23;
    v26 = v7;
    v27 = v49;
    v28 = v50;
    v29 = v47;
    *(v25 + 48) = v49;
    *(v25 + 56) = v29;
    v30 = v51;
    *(v25 + 64) = v28;
    *(v25 + 72) = v30;
    *(v25 + 80) = a3;
    *(v25 + 88) = v48 & 1;
    *(v25 + 96) = a2;
    v31 = a3;
    v32 = a2;
    v33 = v26;
    swift_unknownObjectRetain();
    v34 = v27;

    swift_unknownObjectRetain();
    sub_100069404(0, 0, v13, &unk_1000ABF10, v25);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100022154(v13, &qword_1000C8240, &qword_1000AB688);
    return;
  }

  if (qword_1000C7570 != -1)
  {
    goto LABEL_35;
  }

LABEL_14:
  v35 = sub_1000A3538();
  sub_100001E38(v35, qword_1000C96B8);
  v36 = sub_1000A3518();
  v37 = sub_1000A3CC8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to create client proxy", v38, 2u);
  }

  if (a3)
  {
    v39 = sub_1000A39B8();
    if (!(v39 >> 62))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v39 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_19;
      }

LABEL_29:

      swift_unknownObjectRelease();

      return;
    }
  }

  v40 = sub_1000A3EC8();
  if (!v40)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v40 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v40; ++j)
      {
        sub_1000A3EA8();
        sub_1000A35C8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v44 = 32;
      do
      {
        v45 = *(v39 + v44);

        sub_1000A35C8();

        v44 += 8;
        --v40;
      }

      while (v40);
    }

    swift_unknownObjectRelease();
  }
}

void sub_100034658(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000346C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 600) = v26;
  *(v8 + 816) = v25;
  *(v8 + 592) = v24;
  *(v8 + 584) = a8;
  *(v8 + 576) = a7;
  *(v8 + 568) = a6;
  *(v8 + 560) = a5;
  v9 = sub_10000275C(&qword_1000C82B0, &qword_1000ABEE0);
  *(v8 + 608) = v9;
  v10 = *(v9 - 8);
  *(v8 + 616) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 624) = swift_task_alloc();
  v12 = *(*(sub_10000275C(&qword_1000C8240, &qword_1000AB688) - 8) + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  v13 = sub_10000275C(&qword_1000C82B8, &qword_1000ABEE8);
  *(v8 + 640) = v13;
  v14 = *(v13 - 8);
  *(v8 + 648) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  v16 = sub_10000275C(&unk_1000C82C0, &qword_1000ABEF0);
  *(v8 + 664) = v16;
  v17 = *(v16 - 8);
  *(v8 + 672) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 680) = swift_task_alloc();
  v19 = sub_1000A2508();
  *(v8 + 688) = v19;
  v20 = *(v19 - 8);
  *(v8 + 696) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 704) = swift_task_alloc();

  return _swift_task_switch(sub_100034918, 0, 0);
}

uint64_t sub_100034918()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 712) = qword_1000C95F0;

  return _swift_task_switch(sub_1000349C0, v1, 0);
}

uint64_t sub_1000349C0()
{
  *(v0 + 817) = *(*(v0 + 712) + 144);

  v1 = swift_task_alloc();
  *(v0 + 720) = v1;
  *v1 = v0;
  v1[1] = sub_100034A74;

  return sub_1000472A8(0);
}

uint64_t sub_100034A74(char a1)
{
  v2 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 818) = a1;

  return _swift_task_switch(sub_100034B74, 0, 0);
}

uint64_t sub_100034B74()
{
  v1 = *(v0 + 818);
  if (*(v0 + 817))
  {
    if ((*(v0 + 818) & 1) == 0)
    {
      v2 = v0 + 336;
      v3 = v0 + 80;
      v4 = *(v0 + 568);
      v5 = *(v0 + 560);
      v6.super.isa = sub_1000A3B48().super.isa;
      *(v0 + 736) = v6;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_100035114;
      v7 = swift_continuation_init();
      *(v0 + 392) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
      *(v0 + 336) = _NSConcreteStackBlock;
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_100033DAC;
      *(v0 + 360) = &unk_1000BF500;
      *(v0 + 368) = v7;
LABEL_9:
      [v5 receiveInsightPayloads:v6.super.isa request:v4 finished:1 completionHandler:v2];

      return _swift_continuation_await(v3);
    }
  }

  else if ((*(v0 + 818) & 1) == 0)
  {
    v3 = v0 + 16;
    v2 = v0 + 272;
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6.super.isa = sub_1000A3B48().super.isa;
    *(v0 + 728) = v6;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100034E8C;
    v17 = swift_continuation_init();
    *(v0 + 328) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_100033DAC;
    *(v0 + 296) = &unk_1000BF4D8;
    *(v0 + 304) = v17;
    goto LABEL_9;
  }

  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 568);
  type metadata accessor for WholeHomeInsights();
  *(v0 + 744) = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1000A3898();
  v12 = sub_1000A24C8();
  v14 = v13;
  *(v0 + 752) = v13;
  (*(v9 + 8))(v8, v10);
  v15 = swift_task_alloc();
  *(v0 + 760) = v15;
  *v15 = v0;
  v15[1] = sub_1000353B0;

  return (sub_100067328)(v12, v14, 0);
}

uint64_t sub_100034E8C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100034F6C, 0, 0);
}

unint64_t sub_100034F6C()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);

  result = v3();
  if (v1)
  {
    v5 = *(v0 + 592);
    result = sub_1000A39B8();
    v6 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v7 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 32;
    do
    {
      v16 = *(v6 + v15);

      sub_1000A35C8();

      v15 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_11:

  v9 = *(v0 + 704);
  v10 = *(v0 + 680);
  v11 = *(v0 + 656);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100035114()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1000351F4, 0, 0);
}

unint64_t sub_1000351F4()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);

  v4();
  result = [v1 invalidate];
  if (v2)
  {
    v6 = *(v0 + 592);
    result = sub_1000A39B8();
    v7 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v8 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v8 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      v17 = *(v7 + v16);

      sub_1000A35C8();

      v16 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_11:

  v10 = *(v0 + 704);
  v11 = *(v0 + 680);
  v12 = *(v0 + 656);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000353B0(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 544) = a2;
  *(v4 + 536) = a1;
  *(v4 + 528) = v2;
  v5 = *(v3 + 760);
  v6 = *(v3 + 752);
  v8 = *v2;
  *(v4 + 768) = a1;

  return _swift_task_switch(sub_1000354DC, 0, 0);
}

uint64_t sub_1000354DC()
{
  v1 = *(v0 + 768);
  if (v1)
  {
    v2 = *(v0 + 744);
    *(v0 + 819) = *(v0 + 544);
    v3 = v1;

    return _swift_task_switch(sub_100035680, v2, 0);
  }

  else
  {
    *(v0 + 800) = 0;
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 808) = isa;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_100035F7C;
    v7 = swift_continuation_init();
    *(v0 + 456) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100033DAC;
    *(v0 + 424) = &unk_1000BF528;
    *(v0 + 432) = v7;
    [v5 receiveInsightPayloads:isa request:v4 finished:1 completionHandler:v0 + 400];

    return _swift_continuation_await(v0 + 144);
  }
}

uint64_t sub_100035680()
{
  v1 = type metadata accessor for CoreDataInsightStream();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 776) = v4;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  v6 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);

  return _swift_task_switch(sub_100035754, v4, 0);
}

uint64_t sub_100035754()
{
  v1 = v0[97];
  v2 = v0[93];
  v3 = v0[85];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  sub_10000275C(&qword_1000C82E0, &qword_1000ABEF8);
  (*(v5 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  sub_1000A3C38();

  return _swift_task_switch(sub_10003584C, v2, 0);
}

uint64_t sub_10003584C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 819);
  v3 = *(v0 + 768);
  v4 = *(v0 + 632);
  v5 = *(v0 + 816);
  v6 = *(v0 + 568);
  v7 = sub_1000A3BE8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v3;
  *(v8 + 40) = v1;
  *(v8 + 48) = v6;
  *(v8 + 56) = v2;
  *(v8 + 57) = v5;
  v9 = v3;

  v10 = v6;
  sub_100033DE0(0, 0, v4, &unk_1000ABF18, v8);

  sub_100022154(v4, &qword_1000C8240, &qword_1000AB688);

  return _swift_task_switch(sub_1000359A4, 0, 0);
}

uint64_t sub_1000359A4()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[78];
  sub_1000A3C18();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[98] = v5;
  *v5 = v0;
  v5[1] = sub_100035A5C;
  v6 = v0[78];
  v7 = v0[76];

  return AsyncStream.Iterator.next(isolation:)(v0 + 69, 0, 0, v7);
}

uint64_t sub_100035A5C()
{
  v1 = *(*v0 + 784);
  v3 = *v0;

  return _swift_task_switch(sub_100035B58, 0, 0);
}

uint64_t sub_100035B58()
{
  if (*(v0 + 552))
  {
    v1 = v0 + 208;
    v2 = *(v0 + 568);
    v3 = *(v0 + 560);
    v4 = *(v0 + 552);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 792) = isa;

    *(v0 + 208) = v0;
    *(v0 + 216) = sub_100035DEC;
    v6 = swift_continuation_init();
    *(v0 + 520) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 464) = _NSConcreteStackBlock;
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_100033DAC;
    *(v0 + 488) = &unk_1000BF578;
    *(v0 + 496) = v6;
    [v3 receiveInsightPayloads:isa request:v2 finished:0 completionHandler:v0 + 464];
  }

  else
  {
    v1 = v0 + 144;
    v7 = *(v0 + 680);
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    v12 = *(v0 + 608);

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    *(v0 + 800) = *(v0 + 768);
    v13 = *(v0 + 568);
    v14 = *(v0 + 560);
    v15 = sub_1000A3B48().super.isa;
    *(v0 + 808) = v15;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_100035F7C;
    v16 = swift_continuation_init();
    *(v0 + 456) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100033DAC;
    *(v0 + 424) = &unk_1000BF528;
    *(v0 + 432) = v16;
    [v14 receiveInsightPayloads:v15 request:v13 finished:1 completionHandler:v0 + 400];
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100035DEC()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100035ECC, 0, 0);
}

uint64_t sub_100035ECC()
{
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 784) = v2;
  *v2 = v0;
  v2[1] = sub_100035A5C;
  v3 = *(v0 + 624);
  v4 = *(v0 + 608);

  return AsyncStream.Iterator.next(isolation:)(v0 + 552, 0, 0, v4);
}

uint64_t sub_100035F7C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10003605C, 0, 0);
}

unint64_t sub_10003605C()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 744);

  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 576);

  v6();
  result = [v3 invalidate];
  if (v4)
  {
    v8 = *(v0 + 592);
    result = sub_1000A39B8();
    v9 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v10 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v10; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = 32;
    do
    {
      v19 = *(v9 + v18);

      sub_1000A35C8();

      v18 += 8;
      --v10;
    }

    while (v10);
  }

LABEL_11:

  v12 = *(v0 + 704);
  v13 = *(v0 + 680);
  v14 = *(v0 + 656);
  v15 = *(v0 + 632);
  v16 = *(v0 + 624);

  v17 = *(v0 + 8);

  return v17();
}

void sub_10003630C(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v9 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  __chkstk_darwin(((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = &v43 - v10;
  v12 = os_transaction_create();
  sub_10003690C();
  if (a3)
  {
    v13 = sub_1000A39B8();
    if (!(v13 >> 62))
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = sub_1000A3EC8();
    v45 = a5;
    v46 = v12;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v13 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_10;
  }

LABEL_3:
  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = a5;
  v46 = v12;
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v14 < 1)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_14;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v14; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35B8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v39 = 32;
    do
    {
      v40 = *(v13 + v39);

      sub_1000A35B8();

      v39 += 8;
      --v14;
    }

    while (v14);
  }

LABEL_11:

  v16 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a2];
  v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9EnergyKit22ClientEndpointProtocol_];
  [v16 setRemoteObjectInterface:v17];

  [v16 resume];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  aBlock[4] = sub_1000389B4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034658;
  aBlock[3] = &unk_1000BF348;
  v19 = _Block_copy(aBlock);
  a2 = v16;

  v20 = [a2 remoteObjectProxyWithErrorHandler:v19];
  _Block_release(v19);
  sub_1000A3DE8();
  swift_unknownObjectRelease();
  sub_10000275C(&qword_1000C8248, &qword_1000ABEC0);
  if (swift_dynamicCast())
  {
    v21 = v47;
    v22 = sub_1000A3BE8();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = a1;
    v25 = v43;
    v26 = v44;
    v23[4] = v44;
    v23[5] = v24;
    v23[6] = v21;
    v23[7] = v25;
    v27 = v46;
    v23[8] = v45;
    v23[9] = v27;
    v23[10] = a3;
    v23[11] = a2;
    v28 = a3;
    v29 = a2;
    v30 = v26;
    v31 = v24;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_100069404(0, 0, v11, &unk_1000ABED8, v23);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100022154(v11, &qword_1000C8240, &qword_1000AB688);
    return;
  }

  if (qword_1000C7570 != -1)
  {
    goto LABEL_35;
  }

LABEL_14:
  v32 = sub_1000A3538();
  sub_100001E38(v32, qword_1000C96B8);
  v33 = sub_1000A3518();
  v34 = sub_1000A3CC8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Failed to create client proxy", v35, 2u);
  }

  if (a3)
  {
    v36 = sub_1000A39B8();
    if (!(v36 >> 62))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v36 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_19;
      }

LABEL_29:

      swift_unknownObjectRelease();

      return;
    }
  }

  v37 = sub_1000A3EC8();
  if (!v37)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v37 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v37; ++j)
      {
        sub_1000A3EA8();
        sub_1000A35C8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v41 = 32;
      do
      {
        v42 = *(v36 + v41);

        sub_1000A35C8();

        v41 += 8;
        --v37;
      }

      while (v37);
    }

    swift_unknownObjectRelease();
  }
}

void sub_10003690C()
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v0 = sub_1000A3538();
  sub_100001E38(v0, qword_1000C96B8);
  v1 = sub_1000A3518();
  v2 = sub_1000A3CB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[SiteOperations] Taking extended lifetime", v3, 2u);
  }
}

id sub_1000369EC(uint64_t a1, void *a2)
{
  if (qword_1000C7570 != -1)
  {
    swift_once();
  }

  v3 = sub_1000A3538();
  sub_100001E38(v3, qword_1000C96B8);
  swift_errorRetain();
  v4 = sub_1000A3518();
  v5 = sub_1000A3CC8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to setup client connection with error %@", v6, 0xCu);
    sub_100022154(v7, &unk_1000C7740, &qword_1000AB610);
  }

  return [a2 invalidate];
}

uint64_t sub_100036B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[55] = v27;
  v8[56] = v28;
  v8[53] = a7;
  v8[54] = a8;
  v8[51] = a5;
  v8[52] = a6;
  v9 = sub_10000275C(&qword_1000C82B0, &qword_1000ABEE0);
  v8[57] = v9;
  v10 = *(v9 - 8);
  v8[58] = v10;
  v11 = *(v10 + 64) + 15;
  v8[59] = swift_task_alloc();
  v12 = *(*(sub_10000275C(&qword_1000C8240, &qword_1000AB688) - 8) + 64) + 15;
  v8[60] = swift_task_alloc();
  v13 = sub_10000275C(&qword_1000C82B8, &qword_1000ABEE8);
  v8[61] = v13;
  v14 = *(v13 - 8);
  v8[62] = v14;
  v15 = *(v14 + 64) + 15;
  v8[63] = swift_task_alloc();
  v16 = sub_10000275C(&unk_1000C82C0, &qword_1000ABEF0);
  v8[64] = v16;
  v17 = *(v16 - 8);
  v8[65] = v17;
  v18 = *(v17 + 64) + 15;
  v8[66] = swift_task_alloc();
  v19 = *(*(sub_10000275C(&qword_1000C92C0, &qword_1000ACB30) - 8) + 64) + 15;
  v8[67] = swift_task_alloc();
  v20 = sub_1000A2508();
  v8[68] = v20;
  v21 = *(v20 - 8);
  v8[69] = v21;
  v8[70] = *(v21 + 64);
  v8[71] = swift_task_alloc();
  v8[72] = swift_task_alloc();
  v22 = sub_1000A2CF8();
  v8[73] = v22;
  v23 = *(v22 - 8);
  v8[74] = v23;
  v24 = *(v23 + 64) + 15;
  v8[75] = swift_task_alloc();

  return _swift_task_switch(sub_100036E40, 0, 0);
}

uint64_t sub_100036E40()
{
  if (qword_1000C7550 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C95F0;
  *(v0 + 608) = qword_1000C95F0;

  return _swift_task_switch(sub_100036EE8, v1, 0);
}

uint64_t sub_100036EE8()
{
  *(v0 + 760) = *(*(v0 + 608) + 144);

  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_100036F9C;

  return sub_1000472A8(0);
}

uint64_t sub_100036F9C(char a1)
{
  v2 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 761) = a1;

  return _swift_task_switch(sub_10003709C, 0, 0);
}

uint64_t sub_10003709C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 408);
  (*(v2 + 104))(v1, enum case for EnergyKitFeatures.eventHistory2025(_:), v3);
  *(v0 + 762) = sub_1000A2CE8() & 1;
  (*(v2 + 8))(v1, v3);
  *(v0 + 624) = sub_1000A38A8();
  *(v0 + 632) = v5;
  if (v5)
  {
    v6 = qword_1000C95F0;
    *(v0 + 640) = qword_1000C95F0;

    return _swift_task_switch(sub_1000372A4, v6, 0);
  }

  else
  {
    v7 = *(v0 + 408);
    v8 = *(v0 + 416);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 752) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000385B0;
    v10 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100033DAC;
    *(v0 + 232) = &unk_1000BF398;
    *(v0 + 240) = v10;
    [v8 receiveInsightPayloads:isa request:v7 finished:1 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1000372A4()
{
  v1 = v0[80];
  v0[81] = *(v1 + 112);
  v0[82] = *(v1 + 120);

  return _swift_task_switch(sub_100037324, 0, 0);
}

uint64_t sub_100037324()
{
  if (v0[82])
  {
    if (qword_1000C7590 != -1)
    {
      swift_once();
    }

    v1 = v0[71];
    v2 = v0[51];
    v0[83] = qword_1000C96F8;

    sub_1000A3898();
    v3 = swift_task_alloc();
    v0[84] = v3;
    *v3 = v0;
    v3[1] = sub_100037544;
    v4 = v0[71];
    v5 = v0[67];

    return sub_10006CFD4(v5, v4);
  }

  else
  {
    v7 = v0[79];

    v8 = v0[51];
    v9 = v0[52];
    isa = sub_1000A3B48().super.isa;
    v0[94] = isa;
    v0[2] = v0;
    v0[3] = sub_1000385B0;
    v11 = swift_continuation_init();
    v0[33] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_100033DAC;
    v0[29] = &unk_1000BF398;
    v0[30] = v11;
    [v9 receiveInsightPayloads:isa request:v8 finished:1 completionHandler:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100037544()
{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 664);
  v4 = *(*v0 + 568);
  v5 = *(*v0 + 552);
  v6 = *(*v0 + 544);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 680) = v7;
  *(v1 + 688) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return _swift_task_switch(sub_1000376D0, 0, 0);
}

uint64_t sub_1000376D0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 656);
    v5 = *(v0 + 632);

    sub_100022154(v3, &qword_1000C92C0, &qword_1000ACB30);
LABEL_10:
    v14 = *(v0 + 408);
    v15 = *(v0 + 416);
    isa = sub_1000A3B48().super.isa;
    *(v0 + 752) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000385B0;
    v17 = swift_continuation_init();
    *(v0 + 264) = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100033DAC;
    *(v0 + 232) = &unk_1000BF398;
    *(v0 + 240) = v17;
    [v15 receiveInsightPayloads:isa request:v14 finished:1 completionHandler:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }

  v6 = *(v0 + 761);
  v7 = *(v0 + 760);
  v8 = *(v0 + 576);
  v9 = *(v1 + 32);
  *(v0 + 696) = v9;
  *(v0 + 704) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8, v3, v2);
  if ((v7 & 1) == 0 && !v6 || *(v0 + 762) != 1)
  {
    v11 = *(v0 + 688);
    v12 = *(v0 + 656);
    v13 = *(v0 + 632);
    (*(v0 + 680))(*(v0 + 576), *(v0 + 544));

    goto LABEL_10;
  }

  type metadata accessor for DeviceInsights();
  v10 = swift_allocObject();
  *(v0 + 712) = v10;
  swift_defaultActor_initialize();

  return _swift_task_switch(sub_100037948, v10, 0);
}

uint64_t sub_100037948()
{
  v1 = type metadata accessor for CoreDataInsightStream();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v0 + 720) = v4;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC16EnergyKitService21CoreDataInsightStream_continuation;
  v6 = sub_10000275C(&unk_1000C7CA0, qword_1000ABAF0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);

  return _swift_task_switch(sub_100037A1C, v4, 0);
}

uint64_t sub_100037A1C()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[66];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[61];
  sub_10000275C(&qword_1000C82E0, &qword_1000ABEF8);
  (*(v5 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v6);
  sub_1000A3C38();

  return _swift_task_switch(sub_100037B10, v2, 0);
}

uint64_t sub_100037B10()
{
  v22 = v0[82];
  v19 = v0[81];
  v20 = v0[88];
  v23 = v0[79];
  v24 = v0[90];
  v21 = v0[78];
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[60];
  v17 = v0[51];
  v18 = v0[87];
  v7 = sub_1000A3BE8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v4 + 16))(v2, v1, v5);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v18(v12 + v8, v2, v5);
  v13 = (v12 + v9);
  *v13 = v19;
  v13[1] = v22;
  v14 = (v12 + v10);
  *v14 = v21;
  v14[1] = v23;
  *(v12 + v11) = v17;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v15 = v17;

  sub_100033DE0(0, 0, v6, &unk_1000ABF00, v12);

  sub_100022154(v6, &qword_1000C8240, &qword_1000AB688);

  return _swift_task_switch(sub_100037D24, 0, 0);
}

uint64_t sub_100037D24()
{
  v1 = v0[66];
  v2 = v0[64];
  v3 = v0[59];
  sub_1000A3C18();
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[91] = v5;
  *v5 = v0;
  v5[1] = sub_100037DDC;
  v6 = v0[59];
  v7 = v0[57];

  return AsyncStream.Iterator.next(isolation:)(v0 + 50, 0, 0, v7);
}

uint64_t sub_100037DDC()
{
  v1 = *(*v0 + 728);
  v3 = *v0;

  return _swift_task_switch(sub_100037ED8, 0, 0);
}

uint64_t sub_100037ED8()
{
  if (v0[50])
  {
    v1 = v0 + 18;
    v2 = v0[51];
    v3 = v0[52];
    v4 = v0[50];
    isa = sub_1000A3B48().super.isa;
    v0[92] = isa;

    v0[18] = v0;
    v0[19] = sub_100038124;
    v6 = swift_continuation_init();
    v0[49] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100033DAC;
    v0[45] = &unk_1000BF410;
    v0[46] = v6;
    [v3 receiveInsightPayloads:isa request:v2 finished:0 completionHandler:v0 + 42];
  }

  else
  {
    v1 = v0 + 10;
    v7 = v0[51];
    v8 = v0[52];
    (*(v0[58] + 8))(v0[59], v0[57]);
    v9 = sub_1000A3B48().super.isa;
    v0[93] = v9;
    v0[10] = v0;
    v0[11] = sub_1000382B4;
    v10 = swift_continuation_init();
    v0[41] = sub_10000275C(&unk_1000C82D0, &qword_1000AB6B8);
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_100033DAC;
    v0[37] = &unk_1000BF3E8;
    v0[38] = v10;
    [v8 receiveInsightPayloads:v9 request:v7 finished:1 completionHandler:v0 + 34];
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100038124()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100038204, 0, 0);
}

uint64_t sub_100038204()
{
  v1 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 728) = v2;
  *v2 = v0;
  v2[1] = sub_100037DDC;
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);

  return AsyncStream.Iterator.next(isolation:)(v0 + 400, 0, 0, v4);
}

uint64_t sub_1000382B4()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100038394, 0, 0);
}

unint64_t sub_100038394()
{
  v1 = v0[93];
  v3 = v0[55];
  v2 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  (*(v0[65] + 8))(v0[66], v0[64]);

  v5();
  result = [v2 invalidate];
  if (v3)
  {
    v7 = v0[55];
    result = sub_1000A39B8();
    v8 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v9 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v9; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v25 = 32;
    do
    {
      v26 = *(v8 + v25);

      sub_1000A35C8();

      v25 += 8;
      --v9;
    }

    while (v9);
  }

LABEL_11:

  v11 = v0[89];
  v12 = v0[86];
  v13 = v0[85];
  v14 = v0[72];
  v15 = v0[68];

  v13(v14, v15);
  v16 = v0[75];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[67];
  v20 = v0[66];
  v21 = v0[63];
  v23 = v0[59];
  v22 = v0[60];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1000385B0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100038690, 0, 0);
}

unint64_t sub_100038690()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);

  result = v3();
  if (v1)
  {
    v5 = *(v0 + 440);
    result = sub_1000A39B8();
    v6 = result;
    if (!(result >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
    if (!(&_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_4;
    }
  }

  result = sub_1000A3EC8();
  v7 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v7; ++i)
    {
      sub_1000A3EA8();
      sub_1000A35C8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v18 = 32;
    do
    {
      v19 = *(v6 + v18);

      sub_1000A35C8();

      v18 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_11:

  v9 = *(v0 + 600);
  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);
  v14 = *(v0 + 504);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100038934()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003897C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000389D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000389E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100038A58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014898;

  return sub_100036B58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100038B60()
{
  v1 = sub_1000A2508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_100038C80(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000A2508() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 24);
  v19 = *(v1 + 16);
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v7 + 8);
  v15 = *(v1 + v8);
  v16 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014898;

  return sub_100015634(a1, v19, v9, v1 + v5, v11, v12, v13, v14);
}

uint64_t sub_100038E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000275C(&qword_1000C8240, &qword_1000AB688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038E7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100038EEC(uint64_t a1)
{
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000153A8;

  return sub_1000346C0(a1, v16, v15, v14, v4, v5, v6, v8);
}

uint64_t sub_100038FF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_100039040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 57);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000153A8;

  return sub_100060664(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10003916C()
{
  v1 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v2 = sub_1000A2578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_stream);

  v4 = *(v0 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_subID + 8);

  v5 = *(v0 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_utilityID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_metersToExclude);

  v7 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  v8 = sub_1000A38F8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  v10 = sub_1000A3938();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_gridID + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000392D0()
{
  sub_10003916C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AMIQueryEngine()
{
  result = qword_1000C8310;
  if (!qword_1000C8310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100039350()
{
  result = sub_1000A2578();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1000A38F8();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1000A3938();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000394B4(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v155 = a5;
  v137 = a4;
  v190 = a3;
  v179 = a1;
  v143 = sub_1000A3238();
  v198 = *(v143 - 8);
  __chkstk_darwin(*(v198 + 8));
  v142 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v132 - v7;
  v140 = sub_1000A3128();
  v8 = *(v140 - 8);
  __chkstk_darwin(*(v8 + 64));
  v139 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v138 = &v132 - v10;
  v160 = sub_1000A3938();
  v11 = *(v160 - 8);
  __chkstk_darwin(*(v11 + 64));
  v159 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v132 - v13;
  v185 = sub_1000A32F8();
  v171 = *(v185 - 8);
  __chkstk_darwin(*(v171 + 64));
  v146 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v167 = &v132 - v15;
  __chkstk_darwin(v16);
  v157 = &v132 - v17;
  __chkstk_darwin(v18);
  v170 = &v132 - v19;
  __chkstk_darwin(v20);
  v147 = &v132 - v21;
  v22 = sub_10000275C(&qword_1000C7F58, &qword_1000AC770);
  __chkstk_darwin(*(*(v22 - 8) + 64));
  v156 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v132 - v24;
  v193 = sub_1000A22A8();
  v25 = *(v193 - 8);
  __chkstk_darwin(*(v25 + 64));
  v168 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v189 = &v132 - v27;
  v28 = sub_1000A2498();
  v29 = *(v28 - 8);
  __chkstk_darwin(*(v29 + 64));
  v154 = (&v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v161 = &v132 - v31;
  __chkstk_darwin(v32);
  v169 = &v132 - v33;
  __chkstk_darwin(v34);
  v176 = &v132 - v35;
  __chkstk_darwin(v36);
  v175 = &v132 - v37;
  __chkstk_darwin(v38);
  v188 = &v132 - v39;
  __chkstk_darwin(v40);
  v195 = &v132 - v41;
  v42 = sub_1000A3408();
  v43 = *(v42 - 8);
  __chkstk_darwin(*(v43 + 64));
  v194 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000A33A8();
  result = __chkstk_darwin(*(*(v45 - 8) + 64));
  v49 = &v132 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = *(a2 + 16);
  if (!v199)
  {
    return result;
  }

  v152 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_granularity;
  v151 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_calendar;
  v197 = v25;
  v50 = v8;
  v51 = v47;
  v52 = a2 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v150 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_options;
  swift_beginAccess();
  v53 = v52;
  v54 = *(v51 + 16);
  v51 += 16;
  v183 = v54;
  v55 = (v43 + 8);
  v191 = (v197 + 8);
  v187 = (v29 + 8);
  v181 = *(v51 + 56);
  v178 = (v171 + 16);
  v177 = v171 + 8;
  v153 = (v29 + 56);
  v162 = (v29 + 32);
  v164 = (v29 + 48);
  v145 = (v29 + 16);
  v149 = (v11 + 16);
  v148 = (v11 + 8);
  v136 = (v50 + 16);
  v135 = (v50 + 8);
  v134 = (v198 + 16);
  v133 = (v198 + 8);
  v144 = v171 + 32;
  v184 = v51;
  v180 = (v51 - 8);
  v186 = v42;
  v182 = v45;
  v192 = v49;
  v196 = v55;
  while (1)
  {
    v197 = v53;
    v183(v49);
    v198 = objc_autoreleasePoolPush();
    v56 = v194;
    sub_1000A3388();
    v57 = v195;
    sub_1000A33E8();
    v58 = *v55;
    (*v55)(v56, v42);
    v59 = v189;
    sub_1000A3868();
    v60 = v188;
    sub_1000A2288();
    v61 = *v191;
    (*v191)(v59, v193);
    sub_10003ECE8(&qword_1000C7F50, &type metadata accessor for Date);
    v62 = sub_1000A3A48();
    v63 = *v187;
    (*v187)(v60, v28);
    v64 = v57;
    v49 = v192;
    v63(v64, v28);
    if (v62)
    {
      goto LABEL_4;
    }

    v65 = v194;
    sub_1000A3368();
    v66 = v195;
    sub_1000A33E8();
    v58(v65, v186);
    v67 = v189;
    sub_1000A3868();
    v68 = v188;
    sub_1000A2248();
    v61(v67, v193);
    v69 = sub_1000A3A48();
    v70 = v68;
    v49 = v192;
    v63(v70, v28);
    v71 = v66;
    v42 = v186;
    v63(v71, v28);
    if (v69)
    {
      goto LABEL_4;
    }

    v166 = v61;
    type metadata accessor for InsightBucketBoundaries();
    v72 = v194;
    sub_1000A3388();
    v73 = v195;
    sub_1000A33E8();
    v58(v72, v42);
    sub_10004CC8C(v73, v172 + v152, v172 + v151, v168);
    v174 = v63;
    v63(v73, v28);
    sub_1000A2288();
    sub_1000A2248();
    sub_1000A2288();
    v74 = *v179;
    v75 = *(*v179 + 2);
    if (v75)
    {
      v76 = v171;
      v77 = v147;
      v78 = v185;
      (*(v171 + 16))(v147, &v74[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v171 + 72) * (v75 - 1)], v185);
      sub_1000A3258();
      (*(v76 + 8))(v77, v78);
      v79 = v163;
      sub_1000A33E8();
      v58(v72, v186);
      (*v153)(v79, 0, 1, v28);
      v80 = v161;
      (*v162)(v161, v79, v28);
    }

    else
    {
      v81 = v163;
      (*v153)(v163, 1, 1, v28);
      v80 = v161;
      sub_1000A23C8();
      if ((*v164)(v81, 1, v28) != 1)
      {
        sub_10003E184(v163);
      }
    }

    v82 = v169;
    v83 = sub_1000A3A48();
    v84 = v174;
    v174(v80, v28);
    result = (v84)(v82, v28);
    if ((v83 & 1) == 0)
    {
      sub_1000A32E8();
      v85 = *v145;
      v86 = v195;
      (*v145)(v195, v175, v28);
      sub_1000A33F8();
      sub_1000A3288();
      v85(v86, v176, v28);
      sub_1000A33F8();
      sub_1000A3268();
      sub_1000A2FB8();
      sub_1000A2FE8();
      v87 = *v149;
      v88 = v158;
      v89 = v160;
      (*v149)(v158, v172 + v150, v160);
      v90 = v159;
      sub_1000A3918();
      v173 = sub_10003ECE8(&qword_1000C7F80, &type metadata accessor for ElectricityInsightQuery.Options);
      LOBYTE(v86) = sub_1000A3DF8();
      v91 = *v148;
      (*v148)(v90, v89);
      v91(v88, v89);
      if (v86)
      {
        v92 = v138;
        sub_1000A3118();
        sub_1000A30A8();
        sub_1000A3018();
        sub_1000A3078();
        sub_1000A3048();
        sub_1000A30D8();
        sub_1000A3108();
        v93 = v140;
        (*v136)(v139, v92, v140);
        sub_1000A32B8();
        (*v135)(v92, v93);
      }

      v94 = v158;
      v95 = v160;
      v87(v158, v172 + v150, v160);
      v96 = v159;
      sub_1000A3908();
      v97 = sub_1000A3DF8();
      v91(v96, v95);
      v91(v94, v95);
      if (v97)
      {
        v98 = v141;
        sub_1000A3228();
        sub_1000A3188();
        sub_1000A31B8();
        sub_1000A3218();
        sub_1000A31E8();
        v99 = v143;
        (*v134)(v142, v98, v143);
        sub_1000A3158();
        (*v133)(v98, v99);
      }

      (*v178)(v157, v170, v185);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v174;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_10009501C(0, *(v74 + 2) + 1, 1, v74);
      }

      v102 = *(v74 + 2);
      v101 = *(v74 + 3);
      if (v102 >= v101 >> 1)
      {
        v74 = sub_10009501C(v101 > 1, v102 + 1, 1, v74);
      }

      v103 = v171;
      v104 = v185;
      (*(v171 + 8))(v170, v185);
      *(v74 + 2) = v102 + 1;
      result = (*(v103 + 32))(&v74[((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v102], v157, v104);
      *v179 = v74;
    }

    v105 = *(v74 + 2);
    if (!v105)
    {
      break;
    }

    v106 = v171;
    v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v108 = *(v171 + 72);
    v165 = v105 - 1;
    v109 = v108 * (v105 - 1);
    v110 = v167;
    v111 = v185;
    v174 = *(v171 + 16);
    (v174)(v167, &v74[v107 + v109], v185);
    sub_1000A2FA8();
    v113 = v112;
    v173 = *(v106 + 8);
    v173(v110, v111);
    if (v113 >= 0.0)
    {
      v114 = v156;
      v49 = v192;
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v114 = v156;
      v49 = v192;
      if ((result & 1) == 0)
      {
        result = sub_1000322E0(v74);
        v74 = result;
      }

      if (v105 > *(v74 + 2))
      {
        goto LABEL_46;
      }

      sub_1000A2FB8();
    }

    sub_1000A3398();
    v116 = v115;
    sub_1000A2D08();
    v118 = v117;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000322E0(v74);
      v74 = result;
    }

    if (v105 > *(v74 + 2))
    {
      goto LABEL_44;
    }

    v119 = sub_1000A2F98();
    *v120 = v116 * v118 + *v120;
    result = v119(v200, 0);
    *v179 = v74;
    if (v105 > *(v74 + 2))
    {
      goto LABEL_45;
    }

    v121 = &v74[v107 + v109];
    v122 = v167;
    v123 = v185;
    (v174)(v167, v121, v185);
    v124 = sub_1000A2FC8();
    v173(v122, v123);
    if (v124)
    {
      sub_10003E1EC(v179, v49, v165);
    }

    sub_10003E114(v155, v114);
    v125 = (*v164)(v114, 1, v28);
    v42 = v186;
    if (v125 == 1)
    {
      v84(v176, v28);
      v84(v175, v28);
      v166(v168, v193);
      sub_10003E184(v114);
    }

    else
    {
      result = (*v162)(v154, v114, v28);
      if (v105 > *(*v179 + 2))
      {
        goto LABEL_47;
      }

      v126 = v146;
      v127 = v185;
      (v174)(v146, &(*v179)[v107 + v109], v185);
      v128 = sub_1000A3248();
      v173(v126, v127);
      if (v128)
      {
        v129 = v166;
        if (*(v137 + 16))
        {
          v130 = v154;
          sub_10003AB6C(v179, v49, v165, v137, v154);
          v131 = v130;
        }

        else
        {
          v131 = v154;
        }

        v84(v131, v28);
        v84(v176, v28);
        v84(v175, v28);
        v129(v168, v193);
      }

      else
      {
        v84(v154, v28);
        v84(v176, v28);
        v84(v175, v28);
        v166(v168, v193);
      }
    }

LABEL_4:
    objc_autoreleasePoolPop(v198);
    result = (*v180)(v49, v182);
    v55 = v196;
    v53 = v197 + v181;
    if (!--v199)
    {
      return result;
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
  return result;
}

uint64_t sub_10003AB6C(char **a1, uint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5)
{
  v461 = a5;
  v435 = a4;
  v415 = a3;
  v418 = a1;
  v388 = sub_1000A2CF8();
  v457 = *(v388 - 8);
  __chkstk_darwin(*(v457 + 8));
  v387 = &v377 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v402 = sub_1000A3238();
  v409 = *(v402 - 8);
  __chkstk_darwin(*(v409 + 64));
  v401 = &v377 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v400 = sub_1000A32F8();
  v412 = *(v400 - 8);
  __chkstk_darwin(*(v412 + 64));
  v399 = &v377 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = sub_1000A2718();
  v439 = *(v441 - 8);
  __chkstk_darwin(*(v439 + 64));
  v440 = &v377 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_1000A2648();
  v445 = *(v446 - 8);
  __chkstk_darwin(*(v445 + 64));
  v398 = &v377 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v397 = &v377 - v11;
  __chkstk_darwin(v12);
  v422 = &v377 - v13;
  __chkstk_darwin(v14);
  v444 = &v377 - v15;
  v454 = sub_1000A22A8();
  v456 = *(v454 - 8);
  __chkstk_darwin(*(v456 + 64));
  v396 = &v377 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v395 = &v377 - v17;
  __chkstk_darwin(v18);
  v408 = &v377 - v19;
  __chkstk_darwin(v20);
  v407 = &v377 - v21;
  __chkstk_darwin(v22);
  v452 = &v377 - v23;
  v459 = sub_1000A2498();
  v24 = *(v459 - 8);
  __chkstk_darwin(*(v24 + 64));
  v394 = &v377 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v391 = &v377 - v26;
  __chkstk_darwin(v27);
  v390 = &v377 - v28;
  __chkstk_darwin(v29);
  v389 = &v377 - v30;
  __chkstk_darwin(v31);
  v413 = &v377 - v32;
  __chkstk_darwin(v33);
  v414 = &v377 - v34;
  __chkstk_darwin(v35);
  v393 = &v377 - v36;
  __chkstk_darwin(v37);
  v404 = &v377 - v38;
  __chkstk_darwin(v39);
  v392 = &v377 - v40;
  __chkstk_darwin(v41);
  v406 = &v377 - v42;
  __chkstk_darwin(v43);
  v410 = &v377 - v44;
  __chkstk_darwin(v45);
  v405 = &v377 - v46;
  __chkstk_darwin(v47);
  v417 = &v377 - v48;
  __chkstk_darwin(v49);
  v416 = &v377 - v50;
  __chkstk_darwin(v51);
  v421 = &v377 - v52;
  __chkstk_darwin(v53);
  v420 = &v377 - v54;
  __chkstk_darwin(v55);
  v433 = &v377 - v56;
  __chkstk_darwin(v57);
  v432 = &v377 - v58;
  __chkstk_darwin(v59);
  v436 = &v377 - v60;
  __chkstk_darwin(v61);
  v458 = &v377 - v62;
  __chkstk_darwin(v63);
  v460 = (&v377 - v64);
  __chkstk_darwin(v65);
  v67 = &v377 - v66;
  v68 = sub_1000A3408();
  v69 = *(v68 - 8);
  __chkstk_darwin(*(v69 + 64));
  v431 = &v377 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v377 - v71;
  __chkstk_darwin(v73);
  v75 = &v377 - v74;
  v76 = a2;
  sub_1000A3388();
  sub_1000A33E8();
  v79 = *(v69 + 8);
  v78 = v69 + 8;
  v77 = v79;
  v80 = v68;
  (v79)(v75, v68);
  LOBYTE(a2) = sub_1000A2438();
  v461 = v24;
  v83 = *(v24 + 8);
  v81 = (v24 + 8);
  v82 = v83;
  result = (v83)(v67, v459);
  if (a2)
  {
    return result;
  }

  sub_1000A3368();
  sub_1000A33E8();
  v448 = v82;
  v85 = v80;
  v429 = v80;
  v77(v75, v80);
  sub_1000A3388();
  v86 = v460;
  sub_1000A33E8();
  v77(v72, v85);
  sub_1000A23D8();
  v88 = v87;
  v89 = v459;
  v90 = v448;
  v448(v86, v459);
  v451 = v81;
  v90(v67, v89);
  sub_1000A3398();
  v92 = v91;
  v434 = v76;
  sub_1000A3388();
  v93 = v458;
  sub_1000A33E8();
  v94 = v429;
  v77(v75, v429);
  v411 = *v418;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_178;
  }

LABEL_3:
  v450 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalIDX;
  v449 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentHistoricalSubIDX;
  v447 = OBJC_IVAR____TtC16EnergyKitService14AMIQueryEngine_currentThresholdIDX;
  swift_beginAccess();
  sub_1000A3368();
  sub_1000A33E8();
  v77(v75, v94);
  v95 = sub_1000A2438();
  v96 = v459;
  (v90)(v67);
  v98 = v93;
  if (v95)
  {
    v425 = v75;
    v455 = v67;
    v428 = v461 + 4;
    v453 = (v456 + 8);
    v443 = v445 + 16;
    v442 = (v445 + 8);
    v438 = v439 + 16;
    v437 = v439 + 8;
    v419 = v461 + 2;
    v380 = enum case for EnergyKitFeatures.strainedWindow(_:);
    v379 = (v457 + 104);
    v378 = (v457 + 8);
    v384 = v412 + 16;
    v383 = v412 + 8;
    v382 = (v409 + 8);
    v423 = v461 + 3;
    *&v97 = 136315906;
    v381 = v97;
    v67 = v78;
    v93 = v96;
    v426 = v78;
    v424 = v77;
    while (1)
    {
      v104 = v432;
      sub_1000A2408();
      v105 = v431;
      sub_1000A3368();
      v106 = v433;
      sub_1000A33E8();
      v77(v105, v94);
      v456 = sub_10003ECE8(&qword_1000C7F50, &type metadata accessor for Date);
      v107 = sub_1000A3A48();
      v108 = (v107 & 1) == 0;
      if (v107)
      {
        v109 = v104;
      }

      else
      {
        v109 = v106;
      }

      if (v108)
      {
        v110 = v104;
      }

      else
      {
        v110 = v106;
      }

      v90(v109, v93);
      isa = v428->isa;
      isa(v436, v110, v93);
      v93 = v435;
      v111 = v430;
      v94 = v450;
      v78 = *(v430 + v450);
      v457 = *(v435 + 16);
      if (v78 < v457)
      {
        v77 = v449;
        v75 = v447;
        while ((v78 & 0x8000000000000000) == 0)
        {
          v112 = *(sub_1000A26C8() - 8);
          v113 = &v93[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v78];
          v114 = v452;
          sub_1000A26B8();
          v67 = v90;
          v115 = v455;
          sub_1000A2248();
          (*v453)(v114, v454);
          v116 = v459;
          LOBYTE(v113) = sub_1000A3A48();
          v117 = v115;
          v90 = v67;
          (v67)(v117, v116);
          v78 = *(v111 + v94);
          if (v113)
          {
            goto LABEL_22;
          }

          if (__OFADD__(v78, 1))
          {
            goto LABEL_166;
          }

          *(v111 + v94) = (v78 + 1);
          *(v77 + v111) = 0;
          *&v75[v111] = 0;
          v78 = *(v111 + v94);
          if (v78 >= v457)
          {
            goto LABEL_22;
          }
        }

LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        v411 = sub_1000322E0(v411);
        goto LABEL_3;
      }

      v77 = v449;
LABEL_22:
      v75 = v457;
      if (v78 >= v457)
      {
        break;
      }

      v93 = v90;
      v118 = *(sub_1000A26C8() - 8);
      v67 = v458;
      if (v78 >= v75)
      {
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v461 = (v435 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
      v460 = *(v118 + 72);
      v90 = *(v77 + v111);
      while (1)
      {
        v119 = *(sub_1000A26A8() + 16);

        if (v90 >= v119)
        {
          break;
        }

        if (*(v111 + v94) >= v75)
        {
          goto LABEL_167;
        }

        v120 = sub_1000A26A8();
        v121 = *(v77 + v111);
        if ((v121 & 0x8000000000000000) != 0)
        {
          goto LABEL_168;
        }

        if (v121 >= *(v120 + 16))
        {
          goto LABEL_169;
        }

        v122 = v445;
        v123 = v444;
        v124 = v446;
        (*(v445 + 16))(v444, v120 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v445 + 72) * v121, v446);

        v125 = v452;
        sub_1000A2628();
        v126 = *(v122 + 8);
        v67 = v458;
        v90 = v451;
        v126(v123, v124);
        v127 = v455;
        sub_1000A2248();
        v128 = v125;
        v77 = v449;
        v129 = v448;
        (*v453)(v128, v454);
        v78 = v459;
        v130 = sub_1000A3A48();
        v131 = v127;
        v94 = v450;
        v93 = v129;
        (v129)(v131, v78);
        v75 = v457;
        if (v130)
        {
          break;
        }

        v132 = *(v77 + v111);
        v90 = (v132 + 1);
        if (__OFADD__(v132, 1))
        {
          goto LABEL_170;
        }

        *(v77 + v111) = v90;
        v78 = *(v111 + v94);
        if (v78 >= v75)
        {
          goto LABEL_164;
        }
      }

      if (*(v111 + v94) >= v75)
      {
        goto LABEL_176;
      }

      v78 = *(v77 + v111);
      v143 = *(sub_1000A26A8() + 16);

      if (v78 >= v143)
      {
        v99 = v459;
        v137 = v436;
        v138 = v455;
        v90 = v93;
        goto LABEL_7;
      }

      v90 = v93;
      v93 = v454;
      if (*(v111 + v94) >= v75)
      {
        goto LABEL_171;
      }

      v78 = *(v111 + v447);
      while (1)
      {
        v144 = *(sub_1000A2698() + 16);

        if (v78 >= v144)
        {
          break;
        }

        if (*(v111 + v94) >= v75)
        {
          goto LABEL_172;
        }

        v145 = sub_1000A2698();
        v146 = *(v111 + v447);
        if ((v146 & 0x8000000000000000) != 0)
        {
          goto LABEL_173;
        }

        if (v146 >= *(v145 + 16))
        {
          goto LABEL_174;
        }

        v147 = v439;
        v148 = v440;
        v149 = v441;
        (*(v439 + 16))(v440, v145 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v439 + 72) * v146, v441);
        v150 = v459;
        v151 = v448;
        v67 = v458;

        v152 = v452;
        sub_1000A26E8();
        v93 = v454;
        (*(v147 + 8))(v148, v149);
        v78 = v455;
        sub_1000A2248();
        v153 = v152;
        v94 = v450;
        (*v453)(v153, v93);
        LOBYTE(v148) = sub_1000A3A48();
        v154 = v150;
        v77 = v449;
        v151(v78, v154);
        v90 = v151;
        v75 = v457;
        if (v148)
        {
          break;
        }

        v155 = *(v111 + v447);
        v78 = v155 + 1;
        if (__OFADD__(v155, 1))
        {
          goto LABEL_175;
        }

        *(v111 + v447) = v78;
        if (*(v111 + v94) >= v75)
        {
          goto LABEL_171;
        }
      }

      if (*(v111 + v94) >= v75)
      {
        goto LABEL_177;
      }

      v156 = *(v111 + v447);
      v157 = *(sub_1000A2698() + 16);

      if (v156 >= v157)
      {
        v137 = v436;
        if (qword_1000C7570 != -1)
        {
          swift_once();
        }

        v185 = sub_1000A3538();
        sub_100001E38(v185, qword_1000C96B8);
        v134 = sub_1000A3518();
        v186 = sub_1000A3CC8();
        v187 = os_log_type_enabled(v134, v186);
        v138 = v455;
        if (v187)
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          v140 = v186;
          v141 = v134;
          v142 = "[AMIQueryEngine] Failed to find threshold";
LABEL_5:
          _os_log_impl(&_mh_execute_header, v141, v140, v142, v139, 2u);
        }

        goto LABEL_6;
      }

      if (*(v111 + v94) >= v75)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v158 = sub_1000A26A8();
      v159 = *(v77 + v111);
      if ((v159 & 0x8000000000000000) != 0)
      {
        goto LABEL_180;
      }

      if (v159 >= *(v158 + 16))
      {
        goto LABEL_181;
      }

      v160 = v158 + ((*(v445 + 80) + 32) & ~*(v445 + 80)) + *(v445 + 72) * v159;
      v385 = *(v445 + 16);
      v385(v422, v160, v446);

      v457 = v419->isa;
      v161 = v459;
      (v457)(v420, v67, v459);
      v162 = v407;
      sub_1000A2628();
      sub_1000A2288();
      v403 = *v453;
      v403(v162, v93);
      v163 = v408;
      sub_1000A2628();
      sub_1000A2248();
      v403(v163, v93);
      v164 = v421;
      v165 = v420;
      if (sub_1000A3A58())
      {
        v166 = v164;
      }

      else
      {
        v166 = v165;
      }

      (v457)(v417, v166, v161);
      v167 = v416;
      v168 = v436;
      if (sub_1000A3A48())
      {
        v169 = v167;
      }

      else
      {
        v169 = v168;
      }

      v170 = v167;
      v171 = v405;
      (v457)(v405, v169, v161);
      v172 = v417;
      LODWORD(v386) = sub_1000A2438();
      v90(v171, v161);
      v90(v172, v161);
      v90(v170, v161);
      v90(v421, v161);
      v90(v420, v161);
      if (v386)
      {
        v173 = v459;
        (v457)(v406, v458, v459);
        v174 = v395;
        sub_1000A2628();
        v175 = v392;
        sub_1000A2288();
        v403(v174, v93);
        v176 = v406;
        v177 = sub_1000A3A58();
        v178 = (v177 & 1) == 0;
        if (v177)
        {
          v179 = v176;
        }

        else
        {
          v179 = v175;
        }

        if (v178)
        {
          v180 = v176;
        }

        else
        {
          v180 = v175;
        }

        v90(v179, v173);
        isa(v410, v180, v173);
        v181 = v396;
        sub_1000A2628();
        v182 = v393;
        sub_1000A2248();
        v183 = v93;
        v93 = v403;
        v403(v181, v183);
        v184 = v436;
        if (sub_1000A3A48())
        {
          isa(v404, v182, v459);
        }

        else
        {
          v228 = v459;
          v90(v182, v459);
          (v457)(v404, v184, v228);
        }

        sub_1000A23D8();
        v230 = v229;
        sub_1000A3398();
        v232 = v231;
        sub_1000A2D08();
        if (*(v111 + v94) >= v75)
        {
          goto LABEL_182;
        }

        v234 = v233;
        v235 = v93;
        v236 = sub_1000A2698();
        v237 = *(v111 + v447);
        if ((v237 & 0x8000000000000000) != 0)
        {
          goto LABEL_183;
        }

        if (v237 >= *(v236 + 16))
        {
          goto LABEL_184;
        }

        v238 = v439;
        v386 = (*(v238 + 80) + 32) & ~*(v238 + 80);
        v385 = *(v439 + 72);
        v239 = v440;
        v240 = v441;
        isa = *(v439 + 16);
        isa(v440, (v236 + v386 + v385 * v237), v441);

        v241 = v452;
        sub_1000A26E8();
        v90 = *(v238 + 8);
        v90(v239, v240);
        sub_1000A2288();
        v242 = v454;
        (v93)(v241, v454);
        if (*(v111 + v450) >= v75)
        {
          goto LABEL_185;
        }

        v243 = sub_1000A2698();
        v244 = *(v111 + v447);
        v93 = v391;
        if ((v244 & 0x8000000000000000) != 0)
        {
          goto LABEL_186;
        }

        if (v244 >= *(v243 + 16))
        {
          goto LABEL_187;
        }

        v245 = v232 * (v230 / v88);
        v246 = v245 * v234;
        v247 = v440;
        v248 = v441;
        isa(v440, (v243 + v386 + v244 * v385), v441);

        v249 = v452;
        sub_1000A26E8();
        v90(v247, v248);
        sub_1000A2248();
        (v235)(v249, v242);
        v250 = sub_1000A3A48();
        v251 = v436;
        if (v250 & 1) != 0 || (sub_1000A3A48())
        {
          if (qword_1000C7570 != -1)
          {
            swift_once();
          }

          v252 = sub_1000A3538();
          sub_100001E38(v252, qword_1000C96B8);
          v253 = v389;
          v90 = v459;
          v254 = v457;
          (v457)(v389, v414, v459);
          v255 = v390;
          v254(v390, v413, v90);
          v256 = v93;
          v254(v93, v251, v90);
          v257 = sub_1000A3518();
          v258 = sub_1000A3CC8();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            v461 = swift_slowAlloc();
            v463 = v461;
            *v259 = v381;
            v93 = sub_10003ECE8(&qword_1000C8468, &type metadata accessor for Date);
            v460 = v257;
            v260 = sub_1000A3F28();
            LODWORD(v457) = v258;
            v262 = v261;
            v263 = v448;
            v448(v253, v90);
            v264 = sub_1000954AC(v260, v262, &v463);

            *(v259 + 4) = v264;
            *(v259 + 12) = 2080;
            v265 = sub_1000A3F28();
            v267 = v266;
            (v263)(v255, v90);
            v268 = sub_1000954AC(v265, v267, &v463);

            *(v259 + 14) = v268;
            *(v259 + 22) = 2080;
            v269 = sub_1000A3F28();
            v271 = sub_1000954AC(v269, v270, &v463);

            *(v259 + 24) = v271;
            *(v259 + 32) = 2080;
            v272 = sub_1000A3F28();
            v274 = v273;
            (v263)(v256, v90);
            v275 = sub_1000954AC(v272, v274, &v463);

            *(v259 + 34) = v275;
            v276 = v460;
            _os_log_impl(&_mh_execute_header, v460, v457, "[AMIQueryEngine] Stride out of threshold bounds threshold: %s-%s stride:%s-%s", v259, 0x2Au);
            swift_arrayDestroy();
          }

          else
          {

            v263 = v448;
            v448(v93, v90);
            (v263)(v255, v90);
            (v263)(v253, v90);
          }

          v280 = v415;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (*(v411 + 2) <= v415)
          {
            goto LABEL_193;
          }

          v281 = v263;
          v282 = v412;
          v283 = v399;
          v284 = v400;
          (*(v412 + 16))(v399, &v411[((*(v282 + 80) + 32) & ~*(v282 + 80)) + *(v282 + 72) * v415], v400);
          v285 = v401;
          sub_1000A3148();
          v286 = v411;
          (*(v282 + 8))(v283, v284);
          sub_1000A31D8();
          v288 = v287;
          result = (*v382)(v285, v402);
          v67 = v458;
          v137 = v436;
          v90 = v281;
          if (v288 < 0.0)
          {
            if (*(v286 + 2) <= v280)
            {
              goto LABEL_197;
            }

            v289 = sub_1000A3138();
            sub_1000A31E8();
            v289(&v463, 0);
            v280 = v415;
          }

          if (*(v286 + 2) <= v280)
          {
            goto LABEL_194;
          }

          v290 = sub_1000A3138();
          v291 = sub_1000A31C8();
          goto LABEL_100;
        }

        v293 = v387;
        v294 = v388;
        (*v379)(v387, v380, v388);
        v295 = sub_1000A2CE8();
        (*v378)(v293, v294);
        result = sub_1000A2618();
        v297 = v296;
        v298 = *(v111 + v450);
        if (v295)
        {
          if (v298 >= v75)
          {
            goto LABEL_199;
          }

          result = sub_1000A2698();
          v299 = *(v111 + v447);
          if ((v299 & 0x8000000000000000) != 0)
          {
            goto LABEL_200;
          }

          if (v299 >= *(result + 16))
          {
            goto LABEL_203;
          }

          v300 = v440;
          v301 = v441;
          isa(v440, (result + v386 + v299 * v385), v441);

          sub_1000A2708();
          v303 = v302;
          result = (v90)(v300, v301);
          if (v297 > v303)
          {
            result = sub_1000A2618();
            if (*(v111 + v450) >= v75)
            {
              goto LABEL_207;
            }

            v305 = v304;
            result = sub_1000A2698();
            v306 = *(v111 + v447);
            if ((v306 & 0x8000000000000000) != 0)
            {
              goto LABEL_209;
            }

            if (v306 >= *(result + 16))
            {
              goto LABEL_212;
            }

            v307 = v440;
            v308 = v441;
            isa(v440, (result + v386 + v306 * v385), v441);

            sub_1000A26D8();
            v310 = v309;
            result = (v90)(v307, v308);
            if (v305 > v310)
            {
              v311 = v415;
              v312 = v411;
              if ((v415 & 0x8000000000000000) != 0)
              {
                goto LABEL_219;
              }

              if (*(v411 + 2) <= v415)
              {
                goto LABEL_221;
              }

              v313 = v412;
              v314 = v399;
              v315 = v400;
              (*(v412 + 16))(v399, &v411[((*(v313 + 80) + 32) & ~*(v313 + 80)) + *(v313 + 72) * v415], v400);
              v316 = v401;
              sub_1000A3148();
              (*(v313 + 8))(v314, v315);
              sub_1000A3178();
              v318 = v317;
              result = (*v382)(v316, v402);
              v67 = v458;
              v137 = v436;
              v90 = v448;
              if (v318 < 0.0)
              {
                if (*(v312 + 2) <= v311)
                {
                  goto LABEL_225;
                }

                v319 = sub_1000A3138();
                sub_1000A3188();
                result = v319(&v463, 0);
                v311 = v415;
                v312 = v411;
              }

              if (*(v312 + 2) <= v311)
              {
                goto LABEL_223;
              }

              v290 = sub_1000A3138();
              v291 = sub_1000A3168();
              goto LABEL_100;
            }

            v356 = v415;
            v357 = v411;
            if ((v415 & 0x8000000000000000) != 0)
            {
              goto LABEL_220;
            }

            if (*(v411 + 2) <= v415)
            {
              goto LABEL_222;
            }

            v358 = v412;
            v359 = v399;
            v360 = v400;
            (*(v412 + 16))(v399, &v411[((*(v358 + 80) + 32) & ~*(v358 + 80)) + *(v358 + 72) * v415], v400);
            v361 = v401;
            sub_1000A3148();
            (*(v358 + 8))(v359, v360);
            sub_1000A3208();
            v363 = v362;
            result = (*v382)(v361, v402);
            v67 = v458;
            v137 = v436;
            v90 = v448;
            if (v363 < 0.0)
            {
              if (*(v357 + 2) <= v356)
              {
                goto LABEL_226;
              }

              v364 = sub_1000A3138();
              sub_1000A3218();
              result = v364(&v463, 0);
              v356 = v415;
              v357 = v411;
            }

            if (*(v357 + 2) <= v356)
            {
              goto LABEL_224;
            }

LABEL_150:
            v290 = sub_1000A3138();
            v291 = sub_1000A31F8();
            goto LABEL_100;
          }

          v334 = v415;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_205;
          }

          v335 = v411;
          if (*(v411 + 2) <= v415)
          {
            goto LABEL_210;
          }

          v336 = v412;
          v337 = v399;
          v338 = &v411[((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v415];
          v339 = v400;
          (*(v412 + 16))(v399);
          v340 = v401;
          sub_1000A3148();
          (*(v336 + 8))(v337, v339);
          sub_1000A31A8();
          v342 = v341;
          result = (*v382)(v340, v402);
          v67 = v458;
          v137 = v436;
          v90 = v448;
          if (v342 < 0.0)
          {
            if (*(v335 + 2) <= v334)
            {
              goto LABEL_217;
            }

            v343 = sub_1000A3138();
            sub_1000A31B8();
            result = v343(&v463, 0);
            v334 = v415;
            v335 = v411;
          }

          if (*(v335 + 2) <= v334)
          {
            goto LABEL_214;
          }

          v344 = sub_1000A3138();
          v345 = sub_1000A3198();
          *v346 = v246 + *v346;
          v345(v462, 0);
          v344(&v463, 0);
        }

        else
        {
          if (v298 >= v75)
          {
            goto LABEL_198;
          }

          result = sub_1000A2698();
          v320 = *(v111 + v447);
          if ((v320 & 0x8000000000000000) != 0)
          {
            goto LABEL_201;
          }

          if (v320 >= *(result + 16))
          {
            goto LABEL_202;
          }

          v321 = v440;
          v322 = v441;
          isa(v440, (result + v386 + v320 * v385), v441);

          sub_1000A2708();
          v324 = v323;
          result = (v90)(v321, v322);
          if (v297 > v324)
          {
            v325 = v415;
            v326 = v411;
            if ((v415 & 0x8000000000000000) != 0)
            {
              goto LABEL_206;
            }

            if (*(v411 + 2) <= v415)
            {
              goto LABEL_211;
            }

            v327 = v412;
            v328 = v399;
            v329 = v400;
            (*(v412 + 16))(v399, &v411[((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v415], v400);
            v330 = v401;
            sub_1000A3148();
            (*(v327 + 8))(v328, v329);
            sub_1000A3208();
            v332 = v331;
            result = (*v382)(v330, v402);
            v67 = v458;
            v137 = v436;
            v90 = v448;
            if (v332 < 0.0)
            {
              if (*(v326 + 2) <= v325)
              {
                goto LABEL_218;
              }

              v333 = sub_1000A3138();
              sub_1000A3218();
              result = v333(&v463, 0);
              v325 = v415;
              v326 = v411;
            }

            if (*(v326 + 2) <= v325)
            {
              goto LABEL_215;
            }

            goto LABEL_150;
          }

          v347 = v415;
          v348 = v411;
          if ((v415 & 0x8000000000000000) != 0)
          {
            goto LABEL_204;
          }

          if (*(v411 + 2) <= v415)
          {
            goto LABEL_208;
          }

          v349 = v412;
          v350 = v399;
          v351 = v400;
          (*(v412 + 16))(v399, &v411[((*(v349 + 80) + 32) & ~*(v349 + 80)) + *(v349 + 72) * v415], v400);
          v352 = v401;
          sub_1000A3148();
          (*(v349 + 8))(v350, v351);
          sub_1000A31A8();
          v354 = v353;
          result = (*v382)(v352, v402);
          v67 = v458;
          v137 = v436;
          v90 = v448;
          if (v354 < 0.0)
          {
            if (*(v348 + 2) <= v347)
            {
              goto LABEL_216;
            }

            v355 = sub_1000A3138();
            sub_1000A31B8();
            result = v355(&v463, 0);
            v347 = v415;
            v348 = v411;
          }

          if (*(v348 + 2) <= v347)
          {
            goto LABEL_213;
          }

          v290 = sub_1000A3138();
          v291 = sub_1000A3198();
LABEL_100:
          *v292 = v246 + *v292;
          v291(v462, 0);
          v290(&v463, 0);
        }

        v92 = v92 - v245;
        v99 = v459;
        v90(v413, v459);
        v90(v414, v99);
        v90(v404, v99);
        v90(v410, v99);
        (*v442)(v422, v446);
LABEL_102:
        v138 = v455;
        goto LABEL_7;
      }

      v188 = v457;
      if (qword_1000C7570 != -1)
      {
        swift_once();
      }

      v189 = sub_1000A3538();
      sub_100001E38(v189, qword_1000C96B8);
      v190 = v394;
      v137 = v436;
      v191 = v459;
      v188(v394, v436, v459);
      v192 = v397;
      v193 = v422;
      v194 = v446;
      v195 = v385;
      v385(v397, v422, v446);
      v196 = v398;
      v195(v398, v193, v194);
      v197 = sub_1000A3518();
      v198 = sub_1000A3CC8();
      v461 = v197;
      if (!os_log_type_enabled(v197, v198))
      {

        v277 = *v442;
        v278 = v446;
        (*v442)(v196, v446);
        v277(v192, v278);
        v90 = v448;
        v448(v190, v191);
        v279 = v278;
        v99 = v459;
        v277(v193, v279);
        v67 = v458;
        goto LABEL_102;
      }

      v199 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      v463 = v460;
      *v199 = v381;
      v200 = sub_10003ECE8(&qword_1000C8468, &type metadata accessor for Date);
      LODWORD(v457) = v198;
      v201 = v200;
      v202 = sub_1000A3F28();
      v204 = sub_1000954AC(v202, v203, &v463);

      *(v199 + 4) = v204;
      *(v199 + 12) = 2080;
      v205 = v192;
      isa = v201;
      v206 = sub_1000A3F28();
      v208 = v207;
      v209 = v190;
      v210 = v455;
      v211 = v448;
      v448(v209, v459);
      v212 = v211;
      v213 = sub_1000954AC(v206, v208, &v463);

      *(v199 + 14) = v213;
      *(v199 + 22) = 2080;
      v214 = v452;
      sub_1000A2628();
      sub_1000A2288();
      v403(v214, v454);
      v215 = sub_1000A3F28();
      v217 = v216;
      v212(v210, v459);
      v218 = *v442;
      v219 = v446;
      (*v442)(v205, v446);
      v456 = v218;
      v220 = sub_1000954AC(v215, v217, &v463);

      *(v199 + 24) = v220;
      *(v199 + 32) = 2080;
      v221 = v398;
      sub_1000A2628();
      sub_1000A2248();
      v137 = v436;
      v403(v214, v454);
      v222 = sub_1000A3F28();
      v224 = v223;
      v225 = v448;
      v448(v210, v459);
      v218(v221, v219);
      v226 = sub_1000954AC(v222, v224, &v463);
      v138 = v210;
      v99 = v459;

      *(v199 + 34) = v226;
      v227 = v461;
      _os_log_impl(&_mh_execute_header, v461, v457, "[AMIQueryEngine] Not processing reading [%s-%s] due to historical guidance [%s-%s] not overlapping", v199, 0x2Au);
      swift_arrayDestroy();

      v67 = v458;

      v90 = v225;
      (v456)(v422, v446);
LABEL_7:
      (v423->isa)(v67, v137, v99);
      v90(v137, v99);
      v93 = v99;
      v100 = v425;
      sub_1000A3368();
      sub_1000A33E8();
      v101 = v100;
      v94 = v429;
      v102 = v67;
      v67 = v426;
      v77 = v424;
      (v424)(v101, v429);
      v103 = sub_1000A2438();
      v90(v138, v93);
      if ((v103 & 1) == 0)
      {
        goto LABEL_152;
      }
    }

    if (qword_1000C7570 != -1)
    {
      swift_once();
    }

    v133 = sub_1000A3538();
    sub_100001E38(v133, qword_1000C96B8);
    v134 = sub_1000A3518();
    v135 = sub_1000A3CC8();
    v136 = os_log_type_enabled(v134, v135);
    v137 = v436;
    v138 = v455;
    if (v136)
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      v140 = v135;
      v141 = v134;
      v142 = "[AMIQueryEngine] Failed to find overlapping historical guidance";
      goto LABEL_5;
    }

LABEL_6:

    v67 = v458;
    v99 = v459;
    goto LABEL_7;
  }

  v93 = v96;
  v102 = v98;
LABEL_152:
  v365 = v90;
  v111 = v418;
  v90 = v411;
  *v418 = v411;
  if (v92 <= 0.0)
  {
    return v365(v102, v93);
  }

  if ((v415 & 0x8000000000000000) != 0)
  {
    goto LABEL_188;
  }

  if (*(v90 + 2) <= v415)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v366 = v412;
  v367 = v399;
  v368 = v400;
  (*(v412 + 16))(v399, v90 + ((*(v366 + 80) + 32) & ~*(v366 + 80)) + *(v412 + 72) * v415, v400);
  v369 = v401;
  sub_1000A3148();
  (*(v366 + 8))(v367, v368);
  sub_1000A31D8();
  v371 = v370;
  (*(v409 + 8))(v369, v402);
  if (v371 >= 0.0)
  {
    goto LABEL_159;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_195;
  }

  while (*(v90 + 2) > v415)
  {
    v372 = sub_1000A3138();
    sub_1000A31E8();
    v372(&v463, 0);
    v111 = v418;
LABEL_159:
    sub_1000A2D08();
    v88 = v373;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_190:
      v90 = sub_1000322E0(v90);
    }

    if (*(v90 + 2) > v415)
    {
      v374 = sub_1000A3138();
      v375 = sub_1000A31C8();
      *v376 = v92 * v88 + *v376;
      v375(v462, 0);
      v374(&v463, 0);
      result = (v448)(v458, v93);
      *v111 = v90;
      return result;
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    result = sub_1000322E0(v90);
    v90 = result;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
  return result;
}