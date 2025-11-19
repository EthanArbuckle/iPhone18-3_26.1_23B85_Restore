uint64_t sub_1BB66BB18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v346 = &v344 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v347 = &v344 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v353 = &v344 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v349 = &v344 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v354 = &v344 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v357 = &v344 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v363 = &v344 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v364 = &v344 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v362 = &v344 - v20;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DD80);
  MEMORY[0x1EEE9AC00](v390);
  v389 = &v344 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v388 = &v344 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v387 = &v344 - v25;
  v392 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v26 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v383 = &v344 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v344 = &v344 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v345 = &v344 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v352 = &v344 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v348 = &v344 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v350 = &v344 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v367 = &v344 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v351 = &v344 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v368 = &v344 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v370 = &v344 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v369 = &v344 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v371 = &v344 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v375 = &v344 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v372 = &v344 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v374 = &v344 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v378 = &v344 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v377 = &v344 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v380 = &v344 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v379 = &v344 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v376 = &v344 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = (&v344 - v67);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v344 - v70;
  v72 = v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state;
  v358 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v73 = *(v358 + 28);
  v359 = v72;
  v74 = &v72[v73];
  v75 = sub_1BB6BA7F4();
  v76 = *(*(v75 - 8) + 24);
  v365 = v74;
  v360 = a1;
  v76(v74, a1, v75);
  v77 = v1[3];
  v78 = *(v77 + 16);
  v79 = MEMORY[0x1E69E7CC0];
  v373 = v1;
  v391 = v26;
  if (v78)
  {
    v361 = v68;
    v393 = MEMORY[0x1E69E7CC0];

    sub_1BB5E5880(0, v78, 0);
    v79 = v393;
    v80 = v77 + 64;
    result = sub_1BB6BB244();
    v82 = result;
    v83 = 0;
    v366 = v77 + 72;
    v381 = v78;
    v382 = v77 + 64;
    while ((v82 & 0x8000000000000000) == 0 && v82 < 1 << *(v77 + 32))
    {
      v85 = v82 >> 6;
      if ((*(v80 + 8 * (v82 >> 6)) & (1 << v82)) == 0)
      {
        goto LABEL_199;
      }

      v86 = *(v77 + 36);
      v384 = v83;
      v385 = v86;
      v87 = *(v77 + 48);
      v88 = sub_1BB6BA844();
      v89 = *(v88 - 8);
      v90 = v89;
      v91 = v87 + *(v89 + 72) * v82;
      v92 = *(v89 + 16);
      v93 = v77;
      v386 = v79;
      v94 = v387;
      v92(v387, v91, v88);
      v95 = *(*(v77 + 56) + 8 * v82);
      v96 = v71;
      v97 = v388;
      (*(v90 + 32))(v388, v94, v88);
      v98 = v390;
      *&v97[*(v390 + 48)] = v95;
      v99 = v97;
      v100 = v389;
      sub_1BB60DF90(v99, v389, &qword_1EBC5DD80);
      sub_1BB66EEF0(*(v100 + *(v98 + 48)) + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, v96, type metadata accessor for DKIdentityFilter.IdentityProbability);

      v79 = v386;

      (*(v90 + 8))(v100, v88);
      v393 = v79;
      v102 = *(v79 + 16);
      v101 = *(v79 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1BB5E5880(v101 > 1, v102 + 1, 1);
        v79 = v393;
      }

      *(v79 + 16) = v102 + 1;
      v26 = v391;
      result = sub_1BB66F778(v96, v79 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v391 + 72) * v102, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v84 = 1 << *(v93 + 32);
      if (v82 >= v84)
      {
        goto LABEL_200;
      }

      v71 = v96;
      v77 = v93;
      v80 = v382;
      v103 = *(v382 + 8 * v85);
      if ((v103 & (1 << v82)) == 0)
      {
        goto LABEL_201;
      }

      if (v385 != *(v77 + 36))
      {
        goto LABEL_202;
      }

      v104 = v103 & (-2 << (v82 & 0x3F));
      if (v104)
      {
        v84 = __clz(__rbit64(v104)) | v82 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v105 = v85 << 6;
        v106 = v85 + 1;
        v107 = (v366 + 8 * v85);
        while (v106 < (v84 + 63) >> 6)
        {
          v109 = *v107++;
          v108 = v109;
          v105 += 64;
          ++v106;
          if (v109)
          {
            result = sub_1BB66F830(v82, v385, 0);
            v84 = __clz(__rbit64(v108)) + v105;
            goto LABEL_4;
          }
        }

        result = sub_1BB66F830(v82, v385, 0);
      }

LABEL_4:
      v83 = v384 + 1;
      v82 = v84;
      if (v384 + 1 == v381)
      {

        v1 = v373;
        v68 = v361;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

LABEL_20:
  v110 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  v356 = v110[5];
  *&v365[v356] = v79;

  v111 = v1[4];
  v112 = *(v111 + 16);
  v113 = MEMORY[0x1E69E7CC0];
  v361 = v110;
  if (v112)
  {
    v393 = MEMORY[0x1E69E7CC0];

    sub_1BB5E5880(0, v112, 0);
    v113 = v393;
    v114 = v111 + 64;
    result = sub_1BB6BB244();
    v115 = result;
    v116 = 0;
    v366 = v111 + 72;
    v381 = v112;
    v382 = v111 + 64;
    while ((v115 & 0x8000000000000000) == 0 && v115 < 1 << *(v111 + 32))
    {
      v118 = v115 >> 6;
      if ((*(v114 + 8 * (v115 >> 6)) & (1 << v115)) == 0)
      {
        goto LABEL_204;
      }

      v119 = *(v111 + 36);
      v384 = v116;
      v385 = v119;
      v120 = *(v111 + 48);
      v121 = sub_1BB6BA844();
      v122 = *(v121 - 8);
      v123 = v122;
      v124 = v120 + *(v122 + 72) * v115;
      v125 = *(v122 + 16);
      v126 = v111;
      v386 = v113;
      v127 = v387;
      v125(v387, v124, v121);
      v128 = *(*(v111 + 56) + 8 * v115);
      v129 = v68;
      v130 = v388;
      (*(v123 + 32))(v388, v127, v121);
      v131 = v390;
      *&v130[*(v390 + 48)] = v128;
      v132 = v130;
      v133 = v389;
      sub_1BB60DF90(v132, v389, &qword_1EBC5DD80);
      sub_1BB66EEF0(*(v133 + *(v131 + 48)) + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, v129, type metadata accessor for DKIdentityFilter.IdentityProbability);

      v113 = v386;

      (*(v123 + 8))(v133, v121);
      v393 = v113;
      v135 = *(v113 + 16);
      v134 = *(v113 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_1BB5E5880(v134 > 1, v135 + 1, 1);
        v113 = v393;
      }

      *(v113 + 16) = v135 + 1;
      v26 = v391;
      result = sub_1BB66F778(v129, v113 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v391 + 72) * v135, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v117 = 1 << *(v126 + 32);
      if (v115 >= v117)
      {
        goto LABEL_205;
      }

      v68 = v129;
      v111 = v126;
      v114 = v382;
      v136 = *(v382 + 8 * v118);
      if ((v136 & (1 << v115)) == 0)
      {
        goto LABEL_206;
      }

      if (v385 != *(v111 + 36))
      {
        goto LABEL_207;
      }

      v137 = v136 & (-2 << (v115 & 0x3F));
      if (v137)
      {
        v117 = __clz(__rbit64(v137)) | v115 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v138 = v118 << 6;
        v139 = v118 + 1;
        v140 = (v366 + 8 * v118);
        while (v139 < (v117 + 63) >> 6)
        {
          v142 = *v140++;
          v141 = v142;
          v138 += 64;
          ++v139;
          if (v142)
          {
            result = sub_1BB66F830(v115, v385, 0);
            v117 = __clz(__rbit64(v141)) + v138;
            goto LABEL_23;
          }
        }

        result = sub_1BB66F830(v115, v385, 0);
      }

LABEL_23:
      v116 = v384 + 1;
      v115 = v117;
      if (v384 + 1 == v381)
      {

        v1 = v373;
        v110 = v361;
        goto LABEL_39;
      }
    }

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
    goto LABEL_208;
  }

LABEL_39:
  v355 = v110[6];
  *&v365[v355] = v113;

  v143 = v1[5];
  v144 = *(v143 + 16);
  v145 = MEMORY[0x1E69E7CC0];
  if (v144)
  {
    v393 = MEMORY[0x1E69E7CC0];

    sub_1BB5E5880(0, v144, 0);
    v145 = v393;
    v146 = v143 + 64;
    result = sub_1BB6BB244();
    v147 = result;
    v148 = 0;
    v366 = v143 + 72;
    v381 = v144;
    v382 = v143 + 64;
    while ((v147 & 0x8000000000000000) == 0 && v147 < 1 << *(v143 + 32))
    {
      v152 = v147 >> 6;
      if ((*(v146 + 8 * (v147 >> 6)) & (1 << v147)) == 0)
      {
        goto LABEL_211;
      }

      v153 = *(v143 + 36);
      v384 = v148;
      v385 = v153;
      v154 = *(v143 + 48);
      v155 = sub_1BB6BA844();
      v156 = *(v155 - 8);
      v157 = v156;
      v158 = v154 + *(v156 + 72) * v147;
      v159 = *(v156 + 16);
      v386 = v145;
      v160 = v387;
      v159(v387, v158, v155);
      v161 = *(*(v143 + 56) + 8 * v147);
      v162 = v388;
      (*(v157 + 32))(v388, v160, v155);
      v163 = v390;
      *&v162[*(v390 + 48)] = v161;
      v164 = v162;
      v165 = v389;
      sub_1BB60DF90(v164, v389, &qword_1EBC5DD80);
      v166 = v143;
      v167 = v376;
      sub_1BB66EEF0(*(v165 + *(v163 + 48)) + OBJC_IVAR____TtC23IntelligentTrackingCore19DKIdentityEMAFilter_state, v376, type metadata accessor for DKIdentityFilter.IdentityProbability);

      v145 = v386;

      (*(v157 + 8))(v165, v155);
      v393 = v145;
      v169 = *(v145 + 16);
      v168 = *(v145 + 24);
      if (v169 >= v168 >> 1)
      {
        sub_1BB5E5880(v168 > 1, v169 + 1, 1);
        v145 = v393;
      }

      *(v145 + 16) = v169 + 1;
      v26 = v391;
      result = sub_1BB66F778(v167, v145 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v391 + 72) * v169, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v149 = 1 << *(v166 + 32);
      if (v147 >= v149)
      {
        goto LABEL_212;
      }

      v143 = v166;
      v146 = v382;
      v170 = *(v382 + 8 * v152);
      if ((v170 & (1 << v147)) == 0)
      {
        goto LABEL_213;
      }

      if (v385 != *(v143 + 36))
      {
        goto LABEL_214;
      }

      v171 = v170 & (-2 << (v147 & 0x3F));
      if (v171)
      {
        v149 = __clz(__rbit64(v171)) | v147 & 0x7FFFFFFFFFFFFFC0;
        v150 = v381;
        v151 = v384;
      }

      else
      {
        v172 = v152 << 6;
        v173 = v152 + 1;
        v174 = (v366 + 8 * v152);
        v150 = v381;
        while (v173 < (v149 + 63) >> 6)
        {
          v176 = *v174++;
          v175 = v176;
          v172 += 64;
          ++v173;
          if (v176)
          {
            result = sub_1BB66F830(v147, v385, 0);
            v149 = __clz(__rbit64(v175)) + v172;
            goto LABEL_57;
          }
        }

        result = sub_1BB66F830(v147, v385, 0);
LABEL_57:
        v151 = v384;
      }

      v148 = v151 + 1;
      v147 = v149;
      if (v148 == v150)
      {

        v177 = v356;
        v110 = v361;
        goto LABEL_60;
      }
    }

    goto LABEL_210;
  }

  v177 = v356;
LABEL_60:
  v178 = v110[7];
  v179 = v365;
  v389 = v178;
  *&v365[v178] = v145;

  v180 = *&v179[v177];
  v181 = *(v180 + 16);

  v182 = v392;
  if (v181)
  {
    v183 = 0;
    v390 = MEMORY[0x1E69E7CC0];
    v184 = v373;
    while (v183 < *(v180 + 16))
    {
      v185 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v186 = *(v26 + 72);
      v187 = v379;
      sub_1BB66EEF0(v180 + v185 + v186 * v183, v379, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v184[2] + 56) > *(v187 + *(v182 + 24)))
      {
        result = sub_1BB66EF58(v187, type metadata accessor for DKIdentityFilter.IdentityProbability);
      }

      else
      {
        sub_1BB66F778(v187, v380, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v188 = v390;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v393 = v188;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E5880(0, *(v188 + 16) + 1, 1);
          v184 = v373;
          v188 = v393;
        }

        v191 = *(v188 + 16);
        v190 = *(v188 + 24);
        v192 = v188;
        if (v191 >= v190 >> 1)
        {
          sub_1BB5E5880(v190 > 1, v191 + 1, 1);
          v184 = v373;
          v192 = v393;
        }

        *(v192 + 16) = v191 + 1;
        v390 = v192;
        result = sub_1BB66F778(v380, v192 + v185 + v191 * v186, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v182 = v392;
      }

      if (v181 == ++v183)
      {
        goto LABEL_72;
      }
    }

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
    goto LABEL_215;
  }

  v390 = MEMORY[0x1E69E7CC0];
  v184 = v373;
LABEL_72:

  v193 = *&v365[v355];
  v194 = *(v193 + 16);

  if (v194)
  {
    v195 = 0;
    v196 = MEMORY[0x1E69E7CC0];
    while (v195 < *(v193 + 16))
    {
      v197 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v198 = *(v26 + 72);
      v199 = v377;
      sub_1BB66EEF0(v193 + v197 + v198 * v195, v377, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v184[2] + 56) > *(v199 + *(v182 + 24)))
      {
        result = sub_1BB66EF58(v199, type metadata accessor for DKIdentityFilter.IdentityProbability);
      }

      else
      {
        sub_1BB66F778(v199, v378, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v200 = swift_isUniquelyReferenced_nonNull_native();
        v393 = v196;
        if ((v200 & 1) == 0)
        {
          sub_1BB5E5880(0, *(v196 + 16) + 1, 1);
          v184 = v373;
          v196 = v393;
        }

        v202 = *(v196 + 16);
        v201 = *(v196 + 24);
        if (v202 >= v201 >> 1)
        {
          sub_1BB5E5880(v201 > 1, v202 + 1, 1);
          v184 = v373;
          v196 = v393;
        }

        *(v196 + 16) = v202 + 1;
        result = sub_1BB66F778(v378, v196 + v197 + v202 * v198, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v182 = v392;
      }

      if (v194 == ++v195)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_209;
  }

  v196 = MEMORY[0x1E69E7CC0];
LABEL_84:

  v203 = *&v365[v389];
  v204 = *(v203 + 16);

  if (!v204)
  {
    v389 = MEMORY[0x1E69E7CC0];
LABEL_96:

    v215 = *(v390 + 16);
    if (v215)
    {
      v216 = v390 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      result = sub_1BB66EEF0(v216, v372, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (v215 != 1)
      {
        v244 = 1;
        v245 = v372;
        while (v244 < *(v390 + 16))
        {
          v246 = v369;
          sub_1BB66EEF0(v216 + *(v26 + 72) * v244, v369, type metadata accessor for DKIdentityFilter.IdentityProbability);
          if (*(v245 + *(v392 + 20)) >= *(v246 + *(v392 + 20)))
          {
            result = sub_1BB66EF58(v246, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          else
          {
            sub_1BB66EF58(v245, type metadata accessor for DKIdentityFilter.IdentityProbability);
            result = sub_1BB66F778(v246, v245, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          if (v215 == ++v244)
          {
            goto LABEL_98;
          }
        }

        goto LABEL_216;
      }

LABEL_98:
      v217 = v362;
      sub_1BB66F778(v372, v362, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v218 = 0;
      v182 = v392;
    }

    else
    {
      v218 = 1;
      v217 = v362;
    }

    v219 = (v26 + 56);
    v220 = *(v26 + 56);
    v221 = 1;
    (v220)(v217, v218, 1, v182);
    v222 = *(v196 + 16);
    if (v222)
    {
      v223 = v196 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      result = sub_1BB66EEF0(v223, v371, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (v222 != 1)
      {
        v247 = 1;
        v248 = v371;
        while (v247 < *(v196 + 16))
        {
          v249 = v368;
          sub_1BB66EEF0(v223 + *(v26 + 72) * v247, v368, type metadata accessor for DKIdentityFilter.IdentityProbability);
          if (*(v248 + *(v392 + 20)) >= *(v249 + *(v392 + 20)))
          {
            result = sub_1BB66EF58(v249, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          else
          {
            sub_1BB66EF58(v248, type metadata accessor for DKIdentityFilter.IdentityProbability);
            result = sub_1BB66F778(v249, v248, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          if (v222 == ++v247)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_217;
      }

LABEL_102:
      v224 = v364;
      sub_1BB66F778(v371, v364, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v221 = 0;
    }

    else
    {
      v224 = v364;
    }

    v225 = 1;
    (v220)(v224, v221, 1, v392);
    v226 = *(v389 + 16);
    if (v226)
    {
      v227 = v389 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      result = sub_1BB66EEF0(v227, v370, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (v226 != 1)
      {
        v250 = 1;
        v251 = v370;
        while (v250 < *(v389 + 16))
        {
          v252 = v367;
          sub_1BB66EEF0(v227 + *(v26 + 72) * v250, v367, type metadata accessor for DKIdentityFilter.IdentityProbability);
          if (*(v251 + *(v392 + 20)) >= *(v252 + *(v392 + 20)))
          {
            result = sub_1BB66EF58(v252, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          else
          {
            sub_1BB66EF58(v251, type metadata accessor for DKIdentityFilter.IdentityProbability);
            result = sub_1BB66F778(v252, v251, type metadata accessor for DKIdentityFilter.IdentityProbability);
          }

          if (v226 == ++v250)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_218;
      }

LABEL_106:
      v228 = v363;
      sub_1BB66F778(v370, v363, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v225 = 0;
    }

    else
    {
      v228 = v363;
    }

    v229 = v392;
    (v220)(v228, v225, 1, v392);
    v230 = v357;
    sub_1BB5982A0(v362, v357, &qword_1EBC5C428);
    v231 = v26;
    v232 = v230;
    v233 = *(v231 + 48);
    v234 = v233(v230, 1, v229);
    v235 = v364;
    if (v234 == 1)
    {
      sub_1BB598308(v232, &qword_1EBC5C428);
    }

    else
    {
      v236 = v232;
      v237 = v351;
      sub_1BB66F778(v236, v351, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v373[2] + 152) <= *(v237 + *(v229 + 20)))
      {

        v395 = 14;
        v393 = 0;
        v394 = 0xE000000000000000;
        sub_1BB6BB2F4();
        MEMORY[0x1BFB10B60](0xD000000000000026, 0x80000001BB6CE620);
        sub_1BB6BAFB4();
        MEMORY[0x1BFB10B60](41, 0xE100000000000000);
        v253 = v393;
        v254 = v394;
        v255 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v395, v253, v254, v255);

        v256 = v237;
LABEL_196:
        v263 = v358;
        v341 = *(v358 + 20);
        v265 = v359;
        sub_1BB598308(&v359[v341], &qword_1EBC5C428);
        sub_1BB66EEF0(v256, &v265[v341], type metadata accessor for DKIdentityFilter.IdentityProbability);
        (v220)(&v265[v341], 0, 1, v229);
        v342 = *(v256 + *(v229 + 24));
        sub_1BB66EF58(v256, type metadata accessor for DKIdentityFilter.IdentityProbability);
        *&v265[v263[6]] = v342;
        goto LABEL_197;
      }

      sub_1BB66EF58(v237, type metadata accessor for DKIdentityFilter.IdentityProbability);
    }

    v238 = v235;
    v239 = v354;
    sub_1BB5982A0(v238, v354, &qword_1EBC5C428);
    if (v233(v239, 1, v229) == 1)
    {
      sub_1BB598308(v239, &qword_1EBC5C428);
    }

    else
    {
      v388 = v219;
      v240 = v220;
      v241 = v350;
      v242 = sub_1BB66F778(v239, v350, type metadata accessor for DKIdentityFilter.IdentityProbability);
      MEMORY[0x1EEE9AC00](v242);
      *(&v344 - 2) = v241;
      v243 = v349;
      sub_1BB5C0594(sub_1BB66F800, v390, v349);
      if (v233(v243, 1, v229) == 1)
      {
        sub_1BB598308(v243, &qword_1EBC5C428);
        sub_1BB66EF58(v241, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v220 = v240;
      }

      else
      {
        v257 = v348;
        sub_1BB66F778(v243, v348, type metadata accessor for DKIdentityFilter.IdentityProbability);
        v258 = *(v229 + 20);
        v259 = v373[2];
        v220 = v240;
        if (*(v259 + 160) < *(v257 + v258) && *(v259 + 168) < *(v241 + v258))
        {

          v395 = 14;
          v393 = 0;
          v394 = 0xE000000000000000;
          sub_1BB6BB2F4();
          MEMORY[0x1BFB10B60](0xD000000000000022, 0x80000001BB6CE5D0);
          sub_1BB6BAFB4();
          MEMORY[0x1BFB10B60](0xD000000000000015, 0x80000001BB6CE600);
          sub_1BB6BAFB4();
          MEMORY[0x1BFB10B60](41, 0xE100000000000000);
          v260 = v393;
          v261 = v394;
          v262 = sub_1BB6BB064();
          _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v395, v260, v261, v262);

          sub_1BB66EF58(v348, type metadata accessor for DKIdentityFilter.IdentityProbability);
          v263 = v358;
          v264 = *(v358 + 20);
          v265 = v359;
          sub_1BB598308(&v359[v264], &qword_1EBC5C428);
          sub_1BB66EEF0(v241, &v265[v264], type metadata accessor for DKIdentityFilter.IdentityProbability);
          v266 = &v265[v264];
          v267 = v392;
          (v240)(v266, 0, 1, v392);
          *&v265[v263[6]] = *(v241 + *(v267 + 24));
          v268 = v241;
          goto LABEL_146;
        }

        sub_1BB66EF58(v348, type metadata accessor for DKIdentityFilter.IdentityProbability);
        sub_1BB66EF58(v241, type metadata accessor for DKIdentityFilter.IdentityProbability);
      }
    }

    v269 = v363;
    v270 = v353;
    sub_1BB5982A0(v363, v353, &qword_1EBC5C428);
    v271 = v392;
    if (v233(v270, 1, v392) == 1)
    {
      sub_1BB598308(v270, &qword_1EBC5C428);
      v272 = v364;
      v229 = v271;
      v273 = v391;
LABEL_149:
      if (v233(v272, 1, v229) != 1)
      {
LABEL_154:
        v292 = v220;
        v293 = v390;
        v294 = *(v390 + 16);
        if (v294)
        {
          v393 = MEMORY[0x1E69E7CC0];
          sub_1BB5E5760(0, v294, 0);
          v295 = v393;
          v296 = v293 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
          v297 = *(v273 + 72);
          do
          {
            v298 = v383;
            sub_1BB66EEF0(v296, v383, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v299 = *(v298 + *(v392 + 24));
            sub_1BB66EF58(v298, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v393 = v295;
            v301 = *(v295 + 16);
            v300 = *(v295 + 24);
            if (v301 >= v300 >> 1)
            {
              sub_1BB5E5760((v300 > 1), v301 + 1, 1);
              v295 = v393;
            }

            *(v295 + 16) = v301 + 1;
            *(v295 + 8 * v301 + 32) = v299;
            v296 += v297;
            --v294;
          }

          while (v294);

          v273 = v391;
        }

        else
        {

          v295 = MEMORY[0x1E69E7CC0];
        }

        v302 = COERCE_DOUBLE(sub_1BB5A1450(v295));
        v304 = v303;

        if (v304)
        {
          v305 = 0.0;
        }

        else
        {
          v305 = v302;
        }

        v306 = *(v196 + 16);
        if (v306)
        {
          v393 = MEMORY[0x1E69E7CC0];
          sub_1BB5E5760(0, v306, 0);
          v307 = v393;
          v308 = v196 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
          v309 = *(v273 + 72);
          do
          {
            v310 = v383;
            sub_1BB66EEF0(v308, v383, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v311 = *(v310 + *(v392 + 24));
            sub_1BB66EF58(v310, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v393 = v307;
            v313 = *(v307 + 16);
            v312 = *(v307 + 24);
            if (v313 >= v312 >> 1)
            {
              sub_1BB5E5760((v312 > 1), v313 + 1, 1);
              v307 = v393;
            }

            *(v307 + 16) = v313 + 1;
            *(v307 + 8 * v313 + 32) = v311;
            v308 += v309;
            --v306;
          }

          while (v306);

          v273 = v391;
        }

        else
        {

          v307 = MEMORY[0x1E69E7CC0];
        }

        v314 = COERCE_DOUBLE(sub_1BB5A1450(v307));
        v316 = v315;

        if (v316)
        {
          v317 = 0.0;
        }

        else
        {
          v317 = v314;
        }

        v318 = v389;
        v319 = *(v389 + 16);
        if (v319)
        {
          v393 = MEMORY[0x1E69E7CC0];
          sub_1BB5E5760(0, v319, 0);
          v320 = v393;
          v321 = v318 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
          v322 = *(v273 + 72);
          do
          {
            v323 = v383;
            sub_1BB66EEF0(v321, v383, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v324 = *(v323 + *(v392 + 24));
            sub_1BB66EF58(v323, type metadata accessor for DKIdentityFilter.IdentityProbability);
            v393 = v320;
            v326 = *(v320 + 16);
            v325 = *(v320 + 24);
            if (v326 >= v325 >> 1)
            {
              sub_1BB5E5760((v325 > 1), v326 + 1, 1);
              v320 = v393;
            }

            *(v320 + 16) = v326 + 1;
            *(v320 + 8 * v326 + 32) = v324;
            v321 += v322;
            --v319;
          }

          while (v319);
        }

        else
        {

          v320 = MEMORY[0x1E69E7CC0];
        }

        v327 = COERCE_DOUBLE(sub_1BB5A1450(v320));
        v329 = v328;

        v330 = 0.0;
        if (v305 > 0.0)
        {
          v331 = v305;
        }

        else
        {
          v331 = 0.0;
        }

        if (v317 > 0.0)
        {
          v330 = v317;
        }

        if (v305 <= v317)
        {
          v332 = v317;
        }

        else
        {
          v330 = v331;
          v332 = v305;
        }

        if (v332 <= v327)
        {
          v332 = v327;
        }

        if (v329)
        {
          v333 = v330;
        }

        else
        {
          v333 = v332;
        }

        v265 = v359;
        v263 = v358;
        v395 = 14;
        v393 = 0;
        v394 = 0xE000000000000000;
        sub_1BB6BB2F4();
        MEMORY[0x1BFB10B60](0x1000000000000043, 0x80000001BB6CE530);
        sub_1BB6BAFB4();
        v334 = v393;
        v335 = v394;
        v336 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v395, v334, v335, v336);

        v337 = v263[5];
        sub_1BB598308(&v265[v337], &qword_1EBC5C428);
        (v292)(&v265[v337], 1, 1, v392);
        *&v265[v263[6]] = v333;
        goto LABEL_197;
      }

      v288 = v269;
      v289 = v346;
      sub_1BB5982A0(v288, v346, &qword_1EBC5C428);
      if (v233(v289, 1, v229) == 1)
      {
        sub_1BB598308(v289, &qword_1EBC5C428);
        goto LABEL_154;
      }

      v290 = v289;
      v291 = v344;
      sub_1BB66F778(v290, v344, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if (*(v373[2] + 184) > *(v291 + *(v229 + 20)))
      {
        sub_1BB66EF58(v291, type metadata accessor for DKIdentityFilter.IdentityProbability);
        goto LABEL_154;
      }

      v395 = 14;
      v393 = 0;
      v394 = 0xE000000000000000;
      sub_1BB6BB2F4();
      MEMORY[0x1BFB10B60](0xD000000000000022, 0x80000001BB6CE580);
      sub_1BB6BAFB4();
      MEMORY[0x1BFB10B60](41, 0xE100000000000000);
      v256 = v291;
      v338 = v393;
      v339 = v394;
      v340 = sub_1BB6BB064();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v395, v338, v339, v340);

      goto LABEL_196;
    }

    v388 = v220;
    v274 = v352;
    v275 = sub_1BB66F778(v270, v352, type metadata accessor for DKIdentityFilter.IdentityProbability);
    MEMORY[0x1EEE9AC00](v275);
    *(&v344 - 2) = v274;
    v276 = v347;
    sub_1BB5C0594(sub_1BB67156C, v196, v347);
    v229 = v271;
    if (v233(v276, 1, v271) == 1)
    {
      sub_1BB598308(v276, &qword_1EBC5C428);
      sub_1BB66EF58(v274, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v272 = v364;
      v269 = v363;
      v273 = v391;
LABEL_148:
      v220 = v388;
      goto LABEL_149;
    }

    v277 = v345;
    sub_1BB66F778(v276, v345, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v278 = *(v271 + 20);
    v279 = v373[2];
    v273 = v391;
    if (*(v279 + 160) >= *(v277 + v278) || *(v279 + 176) >= *(v352 + v278))
    {
      v287 = v364;
      sub_1BB66EF58(v277, type metadata accessor for DKIdentityFilter.IdentityProbability);
      sub_1BB66EF58(v352, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v272 = v287;
      v269 = v363;
      v229 = v392;
      goto LABEL_148;
    }

    v395 = 14;
    v393 = 0;
    v394 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000022, 0x80000001BB6CE580);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CE5B0);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](41, 0xE100000000000000);
    v280 = v393;
    v281 = v394;
    v282 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v395, v280, v281, v282);

    sub_1BB66EF58(v277, type metadata accessor for DKIdentityFilter.IdentityProbability);
    v263 = v358;
    v283 = *(v358 + 20);
    v265 = v359;
    sub_1BB598308(&v359[v283], &qword_1EBC5C428);
    v284 = v352;
    sub_1BB66EEF0(v352, &v265[v283], type metadata accessor for DKIdentityFilter.IdentityProbability);
    v285 = &v265[v283];
    v286 = v392;
    (v388)(v285, 0, 1, v392);
    *&v265[v263[6]] = *(v284 + *(v286 + 24));
    v268 = v284;
LABEL_146:
    sub_1BB66EF58(v268, type metadata accessor for DKIdentityFilter.IdentityProbability);
LABEL_197:
    v343 = sub_1BB66A960();
    sub_1BB598308(v363, &qword_1EBC5C428);
    sub_1BB598308(v362, &qword_1EBC5C428);
    v265[v263[9]] = v343 & 1;
    return sub_1BB598308(v364, &qword_1EBC5C428);
  }

  v205 = 0;
  v389 = MEMORY[0x1E69E7CC0];
  while (v205 < *(v203 + 16))
  {
    v206 = v196;
    v207 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v208 = *(v26 + 72);
    v209 = v374;
    sub_1BB66EEF0(v203 + v207 + v208 * v205, v374, type metadata accessor for DKIdentityFilter.IdentityProbability);
    if (*(v184[2] + 56) > *(v209 + *(v182 + 24)))
    {
      result = sub_1BB66EF58(v209, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v196 = v206;
    }

    else
    {
      sub_1BB66F778(v209, v375, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v210 = v389;
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v393 = v210;
      if ((v211 & 1) == 0)
      {
        sub_1BB5E5880(0, *(v210 + 16) + 1, 1);
        v184 = v373;
        v210 = v393;
      }

      v196 = v206;
      v213 = *(v210 + 16);
      v212 = *(v210 + 24);
      v214 = v210;
      if (v213 >= v212 >> 1)
      {
        sub_1BB5E5880(v212 > 1, v213 + 1, 1);
        v184 = v373;
        v214 = v393;
      }

      *(v214 + 16) = v213 + 1;
      v389 = v214;
      result = sub_1BB66F778(v375, v214 + v207 + v213 * v208, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v26 = v391;
      v182 = v392;
    }

    if (v204 == ++v205)
    {
      goto LABEL_96;
    }
  }

LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
  return result;
}

uint64_t sub_1BB66E588()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1BB5B0A1C(MEMORY[0x1E69E7CC0]);

  v0[4] = sub_1BB5B0A1C(v1);

  v0[5] = sub_1BB5B0A1C(v1);
}

uint64_t DKIdentityFilter.deinit()
{

  sub_1BB66EF58(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state, type metadata accessor for DKIdentityFilter.IdentityState);
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKIdentityFilter.__deallocating_deinit()
{

  sub_1BB66EF58(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_state, type metadata accessor for DKIdentityFilter.IdentityState);
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKIdentityFilter_lastWindowSizeUpdateTime;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB66E784(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1BFB117B0](v8, v5);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = *(v3 + 24);
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1BB66EEF0(v12, v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
      sub_1BB6BA844();
      sub_1BB6652FC(&qword_1EBC5C288, MEMORY[0x1E69695A8]);
      sub_1BB6BAB84();
      v14 = *&v7[v10];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x1BFB117D0](*&v14);
      v15 = *&v7[v11];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x1BFB117D0](*&v15);
      result = sub_1BB66EF58(v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s23IntelligentTrackingCore16DKIdentityFilterC13IdentityStateV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC5DE60);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if ((sub_1BB635E08(*a1, *a2) & 1) == 0)
  {
    goto LABEL_21;
  }

  v14 = type metadata accessor for DKIdentityFilter.IdentityState(0);
  v15 = a1;
  v16 = a2;
  v34 = v14;
  v35 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1BB5982A0(v15 + v17, v13, &qword_1EBC5C428);
  v19 = v16 + v17;
  v20 = v16;
  sub_1BB5982A0(v19, &v13[v18], &qword_1EBC5C428);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_1BB5982A0(v13, v10, &qword_1EBC5C428);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      sub_1BB66F778(&v13[v18], v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
      if ((sub_1BB6BA814() & 1) != 0 && *&v10[*(v4 + 20)] == *&v7[*(v4 + 20)])
      {
        v30 = *(v4 + 24);
        v31 = *&v10[v30];
        v32 = *&v7[v30];
        sub_1BB66EF58(v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
        sub_1BB66EF58(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
        sub_1BB598308(v13, &qword_1EBC5C428);
        if (v31 == v32)
        {
          goto LABEL_5;
        }

LABEL_21:
        v28 = 0;
        return v28 & 1;
      }

      sub_1BB66EF58(v7, type metadata accessor for DKIdentityFilter.IdentityProbability);
      sub_1BB66EF58(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
      v29 = &qword_1EBC5C428;
LABEL_20:
      sub_1BB598308(v13, v29);
      goto LABEL_21;
    }

    sub_1BB66EF58(v10, type metadata accessor for DKIdentityFilter.IdentityProbability);
LABEL_14:
    v29 = &unk_1EBC5DE60;
    goto LABEL_20;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1BB598308(v13, &qword_1EBC5C428);
LABEL_5:
  v23 = v34;
  v22 = v35;
  if (*(v35 + *(v34 + 24)) != *(v20 + *(v34 + 24)))
  {
    goto LABEL_21;
  }

  v24 = *(v34 + 28);
  v25 = v35 + v24;
  v26 = v20 + v24;
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v27 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  if ((sub_1BB635E08(*(v25 + v27[5]), *(v26 + v27[5])) & 1) == 0 || (sub_1BB635E08(*(v25 + v27[6]), *(v26 + v27[6])) & 1) == 0 || (sub_1BB635E08(*(v25 + v27[7]), *(v26 + v27[7])) & 1) == 0 || (sub_1BB6BA7C4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v28 = *(v22 + *(v23 + 36)) ^ *(v20 + *(v23 + 36)) ^ 1;
  return v28 & 1;
}

uint64_t _s23IntelligentTrackingCore16DKIdentityFilterC21IdentityProbabilitiesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  if ((sub_1BB635E08(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1BB635E08(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1BB635E08(v6, v7);
}

unint64_t sub_1BB66EE00()
{
  result = qword_1EBC5DD08;
  if (!qword_1EBC5DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DD08);
  }

  return result;
}

uint64_t sub_1BB66EE54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DD10);
    sub_1BB6652FC(a2, type metadata accessor for DKIdentityFilter.IdentityProbability);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB66EEF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB66EF58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BB66EFD8()
{
  result = qword_1EBC5DD48;
  if (!qword_1EBC5DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DD48);
  }

  return result;
}

uint64_t sub_1BB66F04C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB66F0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BB66F120()
{
  result = qword_1EBC5DD60;
  if (!qword_1EBC5DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DD60);
  }

  return result;
}

uint64_t sub_1BB66F174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BB66F298(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BB6CEA70 == a2 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BB6CEA90 == a2 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BB6CEAB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BB66F40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C696261626F7270 && a2 == 0xED00007365697469;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BB6CA610 == a2 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEE00656D69546574 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654E657461647075 && a2 == 0xEC00000064656465)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1BB66F62C(uint64_t a1)
{
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 56) = *(a1 + 56);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 72) = *(a1 + 72);
  *(v1 + 80) = *(a1 + 80);
  *(v1 + 88) = *(a1 + 88);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 104) = *(a1 + 104);
  *(v1 + 112) = *(a1 + 112);
  *(v1 + 120) = *(a1 + 120);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 136) = *(a1 + 136);
  *(v1 + 144) = *(a1 + 144);
  *(v1 + 152) = *(a1 + 152);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 168) = *(a1 + 168);
  *(v1 + 176) = *(a1 + 176);
  *(v1 + 184) = *(a1 + 184);
  v2 = *(a1 + 200);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 200) = v2;
  *(v1 + 208) = *(a1 + 208);
  *(v1 + 216) = *(a1 + 216);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 232) = *(a1 + 232);
  *(v1 + 240) = *(a1 + 240);
  *(v1 + 248) = *(a1 + 248);
  *(v1 + 256) = *(a1 + 256);
  *(v1 + 264) = *(a1 + 264);

  return v1;
}

uint64_t sub_1BB66F778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB66F830(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1BB66F984()
{
  result = type metadata accessor for DKIdentityFilter.IdentityState(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1BB66FC0C()
{
  result = sub_1BB6BA844();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BB66FCB0()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB66FFFC(319, &qword_1EBC5DDD8, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1BB66FE64()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BB66FF00()
{
  sub_1BB66FFFC(319, &qword_1EBC5DDD8, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1BB66FFFC(319, &qword_1EBC5C990, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DKIdentityFilter.IdentityProbabilities(319);
      if (v2 <= 0x3F)
      {
        sub_1BB6BA7F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BB66FFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DKIdentityFilter.IdentityProbability(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1BB671150()
{
  result = qword_1EBC5DE00;
  if (!qword_1EBC5DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE00);
  }

  return result;
}

unint64_t sub_1BB6711A8()
{
  result = qword_1EBC5DE08;
  if (!qword_1EBC5DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE08);
  }

  return result;
}

unint64_t sub_1BB671200()
{
  result = qword_1EBC5DE10;
  if (!qword_1EBC5DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE10);
  }

  return result;
}

unint64_t sub_1BB671258()
{
  result = qword_1EBC5DE18;
  if (!qword_1EBC5DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE18);
  }

  return result;
}

unint64_t sub_1BB6712B0()
{
  result = qword_1EBC5DE20;
  if (!qword_1EBC5DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE20);
  }

  return result;
}

unint64_t sub_1BB671308()
{
  result = qword_1EBC5DE28;
  if (!qword_1EBC5DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE28);
  }

  return result;
}

unint64_t sub_1BB671360()
{
  result = qword_1EBC5DE30;
  if (!qword_1EBC5DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE30);
  }

  return result;
}

unint64_t sub_1BB6713B8()
{
  result = qword_1EBC5DE38;
  if (!qword_1EBC5DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE38);
  }

  return result;
}

unint64_t sub_1BB671410()
{
  result = qword_1EBC5DE40;
  if (!qword_1EBC5DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE40);
  }

  return result;
}

unint64_t sub_1BB671468()
{
  result = qword_1EBC5DE48;
  if (!qword_1EBC5DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE48);
  }

  return result;
}

unint64_t sub_1BB6714C0()
{
  result = qword_1EBC5DE50;
  if (!qword_1EBC5DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE50);
  }

  return result;
}

unint64_t sub_1BB671518()
{
  result = qword_1EBC5DE58;
  if (!qword_1EBC5DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DE58);
  }

  return result;
}

id DKRepeatingTimer.init(interval:fireOnce:queue:_:)(int a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v59 = a4;
  v60 = a2;
  v52 = a3;
  v50 = a1;
  v8 = sub_1BB6BAA54();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BB6BAA74();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1BB6BAA44();
  v12 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v46 - v15);
  v17 = sub_1BB6BAA94();
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = sub_1BB6BB0A4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *&v6[v27] = v28;
  v6[OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state] = 0;
  sub_1BB671C64();
  sub_1BB6BB094();
  v29 = sub_1BB6BB0B4();
  (*(v24 + 8))(v26, v23);
  v30 = v17;
  v31 = v48;
  v49 = v6;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_timer] = v29;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1BB6BAA84();
  sub_1BB6BAAA4();
  v33 = *(v31 + 8);
  v33(v19, v30);
  if (v50)
  {
    v34 = v51;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F40], v51);
    v35 = v47;
    sub_1BB65E348(v47);
    MEMORY[0x1BFB10F80](v22, v16, v35, ObjectType);
    swift_unknownObjectRelease();
    v36 = *(v12 + 8);
    v36(v35, v34);
    v36(v16, v34);
  }

  else
  {
    *v16 = 0;
    v37 = v51;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F28], v51);
    MEMORY[0x1BFB10F90](v22, v16, ObjectType, a5);
    swift_unknownObjectRelease();
    (*(v12 + 8))(v16, v37);
  }

  v33(v22, v30);
  v38 = v49;
  swift_getObjectType();
  aBlock[4] = v52;
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BB671CB0;
  aBlock[3] = &block_descriptor;
  v39 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v40 = v53;
  sub_1BB6BAA64();
  v41 = v56;
  sub_1BB671D0C();
  sub_1BB6BB0C4();
  _Block_release(v39);
  swift_unknownObjectRelease();
  (*(v57 + 8))(v41, v58);
  (*(v54 + 8))(v40, v55);

  v42 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  *&v38[OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_date] = v42;
  v43 = type metadata accessor for DKRepeatingTimer();
  v61.receiver = v38;
  v61.super_class = v43;
  v44 = objc_msgSendSuper2(&v61, sel_init);
  sub_1BB671FA4();

  return v44;
}

unint64_t sub_1BB671C64()
{
  result = qword_1EBC5DE88;
  if (!qword_1EBC5DE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5DE88);
  }

  return result;
}

uint64_t sub_1BB671CB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BB671D0C()
{
  sub_1BB6BAA54();
  sub_1BB67240C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DEB8);
  sub_1BB672464();
  return sub_1BB6BB234();
}

id DKRepeatingTimer.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  v3 = *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock];

  os_unfair_lock_lock(v3 + 4);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1BB6BB0D4();
  swift_unknownObjectRelease();
  v4 = *&v1[v2];

  os_unfair_lock_unlock(v4 + 4);

  sub_1BB671FA4();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DKRepeatingTimer();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1BB671FA4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  v3 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock);

  os_unfair_lock_lock(v3 + 4);

  if (!*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state))
  {
    *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state) = 1;
    swift_getObjectType();
    sub_1BB6BB0E4();
  }

  v4 = *(v1 + v2);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1BB672080(char a1, void (*a2)(uint64_t))
{
  v5 = v2;
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  v7 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock);

  os_unfair_lock_lock(v7 + 4);

  if (*(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state) == 1)
  {
    *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state) = a1;
    ObjectType = swift_getObjectType();
    a2(ObjectType);
  }

  v9 = *(v5 + v6);

  os_unfair_lock_unlock(v9 + 4);
}

BOOL sub_1BB672138()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock;
  v2 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_stateLock);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore16DKRepeatingTimer_state);
  v4 = *(v0 + v1);

  os_unfair_lock_unlock(v4 + 4);

  return v3 == 1;
}

id DKRepeatingTimer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1BB6723B8()
{
  result = qword_1EBC5DEA8;
  if (!qword_1EBC5DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DEA8);
  }

  return result;
}

unint64_t sub_1BB67240C()
{
  result = qword_1EBC5DEB0;
  if (!qword_1EBC5DEB0)
  {
    sub_1BB6BAA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DEB0);
  }

  return result;
}

unint64_t sub_1BB672464()
{
  result = qword_1EBC5DEC0;
  if (!qword_1EBC5DEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DEC0);
  }

  return result;
}

uint64_t DKDataLogRecorder.__allocating_init()()
{
  v0 = swift_allocObject();
  DKDataLogRecorder.init()();
  return v0;
}

uint64_t sub_1BB67251C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001BB6CECD0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BB6725B0(uint64_t a1)
{
  v2 = sub_1BB673630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6725EC(uint64_t a1)
{
  v2 = sub_1BB673630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB672628(uint64_t a1)
{
  v2 = sub_1BB673684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB672664(uint64_t a1)
{
  v2 = sub_1BB673684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKDataLog.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DED0);
  v4 = *(v3 - 8);
  v15 = v3;
  v16 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DED8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB673630();
  sub_1BB6BB984();
  sub_1BB673684();
  sub_1BB6BB6B4();
  v17 = v11;
  type metadata accessor for DKIntelligentTrackingState(0);
  sub_1BB6736D8(&qword_1EBC5C510, type metadata accessor for DKIntelligentTrackingState);
  v12 = v15;
  sub_1BB6BB744();
  (*(v16 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t DKDataLog.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DEF0);
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DEF8);
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB673630();
  sub_1BB6BB974();
  if (v2)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v10 = v22;
  v11 = sub_1BB6BB694();
  v12 = (2 * *(v11 + 16)) | 1;
  v23 = v11;
  v24 = v11 + 32;
  v25 = 0;
  v26 = v12;
  v13 = v9;
  if (sub_1BB5D1D28() || v25 != v26 >> 1)
  {
    v14 = sub_1BB6BB3B4();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
    *v16 = &type metadata for DKDataLog;
    sub_1BB6BB5F4();
    sub_1BB6BB3A4();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1BB673684();
  sub_1BB6BB5E4();
  type metadata accessor for DKIntelligentTrackingState(0);
  sub_1BB6736D8(&qword_1EBC5C500, type metadata accessor for DKIntelligentTrackingState);
  sub_1BB6BB684();
  (*(v21 + 8))(v6, v4);
  (*(v10 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v18 = v19;
  *v20 = v27;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t DKDataLogStamped.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DKDataLogStamped.time.setter(uint64_t a1)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DKDataLogStamped.log.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DKDataLogStamped(0) + 20));
}

uint64_t DKDataLogStamped.log.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for DKDataLogStamped(0) + 20);

  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BB672E9C()
{
  if (*v0)
  {
    return 6778732;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1BB672EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB672FA4(uint64_t a1)
{
  v2 = sub_1BB673740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB672FE0(uint64_t a1)
{
  v2 = sub_1BB673740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKDataLogStamped.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DF00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB673740();
  sub_1BB6BB984();
  v12 = 0;
  sub_1BB6BA7F4();
  sub_1BB6736D8(&qword_1EBC5C548, MEMORY[0x1E6969530]);
  sub_1BB6BB744();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DKDataLogStamped(0) + 20));
    v10[15] = 1;
    sub_1BB673794();

    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKDataLogStamped.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1BB6BA7F4();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DF18);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for DKDataLogStamped(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB673740();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1BB6736D8(&qword_1EBC5C658, MEMORY[0x1E6969530]);
  v15 = v26;
  v16 = v24;
  sub_1BB6BB684();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1BB6737E8();
  sub_1BB6BB684();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1BB67383C(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB64C38C(v18);
}

uint64_t DKDataLogRecorder.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1BB6BA4A4();
  swift_allocObject();
  *(v0 + 24) = sub_1BB6BA494();
  type metadata accessor for DKLockActor();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 1;
  *(v3 + 120) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = xmmword_1BB6C6AF0;
  *(v1 + 56) = 0;
  sub_1BB6BA834();
  return v1;
}

unint64_t sub_1BB673630()
{
  result = qword_1EBC5DEE0;
  if (!qword_1EBC5DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DEE0);
  }

  return result;
}

unint64_t sub_1BB673684()
{
  result = qword_1EBC5DEE8;
  if (!qword_1EBC5DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DEE8);
  }

  return result;
}

uint64_t sub_1BB6736D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BB673740()
{
  result = qword_1EBC5DF08;
  if (!qword_1EBC5DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF08);
  }

  return result;
}

unint64_t sub_1BB673794()
{
  result = qword_1EBC5DF10;
  if (!qword_1EBC5DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF10);
  }

  return result;
}

unint64_t sub_1BB6737E8()
{
  result = qword_1EBC5DF20;
  if (!qword_1EBC5DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF20);
  }

  return result;
}

uint64_t sub_1BB67383C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKDataLogStamped(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6738A0()
{
  v1[9] = v0;
  v2 = type metadata accessor for DKDataLogStamped(0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_1BB6BAC84();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = sub_1BB6BA844();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  v1[20] = swift_task_alloc();
  v5 = sub_1BB6BA654();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB673AC4, 0, 0);
}

uint64_t sub_1BB673AC4()
{
  v0[25] = *(v0[9] + 32);

  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_1BB673B68;

  return sub_1BB645868();
}

uint64_t sub_1BB673B68()
{

  return MEMORY[0x1EEE6DFA0](sub_1BB673C80, 0, 0);
}

uint64_t sub_1BB673C80()
{
  v77 = v0;
  v1 = v0[9];
  if (!*(v1 + 40) || *(v1 + 56) > 0xA00000uLL)
  {
    v2 = v0[22];
    v71 = v0[21];
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    type metadata accessor for DKUtils();
    v75 = 0x2D79726F74736968;
    v76 = 0xE800000000000000;
    (*(v6 + 16))(v3, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKDataLogRecorder_uuid, v5);
    v7 = sub_1BB6BA804();
    v9 = v8;
    (*(v6 + 8))(v3, v5);
    v11 = sub_1BB678138(5, v7, v9, v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = MEMORY[0x1BFB10B30](v11, v13, v15, v17);
    v20 = v19;

    MEMORY[0x1BFB10B60](v18, v20);

    sub_1BB6605F4(0x2D79726F74736968, 0xE800000000000000, 6778732, 0xE300000000000000, v4);

    if ((*(v2 + 48))(v4, 1, v71) != 1)
    {
      (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
      v0[6] = 0;
      v0[7] = 0xE000000000000000;
      sub_1BB6BAC74();
      sub_1BB678228();
      sub_1BB6BB204();
      v37 = v0[24];
      v43 = v0[22];
      v42 = v0[23];
      v44 = v0[21];
      (*(v0[14] + 8))(v0[16], v0[13]);
      sub_1BB67827C();
      (*(v43 + 16))(v42, v37, v44);
      v45 = sub_1BB674544(v42);
      v27 = v0[24];
      v28 = v0[21];
      v24 = v0[22];
      goto LABEL_23;
    }

    sub_1BB598308(v0[20], &qword_1EBC5C030);
    LOBYTE(v75) = 12;
    v21 = sub_1BB6BB074();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v75, 0xD000000000000019, 0x80000001BB6CEB70, v21);
  }

  v22 = *(v1 + 40);
  if (v22)
  {
    while (1)
    {
      v23 = v0[9];
      v24 = 0xE000000000000000;
      v73 = 0;
      v74 = 0xE000000000000000;
      v25 = *(v23 + 16);
      v1 = *(v25 + 16);
      v26 = v22;

      if (v1)
      {
        v72 = v26;
        v30 = 0;
        v31 = v0[11];
        while (v30 < *(v25 + 16))
        {
          sub_1BB67383C(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v0[12]);
          sub_1BB6736D8(&qword_1EBC5DF28, type metadata accessor for DKDataLogStamped);
          v32 = sub_1BB6BA484();
          v34 = v33;
          sub_1BB64C38C(v0[12]);
          sub_1BB6BAC74();
          v35 = sub_1BB6BAC54();
          if (v36)
          {
            v75 = v35;
            v76 = v36;
            MEMORY[0x1BFB10B60](10, 0xE100000000000000);
            MEMORY[0x1BFB10B60](v75, v76);
            sub_1BB59F668(v32, v34);
          }

          else
          {
            v27 = sub_1BB59F668(v32, v34);
          }

          if (v1 == ++v30)
          {
            v38 = v73;
            v24 = v74;
            v26 = v72;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

      v38 = 0;
LABEL_16:

      v39 = sub_1BB67469C(v38, v24);
      v41 = v40;
      v0[4] = v39;
      v0[5] = v40;
      sub_1BB6781D4();
      v27 = sub_1BB6BB044();
      v46 = v41 >> 62;
      if ((v41 >> 62) <= 1)
      {
        break;
      }

      if (v46 != 2)
      {
        goto LABEL_32;
      }

      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      v49 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (!v49)
      {
        goto LABEL_30;
      }

      __break(1u);
LABEL_23:
      v50 = v0[9];
      v51 = *(v1 + 40);
      *(v1 + 40) = v45;
      v52 = v27;
      v53 = v28;

      *(v50 + 56) = 0;
      LOBYTE(v73) = 12;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_1BB6BB2F4();

      v75 = 0xD000000000000014;
      v76 = 0x80000001BB6CEBD0;
      v54 = sub_1BB6BA5C4();
      MEMORY[0x1BFB10B60](v54);

      v55 = v75;
      v56 = v76;
      v57 = sub_1BB6BB084();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v73, v55, v56, v57);

      (*(v24 + 8))(v52, v53);
      v22 = *(v1 + 40);
      if (!v22)
      {
        goto LABEL_24;
      }
    }

    if (!v46)
    {
      v45 = BYTE6(v41);
      goto LABEL_33;
    }

    LODWORD(v45) = HIDWORD(v39) - v39;
    if (__OFSUB__(HIDWORD(v39), v39))
    {
      goto LABEL_37;
    }

    v45 = v45;
LABEL_30:
    if ((v45 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    v45 = 0;
LABEL_33:
    v66 = v0[9];
    v67 = *(v66 + 56);
    v68 = __CFADD__(v67, v45);
    v69 = (v67 + v45);
    if (!v68)
    {
      *(v66 + 56) = v69;

      sub_1BB59F668(v39, v41);
      *(v23 + 16) = MEMORY[0x1E69E7CC0];

      goto LABEL_25;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1BB5A8D60();
    v58 = swift_allocError();
    *v59 = 0xD000000000000017;
    *(v59 + 8) = 0x80000001BB6CEB90;
    *(v59 + 16) = 0;
    swift_willThrow();
    v60 = v58;
    LOBYTE(v73) = 12;
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1BB6BB2F4();
    v61 = v76;
    v0[2] = v75;
    v0[3] = v61;
    MEMORY[0x1BFB10B60](0xD000000000000013, 0x80000001BB6CEBB0);
    v0[8] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C508);
    sub_1BB6BB4B4();
    v63 = v0[2];
    v62 = v0[3];
    v64 = sub_1BB6BB074();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v73, v63, v62, v64);

LABEL_25:

    v65 = *(v0[9] + 32);
    v0[27] = v65;

    v27 = sub_1BB6743F4;
    v28 = v65;
    v29 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1BB6743F4()
{
  v2 = *(v0 + 216);
  v3 = *(v2 + 112);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = v1;
    v5 = *(v2 + 120);
    *(v2 + 112) = v4;
    if (!(v5 >> 62))
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (sub_1BB6BB564())
  {
LABEL_4:
    sub_1BB5AAC24();
    *(v0 + 224) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
    sub_1BB6BAF34();
  }

LABEL_7:

  v6 = *(v0 + 8);

  return v6();
}

id sub_1BB674544(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BB6BA5F4();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1BB6BA654();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1BB6BA5B4();

    swift_willThrow();
    v9 = sub_1BB6BA654();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1BB67469C(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DFD8);
  if (swift_dynamicCast())
  {
    sub_1BB593648(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_1BB6BA544();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1BB598308(__src, &qword_1EBC5DFE0);
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
    v4 = sub_1BB6BB3C4();
  }

  sub_1BB677E84(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
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
  *&__src[0] = sub_1BB678408(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1BB59E9B0(sub_1BB67977C);
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
        sub_1BB6BA6A4();
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

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1BB67804C(v16, v14, v15);
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
      v8 = sub_1BB6BACF4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1BB6BAD24();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1BB6BB3C4();
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

    v16 = sub_1BB67804C(v16, v14, v15);
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

    v16 = sub_1BB6BAD04();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1BB6BA6B4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1BB6BA6B4();
    sub_1BB593714(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1BB593714(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1BB59F834(*&__src[0], *(&__src[0] + 1));

  sub_1BB59F668(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1BB674BBC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(type metadata accessor for DKDataLogStamped(0) - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB674C78, 0, 0);
}

uint64_t sub_1BB674C78()
{
  v0[6] = *(v0[3] + 32);

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1BB674D1C;

  return sub_1BB645868();
}

uint64_t sub_1BB674D1C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BB674E34, 0, 0);
}

uint64_t sub_1BB674E34()
{
  v1 = v0[3];
  sub_1BB67383C(v0[2], v0[5]);
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BB59D4CC(0, v2[2] + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1BB59D4CC(v4 > 1, v5 + 1, 1, v2);
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v2[2] = v5 + 1;
  sub_1BB6782C8(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
  *(v1 + 16) = v2;
  v9 = *(v8 + 32);
  v0[8] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BB674F58, v9, 0);
}

uint64_t sub_1BB674F58()
{
  v2 = *(v0 + 64);
  v3 = *(v2 + 112);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = v1;
    v5 = *(v2 + 120);
    *(v2 + 112) = v4;
    if (!(v5 >> 62))
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  if (sub_1BB6BB564())
  {
LABEL_4:
    sub_1BB5AAC24();
    *(v0 + 72) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C360);
    sub_1BB6BAF34();
  }

LABEL_7:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t DKDataLogRecorder.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKDataLogRecorder_uuid;
  v2 = sub_1BB6BA844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKDataLogRecorder.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKDataLogRecorder_uuid;
  v2 = sub_1BB6BA844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DKDataLogGenerator.logs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DKDataLogGenerator.index.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t DKDataLogGenerator.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DKDataLogStamped(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_1BB6BB484();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6753D0, 0, 0);
}

uint64_t sub_1BB6753D0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 3);
  *(v0 + 88) = v2;
  v3 = *v1;
  *(v0 + 96) = *v1;
  if (*(v2 + 16) >= *(*&v3 + 16) - 1 || v1[1] < 0.0 || (v4 = v1[2], *(v0 + 104) = v4, v4 <= 1.0e-10))
  {
    (*(*(v0 + 40) + 56))(*(v0 + 16), 1, 1, *(v0 + 32));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v5 = sub_1BB6BB994();
    v7 = v6;
    sub_1BB6BB8A4();
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1BB675574;

    return sub_1BB6761B0(v5, v7, 0, 0, 1);
  }
}

uint64_t sub_1BB675574()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1BB679808;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1BB67570C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BB67570C()
{
  v1 = *(*(v0 + 88) + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v0 + 96);
  v3 = *(v2 + 16);
  if (v1 >= v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v0 + 40);
  v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  result = sub_1BB67383C(v5 + v6 * v1, *(v0 + 56));
  v8 = v1 + 1;
  if (v1 + 1 >= v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 88);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  v15 = v5 + v6 * v8;
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  sub_1BB67383C(v15, v12);
  sub_1BB6BA744();
  v19 = v18;
  sub_1BB64C38C(v12);
  *(v17 + 8) = v19 / v9;
  sub_1BB6782C8(v11, v16);
  result = (*(v14 + 56))(v16, 0, 1, v13);
  v20 = *(v10 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(*(v0 + 88) + 16) = v22;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t DKDataLogGenerator.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

__n128 sub_1BB6758C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1BB6758E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BB65E4B8;

  return DKDataLogGenerator.next()(a1);
}

uint64_t sub_1BB675978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BB679804;

  return DKDataLogGenerator.next()(a1);
}

uint64_t DKDataLogPlayer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for DKDataLogIndex();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t DKDataLogPlayer.init()()
{
  type metadata accessor for DKDataLogIndex();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1BB675AB4()
{
  sub_1BB6BAF64();
  *(v0 + 16) = sub_1BB6BAF54();
  v2 = sub_1BB6BAF24();

  return MEMORY[0x1EEE6DFA0](sub_1BB675B48, v2, v1);
}

uint64_t sub_1BB675B48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB675BA8(void *a1)
{
  v3 = sub_1BB6BA654();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;

  sub_1BB676668(&v29);
  v7 = v29[2];
  if (!v7)
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *(v1 + 24) = v12;
  }

  v24[1] = v29;
  v25 = v1;
  v9 = *(v4 + 16);
  v8 = v4 + 16;
  v10 = v29 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v26 = *(v8 + 56);
  v27 = v9;
  v28 = v8;
  v11 = (v8 - 8);
  v12 = MEMORY[0x1E69E7CC0];
  v9(v6, v10, v3);
  while (1)
  {
    v13 = sub_1BB6785A8(v6);
    (*v11)(v6, v3);
    v14 = v13[2];
    v15 = v12[2];
    v16 = &v15[v14];
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v12[3] >> 1)
    {
      if (v13[2])
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = &v15[v14];
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1BB59D4CC(isUniquelyReferenced_nonNull_native, v18, 1, v12);
      if (v13[2])
      {
LABEL_15:
        v15 = v12[2];
        v19 = (v12[3] >> 1) - v15;
        type metadata accessor for DKDataLogStamped(0);
        if (v19 < v14)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v12[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_25;
          }

          v12[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_23;
    }

LABEL_4:
    v10 += v26;
    if (!--v7)
    {

      v1 = v25;
      goto LABEL_21;
    }

    v27(v6, v10, v3);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1BB675E48@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = *(v3 + 16);
  *a1 = *(v3 + 24);
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = v4;
}

uint64_t sub_1BB675E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if ((v5 & 0x8000000000000000) != 0 || (v6 = *(v2 + 24), v5 >= *(v6 + 16)))
  {
    v11 = type metadata accessor for DKDataLogStamped(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  else
  {
    v8 = type metadata accessor for DKDataLogStamped(0);
    v9 = *(v8 - 8);
    sub_1BB67383C(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, a2);
    result = (*(v9 + 56))(a2, 0, 1, v8);
    if (__OFADD__(v5, a1))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 16) = v5 + a1;
    }
  }

  return result;
}

uint64_t sub_1BB675FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if ((v5 & 0x8000000000000000) != 0 || (v6 = *(v2 + 24), v5 >= *(v6 + 16)))
  {
    v11 = type metadata accessor for DKDataLogStamped(0);
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  else
  {
    v8 = type metadata accessor for DKDataLogStamped(0);
    v9 = *(v8 - 8);
    sub_1BB67383C(v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, a2);
    result = (*(v9 + 56))(a2, 0, 1, v8);
    if (__OFSUB__(v5, a1))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 16) = v5 - a1;
    }
  }

  return result;
}

uint64_t DKDataLogPlayer.deinit()
{

  return v0;
}

uint64_t DKDataLogPlayer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6761B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BB6BB474();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BB6762B0, 0, 0);
}

uint64_t sub_1BB6762B0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BB6BB484();
  v5 = sub_1BB6736D8(&qword_1EBC5DFC8, MEMORY[0x1E69E8820]);
  sub_1BB6BB884();
  sub_1BB6736D8(&qword_1EBC5DFD0, MEMORY[0x1E69E87E8]);
  sub_1BB6BB494();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BB676440;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BB676440()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BB6765FC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BB6765FC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1BB676668(void **a1)
{
  v2 = *(sub_1BB6BA654() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BB693B98(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BB676710(v5);
  *a1 = v3;
}

void sub_1BB676710(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1BB6BB784();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BB6BA654();
        v6 = sub_1BB6BAE94();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1BB6BA654() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BB676B48(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1BB67683C(0, v2, 1, a1);
  }
}

void sub_1BB67683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1BB6BA654();
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_1BB6BA5C4();
      v27 = v26;
      if (v25 == sub_1BB6BA5C4() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_1BB6BB7E4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BB676B48(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1BB6BA654();
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v26;
  v27 = *(a3 + 1);
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_1BB677704(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v29], v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1BB693A54(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v29;
          v156 = a3;
          sub_1BB6939C8(v123 - 1);
          v29 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_1BB693A54(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, &v32[v33 * v30], v9);
      v31 = sub_1BB6BA5C4();
      v37 = v36;
      v38 = sub_1BB6BA5C4();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1BB6BB7E4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = &v32[v42];
      v44 = v145 * v5;
      v45 = &v32[v145 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_1BB6BA5C4();
        v52 = v51;
        if (v50 == sub_1BB6BA5C4() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_1BB6BB7E4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = a3 + 1;
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              (v149)(v139, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v149)(v57 + v6, v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1BB59D140(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_1BB59D140((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_1BB677704(&v118[*(v144 + 72) * v119], &v118[*(v144 + 72) * v120], &v118[*(v144 + 72) * v29], v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1BB693A54(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v156 = a3;
        sub_1BB6939C8(v31);
        v29 = v156;
        v77 = *(v156 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = &v60[v31 * v61];
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_1BB6BA5C4();
    v69 = v68;
    if (v5 == sub_1BB6BA5C4() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1BB6BB7E4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1BB677704(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = sub_1BB6BA654();
  v8 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 < 1)
    {
      v43 = a4 + v21;
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = a4 + v21;
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = (a2 + v41);
          v68 = (a2 + v41);
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_1BB6BA5C4();
            v51 = v50;
            if (v49 == sub_1BB6BA5C4() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_1BB6BB7E4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = (a4 + v20);
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_1BB6BA5C4();
        v31 = v30;
        if (v29 == sub_1BB6BA5C4() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_1BB6BB7E4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = v25 + v65;
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 += v65;
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_1BB677DA0(&v73, &v72, &v71);
}

uint64_t sub_1BB677DA0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1BB6BA654();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BB677E84@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BB678350(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1BB6BA534();
      swift_allocObject();
      v8 = sub_1BB6BA4E4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BB6BA694();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

_BYTE *sub_1BB677F4C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1BB678350(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1BB6784A8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1BB678524(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1BB677FE0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB67804C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1BB6BAD34();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1BFB10B90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1BB6780C8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1BB6BB304();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BB678118(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB678138(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1BB6BACD4();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

unint64_t sub_1BB6781D4()
{
  result = qword_1EBC5DF30;
  if (!qword_1EBC5DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF30);
  }

  return result;
}

unint64_t sub_1BB678228()
{
  result = qword_1EBC5DF38;
  if (!qword_1EBC5DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF38);
  }

  return result;
}

unint64_t sub_1BB67827C()
{
  result = qword_1EBC5DF40;
  if (!qword_1EBC5DF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC5DF40);
  }

  return result;
}

uint64_t sub_1BB6782C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKDataLogStamped(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB678350(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1BB678408(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1BB6BA534();
      swift_allocObject();
      sub_1BB6BA504();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BB6BA694();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1BB6784A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BB6BA534();
  swift_allocObject();
  result = sub_1BB6BA4E4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BB6BA694();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1BB678524(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BB6BA534();
  swift_allocObject();
  result = sub_1BB6BA4E4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_1BB6785A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DFB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = v41 - v3;
  v49 = type metadata accessor for DKDataLogStamped(0);
  v42 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  v9 = sub_1BB6BA4C4();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BB6BAC84();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  sub_1BB6BAC74();
  v17 = sub_1BB6BABF4();
  v47 = v12;
  v44 = v8;
  v45 = v5;
  v41[1] = a1;
  v55 = v17;
  v56 = v18;
  sub_1BB6BA4B4();
  sub_1BB678228();
  v19 = sub_1BB6BB1E4();
  (v50[1])(v11, v51);

  sub_1BB6BA434();
  swift_allocObject();
  v48 = sub_1BB6BA424();
  v20 = *(v19 + 16);
  v41[0] = v19;
  if (v20)
  {
    v51 = (v13 + 8);
    v21 = v43;
    v46 = (v42 + 56);
    v22 = (v19 + 40);
    v50 = MEMORY[0x1E69E7CC0];
    v23 = v47;
    do
    {
      v24 = *v22;
      v55 = *(v22 - 1);
      v56 = v24;
      v53 = 10;
      v54 = 0xE100000000000000;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_1BB6BB1F4();
      sub_1BB6BAC74();
      v25 = sub_1BB6BAC44();
      v27 = v26;

      (*v51)(v15, v23);
      if (v27 >> 60 != 15)
      {
        sub_1BB6736D8(&qword_1EBC5DFC0, type metadata accessor for DKDataLogStamped);
        v28 = v49;
        sub_1BB6BA414();
        (*v46)(v21, 0, 1, v28);
        v29 = v44;
        sub_1BB6782C8(v21, v44);
        sub_1BB67383C(v29, v45);
        v30 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1BB59D4CC(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v50 = v30;
        if (v32 >= v31 >> 1)
        {
          v50 = sub_1BB59D4CC(v31 > 1, v32 + 1, 1, v50);
        }

        sub_1BB593714(v25, v27);
        sub_1BB64C38C(v44);
        v33 = v50;
        v50[2] = v32 + 1;
        sub_1BB6782C8(v45, v33 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32);
        v21 = v43;
        v23 = v47;
      }

      v22 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v52[0]) = 12;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1BB6BB2F4();

  v55 = 0x2064616552;
  v56 = 0xE500000000000000;
  v34 = *(v41[0] + 16);

  v53 = v34;
  v35 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v35);

  MEMORY[0x1BFB10B60](0x662073656E696C20, 0xEC000000206D6F72);
  v36 = sub_1BB6BA5C4();
  MEMORY[0x1BFB10B60](v36);

  v37 = v55;
  v38 = v56;
  v39 = sub_1BB6BB084();
  _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v52, v37, v38, v39);

  return v50;
}

unint64_t sub_1BB678CE8()
{
  result = qword_1EBC5DF48;
  if (!qword_1EBC5DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF48);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1BB678E28()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BB678EC4()
{
  result = sub_1BB6BA844();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKDataLogRecorder.save()()
{
  v4 = (*(*v0 + 264) + **(*v0 + 264));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46DC;

  return v4();
}

uint64_t dispatch thunk of DKDataLogRecorder.log(log:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46DC;

  return v6(a1);
}

uint64_t dispatch thunk of DKDataLogPlayer.openVideosMetafile()()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B3D14;

  return v4();
}

unint64_t sub_1BB679468()
{
  result = qword_1EBC5DF70;
  if (!qword_1EBC5DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF70);
  }

  return result;
}

unint64_t sub_1BB6794C0()
{
  result = qword_1EBC5DF78;
  if (!qword_1EBC5DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF78);
  }

  return result;
}

unint64_t sub_1BB679518()
{
  result = qword_1EBC5DF80;
  if (!qword_1EBC5DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF80);
  }

  return result;
}

unint64_t sub_1BB679570()
{
  result = qword_1EBC5DF88;
  if (!qword_1EBC5DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF88);
  }

  return result;
}

unint64_t sub_1BB6795C8()
{
  result = qword_1EBC5DF90;
  if (!qword_1EBC5DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF90);
  }

  return result;
}

unint64_t sub_1BB679620()
{
  result = qword_1EBC5DF98;
  if (!qword_1EBC5DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DF98);
  }

  return result;
}

unint64_t sub_1BB679678()
{
  result = qword_1EBC5DFA0;
  if (!qword_1EBC5DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DFA0);
  }

  return result;
}

unint64_t sub_1BB6796D0()
{
  result = qword_1EBC5DFA8;
  if (!qword_1EBC5DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DFA8);
  }

  return result;
}

unint64_t sub_1BB679728()
{
  result = qword_1EBC5DFB0;
  if (!qword_1EBC5DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5DFB0);
  }

  return result;
}

void *sub_1BB67977C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1BB677FE0(sub_1BB6797E4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t DKFramingEngine.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DKFramingEngine.init(config:)(a1);
  return v2;
}

double *DKFramingEngine.HorizontalDeadband.__allocating_init(left:right:center:centerTight:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  return result;
}

double *DKFramingEngine.HorizontalDeadband.init(left:right:center:centerTight:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  v8[9] = a8;
  return result;
}

double *DKFramingEngine.VerticalDeadband.__allocating_init(top:center:bottom:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

double *DKFramingEngine.VerticalDeadband.init(top:center:bottom:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  result = v6;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return result;
}

void *sub_1BB6799DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E2A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BC7E0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E2B0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1BB6C71D0;
  *(v2 + 32) = 1;
  v3 = *(v0 + 64);
  *(v2 + 40) = v3[1];
  *(v2 + 56) = 0;
  *(v2 + 64) = v3[3];
  *(v2 + 80) = 3;
  *(v2 + 88) = v3[4];
  *(v2 + 104) = 2;
  *(v2 + 112) = v3[2];
  v4 = sub_1BB5B0168(v2);
  swift_setDeallocating();
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1BB6C71D0;
  *(v5 + 32) = 1;
  v6 = *(v0 + 72);
  *(v5 + 40) = v6[1];
  *(v5 + 56) = 0;
  *(v5 + 64) = v6[3];
  *(v5 + 80) = 3;
  *(v5 + 88) = v6[4];
  *(v5 + 104) = 2;
  *(v5 + 112) = v6[2];
  v7 = sub_1BB5B0168(v5);
  swift_setDeallocating();
  *(inited + 56) = v7;
  v8 = sub_1BB5B0190(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E2B8);
  swift_arrayDestroy();
  return v8;
}

void *sub_1BB679B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BC7E0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E298);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1BB6BC7F0;
  *(v2 + 32) = 1;
  v3 = *(v0 + 80);
  *(v2 + 40) = v3[1];
  *(v2 + 56) = 0;
  *(v2 + 64) = v3[2];
  *(v2 + 80) = 2;
  *(v2 + 88) = v3[3];
  v4 = sub_1BB5B01B8(v2);
  swift_setDeallocating();
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1BB6BC7F0;
  *(v5 + 32) = 1;
  v6 = *(v0 + 88);
  *(v5 + 40) = v6[1];
  *(v5 + 56) = 0;
  *(v5 + 64) = v6[2];
  *(v5 + 80) = 2;
  *(v5 + 88) = v6[3];
  v7 = sub_1BB5B01B8(v5);
  swift_setDeallocating();
  *(inited + 56) = v7;
  v8 = sub_1BB5B02D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E2A0);
  swift_arrayDestroy();
  return v8;
}

uint64_t DKFramingEngine.Config.deinit()
{

  return v0;
}

uint64_t DKFramingEngine.Config.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB679D98()
{
  *(v0 + 16) = xmmword_1BB6C71E0;
  *(v0 + 32) = xmmword_1BB6C71F0;
  *(v0 + 48) = xmmword_1BB6C7200;
  type metadata accessor for DKFramingEngine.HorizontalDeadband();
  v1 = swift_allocObject();
  v1[1] = xmmword_1BB6C7210;
  v1[2] = xmmword_1BB6C7220;
  v1[3] = xmmword_1BB6C7230;
  v1[4] = xmmword_1BB6C7240;
  *(v0 + 64) = v1;
  v2 = swift_allocObject();
  v2[1] = xmmword_1BB6C7250;
  v2[2] = xmmword_1BB6C7260;
  v2[3] = xmmword_1BB6C7270;
  v2[4] = xmmword_1BB6C7280;
  *(v0 + 72) = v2;
  type metadata accessor for DKFramingEngine.VerticalDeadband();
  v3 = swift_allocObject();
  v3[1] = xmmword_1BB6C7290;
  v3[2] = xmmword_1BB6C7280;
  v3[3] = xmmword_1BB6C72A0;
  *(v0 + 80) = v3;
  v4 = swift_allocObject();
  v4[1] = xmmword_1BB6C72B0;
  v4[2] = xmmword_1BB6C7280;
  v4[3] = xmmword_1BB6C72C0;
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1BB5B1594(&unk_1F3A49C30);
  return v0;
}

uint64_t sub_1BB679EEC()
{
  if (*v0)
  {
    return 0x7469617274726F70;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t sub_1BB679F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70616373646E616CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB67A010(uint64_t a1)
{
  v2 = sub_1BB67CE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67A04C(uint64_t a1)
{
  v2 = sub_1BB67CE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67A088(uint64_t a1)
{
  v2 = sub_1BB67CF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67A0C4(uint64_t a1)
{
  v2 = sub_1BB67CF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67A100(uint64_t a1)
{
  v2 = sub_1BB67CED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67A13C(uint64_t a1)
{
  v2 = sub_1BB67CED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFramingEngine.Orientation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DFE8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DFF0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DFF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67CE80();
  sub_1BB6BB984();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BB67CED4();
    v14 = v18;
    sub_1BB6BB6B4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BB67CF28();
    sub_1BB6BB6B4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t DKFramingEngine.Orientation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E018);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E020);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E028);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67CE80();
  v12 = v31;
  sub_1BB6BB974();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1BB6BB694();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1BB5D7128();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1BB6BB3B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v22 = &type metadata for DKFramingEngine.Orientation;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1BB67CED4();
        sub_1BB6BB5E4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1BB67CF28();
        sub_1BB6BB5E4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1BB67A944(uint64_t a1)
{
  v2 = sub_1BB67D024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67A980(uint64_t a1)
{
  v2 = sub_1BB67D024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67A9BC()
{
  if (*v0)
  {
    return 0x6C61756E616DLL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1BB67A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v6 || (sub_1BB6BB7E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61756E616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BB6BB7E4();

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

uint64_t sub_1BB67AAD8(uint64_t a1)
{
  v2 = sub_1BB67CF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67AB14(uint64_t a1)
{
  v2 = sub_1BB67CF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67AB50(uint64_t a1)
{
  v2 = sub_1BB67CFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67AB8C(uint64_t a1)
{
  v2 = sub_1BB67CFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFramingEngine.Mode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E030);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E038);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E040);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67CF7C();
  sub_1BB6BB984();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BB67CFD0();
    v14 = v18;
    sub_1BB6BB6B4();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BB67D024();
    sub_1BB6BB6B4();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t DKFramingEngine.Mode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E060);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E068);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E070);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67CF7C();
  v12 = v31;
  sub_1BB6BB974();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1BB6BB694();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1BB5D7128();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1BB6BB3B4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v22 = &type metadata for DKFramingEngine.Mode;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1BB67CFD0();
        sub_1BB6BB5E4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1BB67D024();
        sub_1BB6BB5E4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1BB67B364(uint64_t a1)
{
  v2 = sub_1BB67D1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67B3A0(uint64_t a1)
{
  v2 = sub_1BB67D1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67B3DC(uint64_t a1)
{
  v2 = sub_1BB67D0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67B418(uint64_t a1)
{
  v2 = sub_1BB67D0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67B454()
{
  v1 = 0x7265746E6563;
  v2 = 0x7468676972;
  if (*v0 != 2)
  {
    v2 = 0x69547265746E6563;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

uint64_t sub_1BB67B4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6806B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB67B4F0(uint64_t a1)
{
  v2 = sub_1BB67D078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67B52C(uint64_t a1)
{
  v2 = sub_1BB67D078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67B568(uint64_t a1)
{
  v2 = sub_1BB67D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67B5A4(uint64_t a1)
{
  v2 = sub_1BB67D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67B5E0(uint64_t a1)
{
  v2 = sub_1BB67D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67B61C(uint64_t a1)
{
  v2 = sub_1BB67D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFramingEngine.HorizontalFraming.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E078);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E080);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E088);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E090);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E098);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67D078();
  sub_1BB6BB984();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BB67D120();
      v18 = v27;
      sub_1BB6BB6B4();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BB67D0CC();
      v18 = v30;
      sub_1BB6BB6B4();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BB67D174();
    v18 = v24;
    sub_1BB6BB6B4();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BB67D1C8();
  sub_1BB6BB6B4();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t DKFramingEngine.HorizontalFraming.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0C8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0D0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0D8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0E0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB67D078();
  v15 = v46;
  sub_1BB6BB974();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BB6BB694();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BB5D7120();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BB6BB3B4();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v28 = &type metadata for DKFramingEngine.HorizontalFraming;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BB67D174();
        v32 = v35;
        sub_1BB6BB5E4();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BB67D1C8();
        v25 = v35;
        sub_1BB6BB5E4();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BB67D120();
      v31 = v35;
      sub_1BB6BB5E4();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BB67D0CC();
      v33 = v35;
      sub_1BB6BB5E4();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1BB67C130(uint64_t a1)
{
  v2 = sub_1BB67D270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67C16C(uint64_t a1)
{
  v2 = sub_1BB67D270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67C1A8(uint64_t a1)
{
  v2 = sub_1BB67D318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67C1E4(uint64_t a1)
{
  v2 = sub_1BB67D318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67C220()
{
  v1 = 7368564;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74746F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_1BB67C26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB680814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB67C294(uint64_t a1)
{
  v2 = sub_1BB67D21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67C2D0(uint64_t a1)
{
  v2 = sub_1BB67D21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB67C30C(uint64_t a1)
{
  v2 = sub_1BB67D2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB67C348(uint64_t a1)
{
  v2 = sub_1BB67D2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKFramingEngine.VerticalFraming.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0F0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E0F8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E100);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E108);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB67D21C();
  sub_1BB6BB984();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BB67D2C4();
      v9 = v21;
      sub_1BB6BB6B4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BB67D270();
      v9 = v24;
      sub_1BB6BB6B4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BB67D318();
    sub_1BB6BB6B4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DKFramingEngine.VerticalFraming.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E130);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E138);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E140);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E148);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB67D21C();
  v15 = v36;
  sub_1BB6BB974();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BB6BB694();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BB5D7124();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BB6BB3B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v24 = &type metadata for DKFramingEngine.VerticalFraming;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BB67D2C4();
          sub_1BB6BB5E4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BB67D270();
          v26 = v17;
          sub_1BB6BB5E4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BB67D318();
        sub_1BB6BB5E4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t DKFramingEngine.init(config:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = sub_1BB5B0190(MEMORY[0x1E69E7CC0]);
  *(v2 + 32) = sub_1BB5B02D0(v4);
  *(v2 + 40) = 0x1000000;
  *(v2 + 44) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v2 + 96) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 112) = _Q0;
  sub_1BB6BA724();
  sub_1BB6BA724();
  sub_1BB6BA724();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera) = 0;
  sub_1BB6BA834();
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_aspectRatioOverridden) = 0;
  *(v2 + 16) = a1;

  *(v2 + 24) = sub_1BB6799DC();

  *(v2 + 32) = sub_1BB679B7C();

  v11 = *(v2 + 24);
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v2 + 42);
  result = sub_1BB6A36B0(*(v2 + 44));
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(*(v11 + 56) + 8 * result);
  if (!*(v14 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1BB6A36B4(v12);
  if ((v15 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v2 + 48) = *(*(v14 + 56) + 16 * result);
  v16 = *(v2 + 32);
  if (!*(v16 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(v2 + 43);
  result = sub_1BB6A36B0(*(v2 + 44));
  if ((v18 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = *(*(v16 + 56) + 8 * result);
  if (!*(v19 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1BB6A36B4(v17);
  if (v20)
  {
    v21 = *(*(v19 + 56) + 16 * result);

    *(v2 + 64) = v21;
    return v2;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1BB67CE80()
{
  result = qword_1EBC5E000;
  if (!qword_1EBC5E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E000);
  }

  return result;
}

unint64_t sub_1BB67CED4()
{
  result = qword_1EBC5E008;
  if (!qword_1EBC5E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E008);
  }

  return result;
}

unint64_t sub_1BB67CF28()
{
  result = qword_1EBC5E010;
  if (!qword_1EBC5E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E010);
  }

  return result;
}

unint64_t sub_1BB67CF7C()
{
  result = qword_1EBC5E048;
  if (!qword_1EBC5E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E048);
  }

  return result;
}

unint64_t sub_1BB67CFD0()
{
  result = qword_1EBC5E050;
  if (!qword_1EBC5E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E050);
  }

  return result;
}

unint64_t sub_1BB67D024()
{
  result = qword_1EBC5E058;
  if (!qword_1EBC5E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E058);
  }

  return result;
}

unint64_t sub_1BB67D078()
{
  result = qword_1EBC5E0A0;
  if (!qword_1EBC5E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E0A0);
  }

  return result;
}

unint64_t sub_1BB67D0CC()
{
  result = qword_1EBC5E0A8;
  if (!qword_1EBC5E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E0A8);
  }

  return result;
}

unint64_t sub_1BB67D120()
{
  result = qword_1EBC5E0B0;
  if (!qword_1EBC5E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E0B0);
  }

  return result;
}

unint64_t sub_1BB67D174()
{
  result = qword_1EBC5E0B8;
  if (!qword_1EBC5E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E0B8);
  }

  return result;
}

unint64_t sub_1BB67D1C8()
{
  result = qword_1EBC5E0C0;
  if (!qword_1EBC5E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E0C0);
  }

  return result;
}

unint64_t sub_1BB67D21C()
{
  result = qword_1EBC5E110;
  if (!qword_1EBC5E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E110);
  }

  return result;
}

unint64_t sub_1BB67D270()
{
  result = qword_1EBC5E118;
  if (!qword_1EBC5E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E118);
  }

  return result;
}

unint64_t sub_1BB67D2C4()
{
  result = qword_1EBC5E120;
  if (!qword_1EBC5E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E120);
  }

  return result;
}

unint64_t sub_1BB67D318()
{
  result = qword_1EBC5E128;
  if (!qword_1EBC5E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E128);
  }

  return result;
}

void sub_1BB67D36C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - v7;
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for DKCamera();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB67DADC(a1);
  if (*(v1 + 41))
  {
    return;
  }

  if ((*(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingMode) | 4) != 5)
  {
    sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v17, &qword_1EBC5BCB0);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_1BB598308(v17, &qword_1EBC5BCB0);
      return;
    }

    v21 = v57;
    sub_1BB5981C8(v17, v57);
    v22 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
    if (v22)
    {
      if (v22 >> 62)
      {
        if (sub_1BB6BB564())
        {
LABEL_11:
          v51 = v22 >> 62;
          v52 = v22;
          if ((v22 & 0xC000000000000001) != 0)
          {

            v23 = MEMORY[0x1BFB111F0](0, v22);
          }

          else
          {
            if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v23 = *(v22 + 32);
          }

          v24 = *(v9 + 16);
          v49 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_currentSubjectUUID;
          v24(v14, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_currentSubjectUUID, v8);
          v48 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid;
          v50 = v24;
          v24(v11, v23 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v8);
          sub_1BB680924();
          v25 = sub_1BB6BABE4();
          v26 = v23;
          v27 = *(v9 + 8);
          v27(v11, v8);
          v27(v14, v8);
          if ((v25 & 1) == 0)
          {
            v28 = v49;
            v27((v2 + v49), v8);
            v50(v2 + v28, v26 + v48, v8);
            (*(v55 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastSubjectChangeDate, a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v56);
          }

          v29 = v57;
          v64 = *(v57 + 1);
          sub_1BB67DF18(&v64);
          v30 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_type);
          *(v2 + 40) = v30;
          if ((v30 & 0xFE) == 2)
          {
            v58 = 0;
            v31 = &v58;
          }

          else
          {
            v63 = 1;
            v31 = &v63;
          }

          sub_1BB67E228(v31);
          if (v51)
          {
            v32 = sub_1BB6BB564();
          }

          else
          {
            v32 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v32 < 2)
          {
            if ((sub_1BB67E434(v26) & 1) == 0)
            {
              if (*(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motionClassification))
              {
                v34 = v29;
              }

              else
              {
                v52 = v26;
                LODWORD(v51) = (0x10200u >> (8 * *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceDirection))) & 3;
                v35 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
                v36 = v55;
                v37 = v56;
                v38 = *(v55 + 16);
                v39 = v53;
                v38(v53, a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v56);
                v40 = v54;
                v38(v54, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastHorizontalReframeDate, v37);
                sub_1BB6BA744();
                v42 = v41;
                v43 = *(v36 + 8);
                v43(v40, v37);
                v43(v39, v37);
                v38(v39, a1 + v35, v37);
                v38(v40, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastSubjectChangeDate, v37);
                sub_1BB6BA744();
                v45 = v44;
                v43(v40, v37);
                v43(v39, v37);
                v46 = *(v2 + 16);
                if ((v51 - 1) >= 2)
                {
                  v34 = v57;
                  if (v46[2] < v42 && v46[4] < v45)
                  {
                    v61 = v51;
                    v29 = v57;
                    v33 = &v61;
                    goto LABEL_26;
                  }
                }

                else
                {
                  v34 = v57;
                  if (v46[3] < v42 && v46[4] < v45)
                  {
                    v62 = v51;
                    v29 = v57;
                    v33 = &v62;
                    goto LABEL_26;
                  }
                }
              }

              sub_1BB59822C(v34);

              return;
            }

            v60 = 0;
            v33 = &v60;
          }

          else
          {
            v59 = 3;
            v33 = &v59;
          }

LABEL_26:
          sub_1BB67E01C(v33);

          sub_1BB59822C(v29);
          return;
        }
      }

      else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    sub_1BB59822C(v21);
    return;
  }

  sub_1BB67DE84();
}

void sub_1BB67DADC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  v6 = type metadata accessor for DKCamera();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_aspectRatioOverridden) & 1) == 0)
  {
    v10 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID + 8);
    if (v10)
    {
      v11 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
      sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v5, &qword_1EBC5BCB0);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1BB598308(v5, &qword_1EBC5BCB0);
        return;
      }

      sub_1BB5981C8(v5, v9);
      v12 = &v9[*(v6 + 40)];
      if (v12[2])
      {
        goto LABEL_11;
      }

      v14 = *v12;
      v13 = v12[1];
      v24 = 3;
      v22 = 0;
      v23 = 0xE000000000000000;

      sub_1BB6BB2F4();
      MEMORY[0x1BFB10B60](0xD000000000000016, 0x80000001BB6CF1D0);
      MEMORY[0x1BFB10B60](v11, v10);
      MEMORY[0x1BFB10B60](32, 0xE100000000000000);
      v21[23] = *(v1 + 44);
      sub_1BB6BB4B4();
      v15 = v22;
      v16 = v23;
      v17 = sub_1BB6BB064();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v24, v15, v16, v17);

      if (v11 == 0xD000000000000012 && v10 == 0x80000001BB6CF1F0 || (sub_1BB6BB7E4() & 1) != 0)
      {

        v18 = 1.0;
        v19 = 0.5;
      }

      else if (v11 == 0xD000000000000011 && v10 == 0x80000001BB6CF210 || (sub_1BB6BB7E4() & 1) != 0)
      {

        v18 = 1.0;
        v19 = 1.0;
      }

      else
      {
        if (v11 == 0xD000000000000011 && v10 == 0x80000001BB6CF230)
        {
        }

        else
        {
          v20 = sub_1BB6BB7E4();

          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        if (*(v1 + 44) != 1)
        {
          goto LABEL_11;
        }

        v18 = 16.0;
        v19 = 9.0;
      }

      sub_1BB67E674(0, v18, v19, v14, v13);
LABEL_11:
      sub_1BB59822C(v9);
    }
  }
}

uint64_t sub_1BB67DE84()
{
  v7 = 0;
  sub_1BB67E01C(&v7);
  if (*(v0 + 40) == 3)
  {
    v4 = 0;
    v1 = &v4;
  }

  else
  {
    v6 = 1;
    v1 = &v6;
  }

  sub_1BB67E228(v1);
  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera) = 0;
  v5 = 3;
  v2 = sub_1BB6BB084();
  return _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v5, 0x7266207465736552, 0xED0000676E696D61, v2);
}

unsigned __int8 *sub_1BB67DF18(unsigned __int8 *result)
{
  v2 = *result - 1;
  if (v2 < 2 != v1[44])
  {
    v1[44] = v2 < 2;
    LOBYTE(v6) = v1[42];
    sub_1BB67E01C(&v6);
    LOBYTE(v6) = v1[43];
    sub_1BB67E228(&v6);
    v8 = 3;
    v6 = 0;
    v7 = 0xE000000000000000;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD00000000000001BLL, 0x80000001BB6CF1B0);
    sub_1BB6BB4B4();
    v3 = v6;
    v4 = v7;
    v5 = sub_1BB6BB084();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v8, v3, v4, v5);
  }

  return result;
}

uint64_t sub_1BB67E01C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(v2 + 42) != v9)
  {
    sub_1BB6BA7E4();
    result = (*(v5 + 40))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastHorizontalReframeDate, v8, v4);
    *(v2 + 42) = v9;
    v10 = *(v2 + 24);
    if (*(v10 + 16))
    {
      result = sub_1BB6A36B0(*(v2 + 44));
      if (v11)
      {
        v12 = *(*(v10 + 56) + 8 * result);
        if (*(v12 + 16))
        {
          result = sub_1BB6A36B4(v9);
          if (v13)
          {
            *(v2 + 48) = *(*(v12 + 56) + 16 * result);
            v20 = 3;
            v18 = 0;
            v19 = 0xE000000000000000;
            sub_1BB6BB2F4();
            MEMORY[0x1BFB10B60](0xD000000000000020, 0x80000001BB6CF2E0);
            HIBYTE(v17) = *(v2 + 42);
            sub_1BB6BB4B4();
            MEMORY[0x1BFB10B60](544175136, 0xE400000000000000);
            HIBYTE(v17) = v9;
            sub_1BB6BB4B4();
            v14 = v18;
            v15 = v19;
            v16 = sub_1BB6BB084();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v20, v14, v15, v16);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BB67E228(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(v2 + 43) != v9)
  {
    sub_1BB6BA7E4();
    result = (*(v5 + 40))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastVerticalReframeDate, v8, v4);
    *(v2 + 43) = v9;
    v10 = *(v2 + 32);
    if (*(v10 + 16))
    {
      result = sub_1BB6A36B0(*(v2 + 44));
      if (v11)
      {
        v12 = *(*(v10 + 56) + 8 * result);
        if (*(v12 + 16))
        {
          result = sub_1BB6A36B4(v9);
          if (v13)
          {
            *(v2 + 64) = *(*(v12 + 56) + 16 * result);
            v20 = 3;
            v18 = 0;
            v19 = 0xE000000000000000;
            sub_1BB6BB2F4();
            MEMORY[0x1BFB10B60](0xD00000000000001ELL, 0x80000001BB6CF310);
            HIBYTE(v17) = *(v2 + 43);
            sub_1BB6BB4B4();
            MEMORY[0x1BFB10B60](544175136, 0xE400000000000000);
            HIBYTE(v17) = v9;
            sub_1BB6BB4B4();
            v14 = v18;
            v15 = v19;
            v16 = sub_1BB6BB084();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v20, v14, v15, v16);
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1BB67E434(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, &v22 - v4, &qword_1EBC5BCB8);
  v6 = type metadata accessor for DKMotion3();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result)
  {
    sub_1BB598308(v5, &qword_1EBC5BCB8);
    return 0;
  }

  else
  {
    v8 = *&v5[*(v6 + 20)];
    if (*(v8 + 16) < 3uLL)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v8 + 48);
      sub_1BB598308(v5, &qword_1EBC5BCB8);
      v10 = *(v1 + 16);
      v11 = *(v10 + 48);
      v12 = *(v10 + 56);
      v13 = v11 - v12;
      v14 = v11 + v12;
      v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera;
      v16 = v9 < v13 || v14 < v9;
      if (v16 && v9 < v13 != *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera))
      {
        *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera) = v9 < v13;
        v25 = 3;
        v23 = 0;
        v24 = 0xE000000000000000;
        sub_1BB6BB2F4();

        v23 = 0xD000000000000023;
        v24 = 0x80000001BB6CF180;
        if (*(v1 + v15))
        {
          v17 = 1702195828;
        }

        else
        {
          v17 = 0x65736C6166;
        }

        if (*(v1 + v15))
        {
          v18 = 0xE400000000000000;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        MEMORY[0x1BFB10B60](v17, v18);

        v19 = v23;
        v20 = v24;
        v21 = sub_1BB6BB084();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v25, v19, v20, v21);

        v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastCloseToCamera;
      }

      return *(v1 + v15);
    }
  }

  return result;
}

void sub_1BB67E674(char a1, double a2, double a3, double a4, double a5)
{
  if (*(v5 + 44))
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (*(v5 + 44))
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  v12 = a2 / a3;
  if (a2 / a3 >= v11 / v10)
  {
    v18 = v11 / v12;
    v16 = (v10 - v18) * 0.5 / v10;
    v15 = v18 / v10;
    v17 = 1.0;
    v14 = 0.0;
  }

  else
  {
    v13 = v12 * v10;
    v14 = (v11 - v13) * 0.5 / v11;
    v15 = 1.0;
    v16 = 0.0;
    v17 = v13 / v11;
  }

  v21.origin.x = v14;
  v21.origin.y = v16;
  v21.size.width = v17;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, *(v5 + 80)))
  {
    sub_1BB67E880(a1 & 1, v14, v16, v17, v15);
    if (v6)
    {
      return;
    }

    v20 = 3;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0xD000000000000018, 0x80000001BB6CF330);
    type metadata accessor for CGSize(0);
    sub_1BB6BB4B4();
    MEMORY[0x1BFB10B60](0x696F7220646E6120, 0xEC000000206F7420);
    type metadata accessor for CGRect(0);
    sub_1BB6BB4B4();
    v19 = sub_1BB6BB084();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v20, 0, 0xE000000000000000, v19);
  }

  if (a1)
  {
    *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_aspectRatioOverridden) = 1;
  }
}

void sub_1BB67E880(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v7 + 96);
  if (*(v8 + 16))
  {
    v14 = sub_1BB6A36B0(*(v6 + 44));
    if (v15)
    {
      v16 = *(v7 + 96);
      if (*(v16 + 16))
      {
        v17 = *(*(v8 + 56) + 16 * v14);
        v18 = sub_1BB6A36B0(*(v6 + 44));
        if (v19)
        {
          v20 = *(*(v16 + 56) + 16 * v18 + 8);
          v98.origin.x = a2;
          v98.origin.y = a3;
          v98.size.width = a4;
          v98.size.height = a5;
          if (CGRectGetMinX(v98) < 0.0 || (v99.origin.x = a2, v99.origin.y = a3, v99.size.width = a4, v99.size.height = a5, CGRectGetMinX(v99) > 1.0) || (v100.origin.x = a2, v100.origin.y = a3, v100.size.width = a4, v100.size.height = a5, MaxX = CGRectGetMaxX(v100), v101.origin.x = a2, v101.origin.y = a3, v101.size.width = a4, v101.size.height = a5, MaxX <= CGRectGetMinX(v101)) || (v102.origin.x = a2, v102.origin.y = a3, v102.size.width = a4, v102.size.height = a5, CGRectGetMaxX(v102) > 1.0) || (v103.origin.x = a2, v103.origin.y = a3, v103.size.width = a4, v103.size.height = a5, CGRectGetMinY(v103) < 0.0) || (v104.origin.x = a2, v104.origin.y = a3, v104.size.width = a4, v104.size.height = a5, CGRectGetMinY(v104) > 1.0) || (v105.origin.x = a2, v105.origin.y = a3, v105.size.width = a4, v105.size.height = a5, MaxY = CGRectGetMaxY(v105), v106.origin.x = a2, v106.origin.y = a3, v106.size.width = a4, v106.size.height = a5, MaxY <= CGRectGetMinY(v106)) || (v107.origin.x = a2, v107.origin.y = a3, v107.size.width = a4, v107.size.height = a5, CGRectGetMaxY(v107) > 1.0))
          {
            v23 = 0x80000001BB6CF2B0;
            v24 = 0xD000000000000029;
LABEL_14:
            sub_1BB5A8D60();
            swift_allocError();
            *v25 = v24;
            *(v25 + 8) = v23;
            *(v25 + 16) = 2;
            swift_willThrow();
            return;
          }

          v108.origin.x = a2;
          v108.origin.y = a3;
          v108.size.width = a4;
          v108.size.height = a5;
          if (CGRectGetWidth(v108) < v17 || (v109.origin.x = a2, v109.origin.y = a3, v109.size.width = a4, v109.size.height = a5, CGRectGetHeight(v109) < v20))
          {
            LOBYTE(v91) = 3;
            sub_1BB6BB2F4();

            v93 = -2.31584178e77;
            v94 = 0x80000001BB6CF250;
            v26 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v26);

            MEMORY[0x1BFB10B60](120, 0xE100000000000000);
            v27 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v27);

            v28 = sub_1BB6BB084();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v91, 0xD000000000000028, 0x80000001BB6CF250, v28);

            v93 = 0.0;
            v94 = 0xE000000000000000;
            sub_1BB6BB2F4();

            v93 = -2.31584178e77;
            v94 = 0x80000001BB6CF280;
            v29 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v29);

            MEMORY[0x1BFB10B60](120, 0xE100000000000000);
            v30 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v30);

            v24 = *&v93;
            v23 = v94;
            goto LABEL_14;
          }

          v31 = 0;
          *(v6 + 80) = a2;
          *(v6 + 88) = a3;
          *(v6 + 96) = a4;
          *(v6 + 104) = a5;
          do
          {
            v32 = *(v6 + 32);
            if (*(v32 + 16))
            {
              v33 = byte_1F3A484D8[v31 + 32];
              v34 = sub_1BB6A36B0(*(v6 + 44));
              if (v35)
              {
                v36 = *(*(v32 + 56) + 8 * v34);
                if (*(v36 + 16))
                {
                  v37 = sub_1BB6A36B4(v33);
                  if (v38)
                  {
                    v39 = (*(v36 + 56) + 16 * v37);
                    v88 = *v39;
                    v97 = v39[1];
                    v110.origin.x = a2;
                    v110.origin.y = a3;
                    v110.size.width = a4;
                    v110.size.height = a5;
                    v40 = CGRectGetMaxY(v110);
                    v111.origin.x = a2;
                    v111.origin.y = a3;
                    v111.size.width = a4;
                    v111.size.height = a5;
                    MinY = CGRectGetMinY(v111);
                    v112.origin.x = a2;
                    v112.origin.y = a3;
                    v112.size.width = a4;
                    v112.size.height = a5;
                    v42 = CGRectGetMinY(v112);
                    v113.origin.x = a2;
                    v113.origin.y = a3;
                    v113.size.width = a4;
                    v113.size.height = a5;
                    v43 = CGRectGetMinY(v113);
                    v44 = *(v6 + 44);
                    v45 = sub_1BB5C0134();
                    v46 = sub_1BB63D6B8(&v91, v44);
                    if (*v47)
                    {
                      v49 = sub_1BB63D734(v90, v33);
                      if (*(v48 + 16) != 1)
                      {
                        v50 = v43 + v97 * (v40 - MinY);
                        *v48 = v42 + v88 * (v40 - MinY);
                        *(v48 + 8) = v50;
                      }

                      (v49)(v90, 0);
                    }

                    (v46)(&v91, 0);
                    (v45)(&v93, 0);
                  }
                }
              }
            }

            ++v31;
          }

          while (v31 != 3);
          for (i = 0; i != 4; ++i)
          {
            v52 = *(v6 + 24);
            if (*(v52 + 16))
            {
              v53 = byte_1F3A48500[i + 32];
              v54 = sub_1BB6A36B0(*(v6 + 44));
              if (v55)
              {
                v56 = *(*(v52 + 56) + 8 * v54);
                if (*(v56 + 16))
                {
                  v57 = sub_1BB6A36B4(v53);
                  if (v58)
                  {
                    v59 = (*(v56 + 56) + 16 * v57);
                    v89 = *v59;
                    v97 = v59[1];
                    v114.origin.x = a2;
                    v114.origin.y = a3;
                    v114.size.width = a4;
                    v114.size.height = a5;
                    v60 = CGRectGetMaxX(v114);
                    v115.origin.x = a2;
                    v115.origin.y = a3;
                    v115.size.width = a4;
                    v115.size.height = a5;
                    MinX = CGRectGetMinX(v115);
                    v116.origin.x = a2;
                    v116.origin.y = a3;
                    v116.size.width = a4;
                    v116.size.height = a5;
                    v62 = CGRectGetMinX(v116);
                    v117.origin.x = a2;
                    v117.origin.y = a3;
                    v117.size.width = a4;
                    v117.size.height = a5;
                    v63 = CGRectGetMinX(v117);
                    v64 = *(v6 + 44);
                    v65 = sub_1BB5C00FC();
                    v66 = sub_1BB63D7AC(&v91, v64);
                    if (*v67)
                    {
                      v69 = sub_1BB63D824(v90, v53);
                      if (*(v68 + 16) != 1)
                      {
                        v70 = v63 + v97 * (v60 - MinX);
                        *v68 = v62 + v89 * (v60 - MinX);
                        *(v68 + 8) = v70;
                      }

                      (v69)(v90, 0);
                    }

                    (v66)(&v91, 0);
                    (v65)(&v93, 0);
                  }
                }
              }
            }
          }

          v71 = *(v6 + 24);
          if (*(v71 + 16))
          {
            v72 = *(v6 + 42);
            v73 = sub_1BB6A36B0(*(v6 + 44));
            if (v74)
            {
              v75 = *(*(v71 + 56) + 8 * v73);
              if (*(v75 + 16))
              {
                v76 = sub_1BB6A36B4(v72);
                if (v77)
                {
                  *(v6 + 48) = *(*(v75 + 56) + 16 * v76);
                  v78 = *(v6 + 32);
                  if (*(v78 + 16))
                  {
                    v79 = *(v6 + 43);
                    v80 = sub_1BB6A36B0(*(v6 + 44));
                    if (v81)
                    {
                      v82 = *(*(v78 + 56) + 8 * v80);
                      if (*(v82 + 16))
                      {
                        v83 = sub_1BB6A36B4(v79);
                        if (v84)
                        {
                          *(v6 + 64) = *(*(v82 + 56) + 16 * v83);
                          LOBYTE(v90[0]) = 3;
                          v93 = 0.0;
                          v94 = 0xE000000000000000;
                          sub_1BB6BB2F4();
                          v91 = v93;
                          v92 = v94;
                          MEMORY[0x1BFB10B60](0x2064657461647055, 0xEF206F7420494F52);
                          v93 = a2;
                          v94 = *&a3;
                          v95 = a4;
                          v96 = a5;
                          type metadata accessor for CGRect(0);
                          sub_1BB6BB4B4();
                          v85 = *&v91;
                          v86 = v92;
                          v87 = sub_1BB6BB084();
                          _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v90, v85, v86, v87);

                          if (a1)
                          {
                            *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_aspectRatioOverridden) = 1;
                          }

                          return;
                        }

LABEL_58:
                        __break(1u);
                        return;
                      }

LABEL_57:
                      __break(1u);
                      goto LABEL_58;
                    }

LABEL_56:
                    __break(1u);
                    goto LABEL_57;
                  }

LABEL_55:
                  __break(1u);
                  goto LABEL_56;
                }

LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_53;
        }
      }
    }
  }
}

double sub_1BB67F0A0(unsigned __int8 *a1, double a2)
{
  v4 = v2[6];
  v5 = v2[7] - v4;
  v6 = v2[8];
  v7 = v2[9] - v6;
  v8 = *a1 - 1;
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v5;
  v12.size.height = v7;
  v9 = CGRectGetMidX(v12) + -0.5;
  if (v8 < 2)
  {
    v9 = -v9;
  }

  v11 = v9;
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v5;
  v13.size.height = v7;
  CGRectGetMidY(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v5;
  v14.size.height = v7;
  CGRectGetWidth(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v5;
  v15.size.height = v7;
  CGRectGetHeight(v15);
  return v11 * a2;
}

uint64_t DKFramingEngine.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastHorizontalReframeDate;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastVerticalReframeDate, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastSubjectChangeDate, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_currentSubjectUUID;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t DKFramingEngine.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastHorizontalReframeDate;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastVerticalReframeDate, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_lastSubjectChangeDate, v2);
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKFramingEngine_currentSubjectUUID;
  v5 = sub_1BB6BA844();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

unint64_t sub_1BB67F3D8()
{
  result = qword_1EBC5E150;
  if (!qword_1EBC5E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E150);
  }

  return result;
}

unint64_t sub_1BB67F430()
{
  result = qword_1EBC5E158;
  if (!qword_1EBC5E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E158);
  }

  return result;
}

unint64_t sub_1BB67F488()
{
  result = qword_1EBC5E160;
  if (!qword_1EBC5E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E160);
  }

  return result;
}

unint64_t sub_1BB67F4E0()
{
  result = qword_1EBC5E168;
  if (!qword_1EBC5E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E168);
  }

  return result;
}

uint64_t type metadata accessor for DKFramingEngine()
{
  result = qword_1EBC5E170;
  if (!qword_1EBC5E170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB67F588()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA844();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1BB67FB08()
{
  result = qword_1EBC5E180;
  if (!qword_1EBC5E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E180);
  }

  return result;
}

unint64_t sub_1BB67FB60()
{
  result = qword_1EBC5E188;
  if (!qword_1EBC5E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E188);
  }

  return result;
}

unint64_t sub_1BB67FBB8()
{
  result = qword_1EBC5E190;
  if (!qword_1EBC5E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E190);
  }

  return result;
}

unint64_t sub_1BB67FC10()
{
  result = qword_1EBC5E198;
  if (!qword_1EBC5E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E198);
  }

  return result;
}

unint64_t sub_1BB67FC68()
{
  result = qword_1EBC5E1A0;
  if (!qword_1EBC5E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1A0);
  }

  return result;
}

unint64_t sub_1BB67FCC0()
{
  result = qword_1EBC5E1A8;
  if (!qword_1EBC5E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1A8);
  }

  return result;
}

unint64_t sub_1BB67FD18()
{
  result = qword_1EBC5E1B0;
  if (!qword_1EBC5E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1B0);
  }

  return result;
}

unint64_t sub_1BB67FD70()
{
  result = qword_1EBC5E1B8;
  if (!qword_1EBC5E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1B8);
  }

  return result;
}

unint64_t sub_1BB67FDC8()
{
  result = qword_1EBC5E1C0;
  if (!qword_1EBC5E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1C0);
  }

  return result;
}

unint64_t sub_1BB67FE20()
{
  result = qword_1EBC5E1C8;
  if (!qword_1EBC5E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1C8);
  }

  return result;
}

unint64_t sub_1BB67FE78()
{
  result = qword_1EBC5E1D0;
  if (!qword_1EBC5E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1D0);
  }

  return result;
}

unint64_t sub_1BB67FED0()
{
  result = qword_1EBC5E1D8;
  if (!qword_1EBC5E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1D8);
  }

  return result;
}

unint64_t sub_1BB67FF28()
{
  result = qword_1EBC5E1E0;
  if (!qword_1EBC5E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1E0);
  }

  return result;
}

unint64_t sub_1BB67FF80()
{
  result = qword_1EBC5E1E8;
  if (!qword_1EBC5E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1E8);
  }

  return result;
}

unint64_t sub_1BB67FFD8()
{
  result = qword_1EBC5E1F0;
  if (!qword_1EBC5E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1F0);
  }

  return result;
}

unint64_t sub_1BB680030()
{
  result = qword_1EBC5E1F8;
  if (!qword_1EBC5E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E1F8);
  }

  return result;
}

unint64_t sub_1BB680088()
{
  result = qword_1EBC5E200;
  if (!qword_1EBC5E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E200);
  }

  return result;
}

unint64_t sub_1BB6800E0()
{
  result = qword_1EBC5E208;
  if (!qword_1EBC5E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E208);
  }

  return result;
}

unint64_t sub_1BB680138()
{
  result = qword_1EBC5E210;
  if (!qword_1EBC5E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E210);
  }

  return result;
}

unint64_t sub_1BB680190()
{
  result = qword_1EBC5E218;
  if (!qword_1EBC5E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E218);
  }

  return result;
}

unint64_t sub_1BB6801E8()
{
  result = qword_1EBC5E220;
  if (!qword_1EBC5E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E220);
  }

  return result;
}

unint64_t sub_1BB680240()
{
  result = qword_1EBC5E228;
  if (!qword_1EBC5E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E228);
  }

  return result;
}

unint64_t sub_1BB680298()
{
  result = qword_1EBC5E230;
  if (!qword_1EBC5E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E230);
  }

  return result;
}

unint64_t sub_1BB6802F0()
{
  result = qword_1EBC5E238;
  if (!qword_1EBC5E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E238);
  }

  return result;
}

unint64_t sub_1BB680348()
{
  result = qword_1EBC5E240;
  if (!qword_1EBC5E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E240);
  }

  return result;
}

unint64_t sub_1BB6803A0()
{
  result = qword_1EBC5E248;
  if (!qword_1EBC5E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E248);
  }

  return result;
}

unint64_t sub_1BB6803F8()
{
  result = qword_1EBC5E250;
  if (!qword_1EBC5E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E250);
  }

  return result;
}

unint64_t sub_1BB680450()
{
  result = qword_1EBC5E258;
  if (!qword_1EBC5E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E258);
  }

  return result;
}

unint64_t sub_1BB6804A8()
{
  result = qword_1EBC5E260;
  if (!qword_1EBC5E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E260);
  }

  return result;
}

unint64_t sub_1BB680500()
{
  result = qword_1EBC5E268;
  if (!qword_1EBC5E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E268);
  }

  return result;
}

unint64_t sub_1BB680558()
{
  result = qword_1EBC5E270;
  if (!qword_1EBC5E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E270);
  }

  return result;
}

unint64_t sub_1BB6805B0()
{
  result = qword_1EBC5E278;
  if (!qword_1EBC5E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E278);
  }

  return result;
}

unint64_t sub_1BB680608()
{
  result = qword_1EBC5E280;
  if (!qword_1EBC5E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E280);
  }

  return result;
}

unint64_t sub_1BB680660()
{
  result = qword_1EBC5E288;
  if (!qword_1EBC5E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E288);
  }

  return result;
}

uint64_t sub_1BB6806B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69547265746E6563 && a2 == 0xEB00000000746867)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BB680814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1BB680924()
{
  result = qword_1EBC5C298;
  if (!qword_1EBC5C298)
  {
    sub_1BB6BA844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5C298);
  }

  return result;
}

uint64_t DKIMUManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  sub_1BB6BAA24();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  return v0;
}

uint64_t sub_1BB680A44(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t DKIMUManager.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  sub_1BB6BAA24();
  v1 = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;

  return v0;
}

uint64_t DKIMUManager.deinit()
{
  [*(v0 + 16) stopDeviceMotionUpdates];

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKIMUManager_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKIMUManager.__deallocating_deinit()
{
  [*(v0 + 16) stopDeviceMotionUpdates];

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore12DKIMUManager_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB680C10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BB6BAA34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  if (!v7)
  {
    sub_1BB6BA7D4();
    v47 = type metadata accessor for DKMotion3();
    *(a1 + v47[5]) = &unk_1F3A48318;
    *(a1 + v47[6]) = &unk_1F3A48350;
    v48 = v47[7];
    v49 = &unk_1F3A48388;
LABEL_17:
    *(a1 + v48) = v49;
    v55 = *(*(v47 - 1) + 56);

    return v55(a1, 0, 1, v47);
  }

  v8 = v7;
  if (([v8 isDeviceMotionActive] & 1) == 0 && objc_msgSend(v8, sel_isDeviceMotionAvailable))
  {
    [v8 setDeviceMotionUpdateInterval_];
    [v8 setShowsDeviceMovementDisplay_];
    [v8 startDeviceMotionUpdatesUsingReferenceFrame_];
  }

  v9 = [v8 deviceMotion];
  if (v9)
  {
    v10 = v9;
    [v9 gravity];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v10 attitude];
    [v17 quaternion];
    v58 = v19;
    v59 = v18;
    v56 = v21;
    v57 = v20;

    *&v22.f64[0] = v57;
    *&v22.f64[1] = v56;
    v23.f64[0] = v59.f64[0];
    *&v23.f64[1] = v58;
    v24 = vnegq_f64(v23);
    v25 = vmulq_f64(v22, xmmword_1BB6C8550);
    v26 = vextq_s8(v25, vnegq_f64(v25), 8uLL);
    v27 = vmlaq_f64(vmulq_f64(v23, 0), 0, vextq_s8(v24, v23, 8uLL));
    v28 = vextq_s8(v23, v24, 8uLL);
    v29 = vaddq_f64(v26, v27);
    v30 = vaddq_f64(v28, vmlaq_f64(vmulq_f64(v25, 0), 0, v26));
    v59 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v30, *&v56), vextq_s8(vnegq_f64(v30), v30, 8uLL), *&v57), vmlaq_n_f64(vmulq_n_f64(v29, *&v58), vextq_s8(v29, vnegq_f64(v29), 8uLL), v59.f64[0]));
    v31 = sqrt(v12 * v12 + v14 * v14);
    v32 = atan2(-v12, -v14);
    v33 = atan2(v16, v31);
    v34 = atan2(v59.f64[1], v59.f64[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BB6BC7F0;
    *(v35 + 32) = v34;
    *(v35 + 40) = v33;
    *(v35 + 48) = v32;
    [v10 rotationRate];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [v10 gravity];
    sub_1BB68113C(&v60, v37, v39, v41, v42, v43, v44);
    v45 = v60;
    if (*(v1 + 32))
    {
      *(v1 + 24) = v34;
      *(v1 + 32) = 0;
      i = 0.0;
    }

    else
    {
        ;
      }

        ;
      }
    }

    *(v35 + 32) = i;
    sub_1BB6BA7D4();

    v47 = type metadata accessor for DKMotion3();
    *(a1 + v47[5]) = v35;
    *(a1 + v47[6]) = v45;
    v48 = v47[7];
    v49 = &unk_1F3A482E0;
    goto LABEL_17;
  }

  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore12DKIMUManager_logger, v3);
  v50 = sub_1BB6BAA14();
  v51 = sub_1BB6BB064();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1BB58A000, v50, v51, "CMDeviceMotion not available", v52, 2u);
    MEMORY[0x1BFB122F0](v52, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v53 = type metadata accessor for DKMotion3();
  return (*(*(v53 - 8) + 56))(a1, 1, 1, v53);
}

double sub_1BB68113C@<D0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, long double a7@<D5>)
{
  v9 = sqrt(a5 * a5 + a6 * a6);
  v10 = atan2(-a5, -a6);
  v11 = atan2(a7, v9);
  v13 = __sincos_stret(v11 * 0.5);
  v12.f64[0] = v13.__sinval;
  *&v30 = *&vmulq_f64(v12, 0);
  v29 = vmulq_n_f64(xmmword_1BB6BF700, v13.__sinval);
  v14 = __sincos_stret(v10 * 0.5);
  v15 = vmulq_n_f64(0, v14.__sinval);
  v16 = vnegq_f64(v15);
  v17 = vextq_s8(v14, vnegq_f64(v14), 8uLL);
  v18 = vmlaq_n_f64(vmulq_laneq_f64(v14, v29, 1), v17, v29.f64[0]);
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v14, v13.__cosval), v17, v30), vmlaq_n_f64(vmulq_laneq_f64(v16, v29, 1), vextq_s8(v15, v16, 8uLL), v29.f64[0]));
  v20 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v15, v13.__cosval), vextq_s8(v16, v15, 8uLL), v30), v18);
  v21 = vnegq_f64(v20);
  v22 = vmulq_f64(v19, xmmword_1BB6C8550);
  v23 = vextq_s8(v22, vnegq_f64(v22), 8uLL);
  v24 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v20, a3), vextq_s8(v21, v20, 8uLL), a2), v23, a4);
  v25 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v22, a3), v23, a2), vextq_s8(v20, v21, 8uLL), a4);
  v35 = vmlaq_n_f64(vmulq_laneq_f64(v24, v20, 1), vextq_s8(v24, vnegq_f64(v24), 8uLL), v20.f64[0]);
  v33 = vmlaq_n_f64(vmulq_laneq_f64(v25, v19, 1), vextq_s8(vnegq_f64(v25), v25, 8uLL), v19.f64[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
  v26 = swift_allocObject();
  *&result = 3;
  v28 = vaddq_f64(v33, v35);
  *(v26 + 16) = xmmword_1BB6BC7F0;
  *(v26 + 32) = vextq_s8(v28, v28, 8uLL);
  *(v26 + 48) = 0;
  *a1 = v26;
  return result;
}

double sub_1BB6812E0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, long double a5@<D2>)
{
  v9 = 0.0;
  if ((*(a1 + 32) & 1) == 0)
  {
    v9 = atan2(*(a1 + 8), *a1);
  }

  v10 = atan2(a5, sqrt(a3 * a3 + a4 * a4));
  v11 = atan2(-a3, -a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
  v12 = swift_allocObject();
  *&result = 3;
  *(v12 + 16) = xmmword_1BB6BC7F0;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = v11;
  *a2 = v12;
  return result;
}

uint64_t type metadata accessor for DKIMUManager()
{
  result = qword_1EBC5E2C8;
  if (!qword_1EBC5E2C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6813F0()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DKIMUManager.calculateOrientationFromGravity(gravity:normal:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 200);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

IntelligentTrackingCore::DKSubjectSelectionRequestType_optional __swiftcall DKSubjectSelectionRequestType.init(rawValue:)(IntelligentTrackingCore::DKSubjectSelectionRequestType_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = IntelligentTrackingCore_DKSubjectSelectionRequestType_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1BB681678()
{
  sub_1BB6BB924();
  sub_1BB6BB944();
  return sub_1BB6BB964();
}

uint64_t sub_1BB6816EC()
{
  sub_1BB6BB924();
  sub_1BB6BB944();
  return sub_1BB6BB964();
}

unint64_t sub_1BB681748()
{
  result = qword_1EBC5E2D8;
  if (!qword_1EBC5E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E2D8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BB6817CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BB681814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BB681870()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;
  v2 = sub_1BB6BA844();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB68194C()
{
  v1[2] = v0;
  v2 = sub_1BB6BA844();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB681A68, 0, 0);
}

uint64_t sub_1BB681A68()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = sub_1BB682BFC();
  v6 = *(v4 + 48);
  v7 = v2 + 16;
  v57 = *(v2 + 16);
  v57(v1, v6 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v3);

  v8 = sub_1BB5C0DF4(v1);

  v10 = *(v2 + 8);
  v9 = v2 + 8;
  v11 = v3;
  v12 = v10;
  v10(v1, v11);
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackedPeople) = v8;

  v13 = &OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects;
  if (*(v5 + 16))
  {
    sub_1BB6848AC(v5);

    goto LABEL_28;
  }

  v56 = v7;

  v14 = v0[2];
  if (*(*(v4 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_pipelineMode))
  {
    sub_1BB684ED0();
  }

  else
  {
    sub_1BB685938();
    *(*(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_legacySubjectSelection) + 56) = 0;
  }

  sub_1BB687574(v15);

  v16 = *(v4 + 48);
  v1 = *(*(*(v4 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v59 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_52:
    v48 = v16;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_1BB6BB564();
    v16 = v48;
  }

  else
  {
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v4;
  v49 = v16;

  if (!v17)
  {
    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v19 = 0;
  v54 = v1 & 0xC000000000000001;
  v50 = MEMORY[0x1E69E7CC0];
  v51 = v1;
  do
  {
    v13 = v19;
    while (1)
    {
      if (v54)
      {
        v20 = MEMORY[0x1BFB111F0](v13, v1);
      }

      else
      {
        if (v13 >= *(v55 + 16))
        {
          goto LABEL_49;
        }

        v20 = *&v1[8 * v13 + 32];
      }

      v19 = (v13 + 1);
      v18 = v56;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (*(*(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence) + 16) >= 1)
      {
        break;
      }

LABEL_12:
      ++v13;
      if (v19 == v17)
      {
        v13 = &OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects;
        goto LABEL_27;
      }
    }

    v21 = v12;
    v22 = v9;
    v23 = v0[8];
    v4 = v17;
    v24 = v0[6];
    v57(v23, *(v52 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v24);
    v25 = sub_1BB6989C8(v23, 0);

    v26 = v23;
    v9 = v22;
    v12 = v21;
    v1 = v51;
    v27 = v24;
    v17 = v4;
    v28 = v12(v26, v27);
    if (!v25)
    {
      goto LABEL_12;
    }

    MEMORY[0x1BFB10C80](v28);
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BB6BAE64();
    }

    sub_1BB6BAEB4();
    v50 = v59;
    v13 = &OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects;
  }

  while (v19 != v4);
LABEL_27:

  *(v49 + *v13) = v50;

  v4 = v52;
LABEL_28:
  sub_1BB6820D0();
  v18 = *(*(v4 + 48) + *v13);
  if (!v18)
  {
    v44 = *(v4 + 40);
    goto LABEL_44;
  }

  if (v18 >> 62)
  {
LABEL_50:
    v29 = v18;
    v30 = sub_1BB6BB564();
  }

  else
  {
    v29 = *(*(v4 + 48) + *v13);
    v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30)
  {
    v59 = MEMORY[0x1E69E7CC0];
    v12 = (v30 & ~(v30 >> 63));

    v16 = sub_1BB5E5860(0, v12, 0);
    if (v30 < 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v53 = v4;
    v31 = 0;
    v32 = v0[4];
    v33 = v29;
    v34 = (v32 + 16);
    v58 = v29 & 0xC000000000000001;
    v35 = v29;
    do
    {
      v36 = v30;
      v37 = v0[5];
      v38 = v0[3];
      if (v58)
      {
        v39 = MEMORY[0x1BFB111F0](v31, v33);
        (*v34)(v37, v39 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v38);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v34)(v37, *(v33 + 8 * v31 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_uuid, v38);
      }

      v41 = *(v59 + 16);
      v40 = *(v59 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1BB5E5860(v40 > 1, v41 + 1, 1);
      }

      v42 = v0[5];
      v43 = v0[3];
      ++v31;
      *(v59 + 16) = v41 + 1;
      (*(v32 + 32))(v59 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v41, v42, v43);
      v30 = v36;
      v33 = v35;
    }

    while (v36 != v31);

    v4 = v53;
    v13 = &OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects;
  }

  sub_1BB5C8430();

  v44 = *(v4 + 40);
  v45 = *(*(v4 + 48) + *v13);
  if (!v45)
  {
LABEL_44:
    v45 = MEMORY[0x1E69E7CC0];
  }

  *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastSelectedSubjects) = v45;

  v46 = v0[1];

  return v46(1);
}

void sub_1BB6820D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v78 = v73 - v2;
  v3 = *(*(v0 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  if (!v3)
  {
    return;
  }

  v4 = *(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_framingEngine);
  v5 = v4[10];
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v79 = v0;

  v92.origin.x = v5;
  v92.origin.y = v6;
  v92.size.width = v7;
  v92.size.height = v8;
  v9 = CGRectGetWidth(v92) * 0.9;
  v93.origin.x = v5;
  v93.origin.y = v6;
  v93.size.width = v7;
  v93.size.height = v8;
  Height = CGRectGetHeight(v93);
  v11 = sub_1BB652C44(v3, v9, Height * 0.9);

  if (!v11)
  {

    return;
  }

  v87 = MEMORY[0x1E69E7CC0];
  v12 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BB6BB564())
  {
    v14 = MEMORY[0x1E69E7CC0];
    v84 = v11 >> 62;
    v75 = v3;
    v86 = v11;
    v83 = i;
    if (!i)
    {
      break;
    }

    v15 = 0;
    v81 = v3 + 32;
    v82 = v3 & 0xC000000000000001;
    v16 = v11 & 0xFFFFFFFFFFFFFF8;
    v80 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 < 0)
    {
      v16 = v11;
    }

    v73[1] = v16;
    v76 = v11 & 0xC000000000000001;
    v74 = v11 + 32;
    v77 = v12;
LABEL_10:
    while (2)
    {
      if (v82)
      {
        v17 = MEMORY[0x1BFB111F0](v15, v75);
        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v15 >= *(v12 + 16))
        {
          goto LABEL_78;
        }

        v17 = *(v81 + 8 * v15);

        v18 = __OFADD__(v15++, 1);
        if (v18)
        {
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          break;
        }
      }

      if (v84)
      {
        v3 = sub_1BB6BB564();
        if (!v3)
        {
LABEL_31:
          v19 = v14;
          goto LABEL_32;
        }
      }

      else
      {
        v3 = *(v80 + 16);
        if (!v3)
        {
          goto LABEL_31;
        }
      }

      v90 = v14;
      sub_1BB5E5920(0, v3 & ~(v3 >> 63), 0);
      if ((v3 & 0x8000000000000000) == 0)
      {
        v85 = v17;
        v19 = v90;
        if (v76)
        {
          for (j = 0; j != v3; ++j)
          {
            MEMORY[0x1BFB111F0](j, v11);
            type metadata accessor for DKPersonTrackerState(0);
            sub_1BB689900(&qword_1EBC5D660, type metadata accessor for DKPersonTrackerState);
            v21 = sub_1BB6BB314();
            swift_unknownObjectRelease();
            v90 = v19;
            v23 = *(v19 + 16);
            v22 = *(v19 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_1BB5E5920((v22 > 1), v23 + 1, 1);
              v19 = v90;
            }

            *(v19 + 16) = v23 + 1;
            *(v19 + 8 * v23 + 32) = v21;
          }
        }

        else
        {
          type metadata accessor for DKPersonTrackerState(0);
          sub_1BB689900(&qword_1EBC5D660, type metadata accessor for DKPersonTrackerState);
          v24 = v74;
          do
          {

            v25 = sub_1BB6BB314();

            v90 = v19;
            v27 = *(v19 + 16);
            v26 = *(v19 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1BB5E5920((v26 > 1), v27 + 1, 1);
              v19 = v90;
            }

            *(v19 + 16) = v27 + 1;
            *(v19 + 8 * v27 + 32) = v25;
            v24 += 8;
            --v3;
            v11 = v86;
          }

          while (v3);
        }

        v14 = MEMORY[0x1E69E7CC0];
        i = v83;
        v12 = v77;
LABEL_32:
        type metadata accessor for DKPersonTrackerState(0);
        sub_1BB689900(&qword_1EBC5D660, type metadata accessor for DKPersonTrackerState);
        v28 = sub_1BB6BB314();
        v29 = *(v19 + 16);
        v30 = 32;
        do
        {
          if (!v29)
          {

            sub_1BB6BB3D4();
            sub_1BB6BB414();
            sub_1BB6BB424();
            sub_1BB6BB3E4();
            if (v15 != i)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          v31 = *(v19 + v30);
          v30 += 8;
          --v29;
        }

        while (v31 != v28);

        if (v15 != i)
        {
          continue;
        }

LABEL_36:
        v14 = v87;
        v3 = v75;
        goto LABEL_37;
      }

      break;
    }

    __break(1u);
LABEL_80:
    ;
  }

LABEL_37:
  v32 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v32)
  {
    v33 = sub_1BB6BB564();
  }

  else
  {
    v33 = *(v14 + 16);
  }

  v85 = v14;
  if (v33 > 0)
  {

    if (v84)
    {
      v34 = sub_1BB6BB564();
    }

    else
    {
      v34 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34)
    {
      LODWORD(v84) = v32;
      if (v34 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v35 = 0;
      v36 = v11 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x1BFB111F0](v35, v11);
        }

        else
        {
          v37 = *(v11 + 8 * v35 + 32);
        }

        ++v35;
        v89 = 2;
        v87 = 0;
        v88 = 0xE000000000000000;
        sub_1BB6BB2F4();

        v87 = 0xD000000000000017;
        v88 = 0x80000001BB6CF570;
        v90 = *(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId);
        v38 = sub_1BB6BB794();
        MEMORY[0x1BFB10B60](v38);

        MEMORY[0x1BFB10B60](0x203D207820, 0xE500000000000000);
        v39 = (v37 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
        CGRectGetMidX(*(v37 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
        v40 = sub_1BB6BAFA4();
        MEMORY[0x1BFB10B60](v40);

        MEMORY[0x1BFB10B60](0x203D207920, 0xE500000000000000);
        CGRectGetMidY(*v39);
        v41 = sub_1BB6BAFA4();
        MEMORY[0x1BFB10B60](v41);

        v42 = v87;
        v43 = v88;
        v44 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v89, v42, v43, v44);

        v11 = v86;
      }

      while (v34 != v35);

      v14 = v85;
      if (v84)
      {
LABEL_56:
        v45 = sub_1BB6BB564();
        if (!v45)
        {
          goto LABEL_75;
        }

LABEL_67:
        if (v45 >= 1)
        {
          v56 = 0;
          v86 = v14 & 0xC000000000000001;
          v84 = 0x80000001BB6CF590;
          do
          {
            if (v86)
            {
              v57 = MEMORY[0x1BFB111F0](v56, v14);
            }

            else
            {
              v57 = *(v14 + 8 * v56 + 32);
            }

            ++v56;
            v89 = 2;
            v87 = 0;
            v88 = 0xE000000000000000;
            sub_1BB6BB2F4();

            v87 = 0xD000000000000019;
            v88 = v84;
            v58 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId;
            v90 = *(v57 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId);
            v59 = sub_1BB6BB794();
            MEMORY[0x1BFB10B60](v59);

            MEMORY[0x1BFB10B60](0x203D207820, 0xE500000000000000);
            v60 = (v57 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
            CGRectGetMidX(*(v57 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
            v61 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v61);

            MEMORY[0x1BFB10B60](0x203D207920, 0xE500000000000000);
            CGRectGetMidY(*v60);
            v62 = sub_1BB6BAFA4();
            MEMORY[0x1BFB10B60](v62);

            v63 = v87;
            v64 = v88;
            v65 = sub_1BB6BB064();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v89, v63, v64, v65);

            v66 = *(v57 + v58);
            v67 = *(v79 + 48);
            v68 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
            v69 = sub_1BB6BA7F4();
            v70 = *(v69 - 8);
            v71 = v67 + v68;
            v72 = v78;
            (*(v70 + 16))(v78, v71, v69);
            (*(v70 + 56))(v72, 0, 1, v69);
            sub_1BB6348A0(v72, v66);

            v14 = v85;
          }

          while (v45 != v56);
          goto LABEL_75;
        }

LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        return;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_56;
      }
    }

    v45 = *(v14 + 16);
    if (!v45)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  if (!i)
  {

    goto LABEL_75;
  }

  if (i < 1)
  {
    goto LABEL_85;
  }

  v46 = 0;
  v47 = v3 & 0xC000000000000001;
  do
  {
    if (v47)
    {
      v48 = MEMORY[0x1BFB111F0](v46, v3);
    }

    else
    {
      v48 = *(v3 + 8 * v46 + 32);
    }

    ++v46;
    v89 = 2;
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1BB6BB2F4();

    v87 = 0xD000000000000016;
    v88 = 0x80000001BB6CF550;
    v90 = *(v48 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId);
    v49 = sub_1BB6BB794();
    MEMORY[0x1BFB10B60](v49);

    MEMORY[0x1BFB10B60](0x203D207820, 0xE500000000000000);
    v50 = (v48 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    CGRectGetMidX(*(v48 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect));
    v51 = sub_1BB6BAFA4();
    MEMORY[0x1BFB10B60](v51);

    MEMORY[0x1BFB10B60](0x203D207920, 0xE500000000000000);
    CGRectGetMidY(*v50);
    v52 = sub_1BB6BAFA4();
    MEMORY[0x1BFB10B60](v52);

    v53 = v87;
    v54 = v88;
    v55 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v89, v53, v54, v55);

    v3 = v75;
  }

  while (v83 != v46);

  v14 = v85;
LABEL_75:
  sub_1BB6872C0(v14);
}