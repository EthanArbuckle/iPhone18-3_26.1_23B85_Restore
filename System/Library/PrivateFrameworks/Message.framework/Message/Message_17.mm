double sub_1B06B0708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, const void *a7, uint64_t a8)
{
  v28 = a3;
  v23 = a6;
  v39 = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v27 = *a1;
  v39 = *a1;
  v38 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v33 = a7;
  v32 = a8;
  sub_1B06BAD14();
  if (v28 == 4)
  {
    v18 = 0;
    v19 = 1;
  }

  else
  {
    v18 = sub_1B06A9284(v28, a4, a5, v23);
    v19 = 0;
  }

  sub_1B06B8AE0(a2, v18, v19 & 1, a7);
  type metadata accessor for EMActivityUserInfoKey();
  sub_1B0694EF0();
  v16 = sub_1B0E44598();

  v17 = [v26 startActivityOfType:1 userInfo:v16];
  MEMORY[0x1E69E5920](v16);
  v30 = v17;
  if (v28 == 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = sub_1B06A916C(v28, a4);
    v14 = v8;
    v15 = v9;
  }

  v12 = [v17 objectID];
  v29 = v27;
  sub_1B06B09CC(v13, v11, v15 & 1, v12, &v29, a8);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5928](a2);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a2);
}

id sub_1B06B09CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v366 = a1;
  v365 = a2;
  v364 = a3;
  v361 = a4;
  v362 = a5;
  v363 = a6;
  v290 = sub_1B039BBE8;
  v291 = sub_1B06BA324;
  v292 = sub_1B0394C30;
  v293 = sub_1B0394C24;
  v294 = sub_1B039BA2C;
  v295 = sub_1B039BA88;
  v296 = sub_1B039BB94;
  v297 = sub_1B0394C24;
  v298 = sub_1B039BBA0;
  v299 = sub_1B039BC08;
  v300 = sub_1B03FB1CC;
  v301 = sub_1B039BCF8;
  v302 = sub_1B06BD0A8;
  v303 = sub_1B03B0DF8;
  v304 = sub_1B06BD0B4;
  v305 = sub_1B03B0DF8;
  v306 = sub_1B0398F5C;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0399178;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B039BA94;
  v312 = sub_1B0398F5C;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0399178;
  v315 = sub_1B0398F5C;
  v316 = sub_1B0398F5C;
  v317 = sub_1B03991EC;
  v318 = sub_1B0398F5C;
  v319 = sub_1B0398F5C;
  v320 = sub_1B039BCEC;
  v321 = sub_1B0398F5C;
  v322 = sub_1B0398F5C;
  v323 = sub_1B0399260;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0399260;
  v327 = sub_1B039BBE8;
  v328 = sub_1B06BA324;
  v329 = sub_1B0394C24;
  v330 = sub_1B039BA2C;
  v331 = sub_1B039BA88;
  v332 = sub_1B0394C24;
  v333 = sub_1B039BBA0;
  v334 = sub_1B039BC08;
  v335 = sub_1B03FB1CC;
  v336 = sub_1B039BCF8;
  v337 = sub_1B0398F5C;
  v338 = sub_1B0398F5C;
  v339 = sub_1B0399178;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0398F5C;
  v342 = sub_1B039BA94;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0399178;
  v346 = sub_1B0398F5C;
  v347 = sub_1B0398F5C;
  v348 = sub_1B03991EC;
  v349 = sub_1B0398F5C;
  v350 = sub_1B0398F5C;
  v351 = sub_1B039BCEC;
  v391 = 0;
  v392 = 0;
  v393 = 0;
  v390 = 0;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v352 = 0;
  v380 = 0;
  v381 = 0;
  v353 = 0;
  v354 = _s6LoggerVMa();
  v355 = (*(*(v354 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](0);
  v356 = v163 - v355;
  v357 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v358 = v163 - v357;
  v359 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v360 = v163 - v359;
  v367 = sub_1B0E439A8();
  v368 = *(v367 - 8);
  v369 = v367 - 8;
  v370 = (*(v368 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v366);
  v371 = v163 - v370;
  v372 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v373 = v163 - v372;
  v391 = v13;
  v392 = v14;
  v393 = v15 & 1;
  v390 = v16;
  v374 = *v17;
  v389 = v374;
  v388 = v18;
  v387 = v6;
  if (v15)
  {
    (*(v368 + 16))(v371, v363, v367);
    sub_1B0394784(v363, v360);
    sub_1B0394784(v360, v358);
    sub_1B03F4FD0(v360, v356);
    v104 = (v358 + *(v354 + 20));
    v171 = *v104;
    v172 = *(v104 + 1);
    sub_1B039480C(v358);
    v174 = 24;
    v186 = 7;
    v105 = swift_allocObject();
    v106 = v172;
    v177 = v105;
    *(v105 + 16) = v171;
    *(v105 + 20) = v106;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v107 = swift_allocObject();
    v108 = v172;
    v173 = v107;
    *(v107 + 16) = v171;
    *(v107 + 20) = v108;

    v185 = 32;
    v109 = swift_allocObject();
    v110 = v173;
    v182 = v109;
    *(v109 + 16) = v327;
    *(v109 + 24) = v110;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v356);
    v175 = swift_allocObject();
    *(v175 + 16) = v374;

    v111 = swift_allocObject();
    v112 = v175;
    v187 = v111;
    *(v111 + 16) = v328;
    *(v111 + 24) = v112;

    v207 = sub_1B0E43988();
    v208 = sub_1B0E458D8();
    v184 = 17;
    v189 = swift_allocObject();
    v179 = 16;
    *(v189 + 16) = 16;
    v190 = swift_allocObject();
    v181 = 4;
    *(v190 + 16) = 4;
    v113 = swift_allocObject();
    v176 = v113;
    *(v113 + 16) = v292;
    *(v113 + 24) = 0;
    v114 = swift_allocObject();
    v115 = v176;
    v191 = v114;
    *(v114 + 16) = v329;
    *(v114 + 24) = v115;
    v192 = swift_allocObject();
    *(v192 + 16) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = 1;
    v116 = swift_allocObject();
    v117 = v177;
    v178 = v116;
    *(v116 + 16) = v330;
    *(v116 + 24) = v117;
    v118 = swift_allocObject();
    v119 = v178;
    v194 = v118;
    *(v118 + 16) = v331;
    *(v118 + 24) = v119;
    v195 = swift_allocObject();
    *(v195 + 16) = v179;
    v196 = swift_allocObject();
    *(v196 + 16) = v181;
    v120 = swift_allocObject();
    v180 = v120;
    *(v120 + 16) = v296;
    *(v120 + 24) = 0;
    v121 = swift_allocObject();
    v122 = v180;
    v197 = v121;
    *(v121 + 16) = v332;
    *(v121 + 24) = v122;
    v198 = swift_allocObject();
    *(v198 + 16) = 0;
    v199 = swift_allocObject();
    *(v199 + 16) = v181;
    v123 = swift_allocObject();
    v124 = v182;
    v183 = v123;
    *(v123 + 16) = v333;
    *(v123 + 24) = v124;
    v125 = swift_allocObject();
    v126 = v183;
    v200 = v125;
    *(v125 + 16) = v334;
    *(v125 + 24) = v126;
    v201 = swift_allocObject();
    *(v201 + 16) = 32;
    v202 = swift_allocObject();
    *(v202 + 16) = 8;
    v127 = swift_allocObject();
    v128 = v187;
    v188 = v127;
    *(v127 + 16) = v335;
    *(v127 + 24) = v128;
    v129 = swift_allocObject();
    v130 = v188;
    v204 = v129;
    *(v129 + 16) = v336;
    *(v129 + 24) = v130;
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v203 = sub_1B0E46A48();
    v205 = v131;

    v132 = v189;
    v133 = v205;
    *v205 = v337;
    v133[1] = v132;

    v134 = v190;
    v135 = v205;
    v205[2] = v338;
    v135[3] = v134;

    v136 = v191;
    v137 = v205;
    v205[4] = v339;
    v137[5] = v136;

    v138 = v192;
    v139 = v205;
    v205[6] = v340;
    v139[7] = v138;

    v140 = v193;
    v141 = v205;
    v205[8] = v341;
    v141[9] = v140;

    v142 = v194;
    v143 = v205;
    v205[10] = v342;
    v143[11] = v142;

    v144 = v195;
    v145 = v205;
    v205[12] = v343;
    v145[13] = v144;

    v146 = v196;
    v147 = v205;
    v205[14] = v344;
    v147[15] = v146;

    v148 = v197;
    v149 = v205;
    v205[16] = v345;
    v149[17] = v148;

    v150 = v198;
    v151 = v205;
    v205[18] = v346;
    v151[19] = v150;

    v152 = v199;
    v153 = v205;
    v205[20] = v347;
    v153[21] = v152;

    v154 = v200;
    v155 = v205;
    v205[22] = v348;
    v155[23] = v154;

    v156 = v201;
    v157 = v205;
    v205[24] = v349;
    v157[25] = v156;

    v158 = v202;
    v159 = v205;
    v205[26] = v350;
    v159[27] = v158;

    v160 = v204;
    v161 = v205;
    v205[28] = v351;
    v161[29] = v160;
    sub_1B0394964();

    if (os_log_type_enabled(v207, v208))
    {
      v162 = v352;
      v164 = sub_1B0E45D78();
      v163[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v165 = sub_1B03949A8(0);
      v166 = sub_1B03949A8(1);
      v167 = &v386;
      v386 = v164;
      v168 = &v385;
      v385 = v165;
      v169 = &v384;
      v384 = v166;
      sub_1B0394A48(2, &v386);
      sub_1B0394A48(5, v167);
      v382 = v337;
      v383 = v189;
      sub_1B03949FC(&v382, v167, v168, v169);
      v170 = v162;
      if (v162)
      {

        __break(1u);
      }

      else
      {
        v382 = v338;
        v383 = v190;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[13] = 0;
        v382 = v339;
        v383 = v191;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[12] = 0;
        v382 = v340;
        v383 = v192;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[11] = 0;
        v382 = v341;
        v383 = v193;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[10] = 0;
        v382 = v342;
        v383 = v194;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[9] = 0;
        v382 = v343;
        v383 = v195;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[8] = 0;
        v382 = v344;
        v383 = v196;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[7] = 0;
        v382 = v345;
        v383 = v197;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[6] = 0;
        v382 = v346;
        v383 = v198;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[5] = 0;
        v382 = v347;
        v383 = v199;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[4] = 0;
        v382 = v348;
        v383 = v200;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[3] = 0;
        v382 = v349;
        v383 = v201;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[2] = 0;
        v382 = v350;
        v383 = v202;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        v163[1] = 0;
        v382 = v351;
        v383 = v204;
        sub_1B03949FC(&v382, &v386, &v385, &v384);
        _os_log_impl(&dword_1B0389000, v207, v208, "[%.*hhx-%.*X] Updating fetch-progress for mailbox row ID %s -> indeterminate", v164, 0x21u);
        sub_1B03998A8(v165);
        sub_1B03998A8(v166);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v207);
    (*(v368 + 8))(v371, v367);
    return [v289 activityWithID:v361 setCompletedCount:0 totalCount:-1];
  }

  else
  {
    v287 = v366;
    v288 = v365;
    v242 = v365;
    v241 = v366;
    v380 = v366;
    v381 = v365;
    (*(v368 + 16))(v373, v363, v367);
    sub_1B0394784(v363, v360);
    sub_1B0394784(v360, v358);
    sub_1B03F4FD0(v360, v356);
    v19 = (v358 + *(v354 + 20));
    v236 = *v19;
    v237 = *(v19 + 1);
    sub_1B039480C(v358);
    v239 = 24;
    v258 = 7;
    v20 = swift_allocObject();
    v21 = v237;
    v244 = v20;
    *(v20 + 16) = v236;
    *(v20 + 20) = v21;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v22 = swift_allocObject();
    v23 = v237;
    v238 = v22;
    *(v22 + 16) = v236;
    *(v22 + 20) = v23;

    v257 = 32;
    v24 = swift_allocObject();
    v25 = v238;
    v249 = v24;
    *(v24 + 16) = v290;
    *(v24 + 24) = v25;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v356);
    v240 = swift_allocObject();
    *(v240 + 16) = v374;

    v26 = swift_allocObject();
    v27 = v240;
    v251 = v26;
    *(v26 + 16) = v291;
    *(v26 + 24) = v27;

    v28 = swift_allocObject();
    v29 = v242;
    v253 = v28;
    *(v28 + 16) = v241;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    v31 = v242;
    v259 = v30;
    *(v30 + 16) = v241;
    *(v30 + 24) = v31;
    v285 = sub_1B0E43988();
    v286 = sub_1B0E458D8();
    v255 = 17;
    v261 = swift_allocObject();
    v246 = 16;
    *(v261 + 16) = 16;
    v262 = swift_allocObject();
    v248 = 4;
    *(v262 + 16) = 4;
    v32 = swift_allocObject();
    v243 = v32;
    *(v32 + 16) = v292;
    *(v32 + 24) = 0;
    v33 = swift_allocObject();
    v34 = v243;
    v263 = v33;
    *(v33 + 16) = v293;
    *(v33 + 24) = v34;
    v264 = swift_allocObject();
    *(v264 + 16) = 0;
    v265 = swift_allocObject();
    *(v265 + 16) = 1;
    v35 = swift_allocObject();
    v36 = v244;
    v245 = v35;
    *(v35 + 16) = v294;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v245;
    v266 = v37;
    *(v37 + 16) = v295;
    *(v37 + 24) = v38;
    v267 = swift_allocObject();
    *(v267 + 16) = v246;
    v268 = swift_allocObject();
    *(v268 + 16) = v248;
    v39 = swift_allocObject();
    v247 = v39;
    *(v39 + 16) = v296;
    *(v39 + 24) = 0;
    v40 = swift_allocObject();
    v41 = v247;
    v269 = v40;
    *(v40 + 16) = v297;
    *(v40 + 24) = v41;
    v270 = swift_allocObject();
    *(v270 + 16) = 0;
    v271 = swift_allocObject();
    *(v271 + 16) = v248;
    v42 = swift_allocObject();
    v43 = v249;
    v250 = v42;
    *(v42 + 16) = v298;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v250;
    v272 = v44;
    *(v44 + 16) = v299;
    *(v44 + 24) = v45;
    v273 = swift_allocObject();
    *(v273 + 16) = 32;
    v274 = swift_allocObject();
    v256 = 8;
    *(v274 + 16) = 8;
    v46 = swift_allocObject();
    v47 = v251;
    v252 = v46;
    *(v46 + 16) = v300;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v252;
    v275 = v48;
    *(v48 + 16) = v301;
    *(v48 + 24) = v49;
    v276 = swift_allocObject();
    *(v276 + 16) = 0;
    v277 = swift_allocObject();
    *(v277 + 16) = v256;
    v50 = swift_allocObject();
    v51 = v253;
    v254 = v50;
    *(v50 + 16) = v302;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v254;
    v278 = v52;
    *(v52 + 16) = v303;
    *(v52 + 24) = v53;
    v279 = swift_allocObject();
    *(v279 + 16) = 0;
    v280 = swift_allocObject();
    *(v280 + 16) = v256;
    v54 = swift_allocObject();
    v55 = v259;
    v260 = v54;
    *(v54 + 16) = v304;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v260;
    v282 = v56;
    *(v56 + 16) = v305;
    *(v56 + 24) = v57;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v281 = sub_1B0E46A48();
    v283 = v58;

    v59 = v261;
    v60 = v283;
    *v283 = v306;
    v60[1] = v59;

    v61 = v262;
    v62 = v283;
    v283[2] = v307;
    v62[3] = v61;

    v63 = v263;
    v64 = v283;
    v283[4] = v308;
    v64[5] = v63;

    v65 = v264;
    v66 = v283;
    v283[6] = v309;
    v66[7] = v65;

    v67 = v265;
    v68 = v283;
    v283[8] = v310;
    v68[9] = v67;

    v69 = v266;
    v70 = v283;
    v283[10] = v311;
    v70[11] = v69;

    v71 = v267;
    v72 = v283;
    v283[12] = v312;
    v72[13] = v71;

    v73 = v268;
    v74 = v283;
    v283[14] = v313;
    v74[15] = v73;

    v75 = v269;
    v76 = v283;
    v283[16] = v314;
    v76[17] = v75;

    v77 = v270;
    v78 = v283;
    v283[18] = v315;
    v78[19] = v77;

    v79 = v271;
    v80 = v283;
    v283[20] = v316;
    v80[21] = v79;

    v81 = v272;
    v82 = v283;
    v283[22] = v317;
    v82[23] = v81;

    v83 = v273;
    v84 = v283;
    v283[24] = v318;
    v84[25] = v83;

    v85 = v274;
    v86 = v283;
    v283[26] = v319;
    v86[27] = v85;

    v87 = v275;
    v88 = v283;
    v283[28] = v320;
    v88[29] = v87;

    v89 = v276;
    v90 = v283;
    v283[30] = v321;
    v90[31] = v89;

    v91 = v277;
    v92 = v283;
    v283[32] = v322;
    v92[33] = v91;

    v93 = v278;
    v94 = v283;
    v283[34] = v323;
    v94[35] = v93;

    v95 = v279;
    v96 = v283;
    v283[36] = v324;
    v96[37] = v95;

    v97 = v280;
    v98 = v283;
    v283[38] = v325;
    v98[39] = v97;

    v99 = v282;
    v100 = v283;
    v283[40] = v326;
    v100[41] = v99;
    sub_1B0394964();

    if (os_log_type_enabled(v285, v286))
    {
      v101 = v352;
      v229 = sub_1B0E45D78();
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v230 = sub_1B03949A8(0);
      v231 = sub_1B03949A8(1);
      v232 = &v379;
      v379 = v229;
      v233 = &v378;
      v378 = v230;
      v234 = &v377;
      v377 = v231;
      sub_1B0394A48(2, &v379);
      sub_1B0394A48(7, v232);
      v375 = v306;
      v376 = v261;
      sub_1B03949FC(&v375, v232, v233, v234);
      v235 = v101;
      if (v101)
      {

        __break(1u);
      }

      else
      {
        v375 = v307;
        v376 = v262;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v227 = 0;
        v375 = v308;
        v376 = v263;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v226 = 0;
        v375 = v309;
        v376 = v264;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v225 = 0;
        v375 = v310;
        v376 = v265;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v224 = 0;
        v375 = v311;
        v376 = v266;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v223 = 0;
        v375 = v312;
        v376 = v267;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v222 = 0;
        v375 = v313;
        v376 = v268;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v221 = 0;
        v375 = v314;
        v376 = v269;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v220 = 0;
        v375 = v315;
        v376 = v270;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v219 = 0;
        v375 = v316;
        v376 = v271;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v218 = 0;
        v375 = v317;
        v376 = v272;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v217 = 0;
        v375 = v318;
        v376 = v273;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v216 = 0;
        v375 = v319;
        v376 = v274;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v215 = 0;
        v375 = v320;
        v376 = v275;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v214 = 0;
        v375 = v321;
        v376 = v276;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v213 = 0;
        v375 = v322;
        v376 = v277;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v212 = 0;
        v375 = v323;
        v376 = v278;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v211 = 0;
        v375 = v324;
        v376 = v279;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v210 = 0;
        v375 = v325;
        v376 = v280;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v209 = 0;
        v375 = v326;
        v376 = v282;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        _os_log_impl(&dword_1B0389000, v285, v286, "[%.*hhx-%.*X] Updating fetch-progress for mailbox row ID %s -> %ld / %ld", v229, 0x35u);
        sub_1B03998A8(v230);
        sub_1B03998A8(v231);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v285);
    (*(v368 + 8))(v373, v367);
    v102 = Activity.MailboxStatus.Info.FetchProgress.total.getter(v241, v242);
    return [v289 activityWithID:v361 setCompletedCount:v242 totalCount:v102];
  }
}

uint64_t sub_1B06B3D94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v134 = a1;
  v116 = a2;
  v117 = a3;
  v121 = a4;
  v127 = sub_1B039BBE8;
  v131 = sub_1B06BA324;
  v135 = sub_1B0394C30;
  v136 = sub_1B0394C24;
  v138 = sub_1B039BA2C;
  v140 = sub_1B039BA88;
  v143 = sub_1B039BB94;
  v144 = sub_1B0394C24;
  v147 = sub_1B039BBA0;
  v149 = sub_1B039BC08;
  v151 = sub_1B03FB1CC;
  v153 = sub_1B039BCF8;
  v157 = sub_1B06BD0C0;
  v161 = sub_1B03B0DF8;
  v163 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v167 = sub_1B0399178;
  v169 = sub_1B0398F5C;
  v171 = sub_1B0398F5C;
  v173 = sub_1B039BA94;
  v175 = sub_1B0398F5C;
  v177 = sub_1B0398F5C;
  v179 = sub_1B0399178;
  v181 = sub_1B0398F5C;
  v183 = sub_1B0398F5C;
  v185 = sub_1B03991EC;
  v187 = sub_1B0398F5C;
  v189 = sub_1B0398F5C;
  v191 = sub_1B039BCEC;
  v193 = sub_1B0398F5C;
  v195 = sub_1B0398F5C;
  v198 = sub_1B0399260;
  v213 = 0;
  v212 = 0;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v109 = 0;
  v110 = 0;
  v123 = _s6LoggerVMa();
  v111 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v129 = &v82 - v111;
  v112 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v124 = &v82 - v112;
  v113 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v82 - v113;
  v114 = sub_1B0E439A8();
  v119 = *(v114 - 8);
  v115 = v114 - 8;
  v8 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v134);
  v120 = &v82 - v10;
  v213 = v9;
  v212 = v116;
  v130 = *v117;
  v211 = v130;
  v210 = v11;
  v209 = v118;
  (*(v119 + 16))(&v82 - v10);
  sub_1B0394784(v121, v122);
  sub_1B0394784(v122, v124);
  sub_1B03F4FD0(v122, v129);
  v12 = (v124 + *(v123 + 20));
  v125 = *v12;
  v126 = *(v12 + 1);
  sub_1B039480C(v124);
  v133 = 24;
  v159 = 7;
  v13 = swift_allocObject();
  v14 = v126;
  v139 = v13;
  *(v13 + 16) = v125;
  *(v13 + 20) = v14;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v15 = swift_allocObject();
  v16 = v126;
  v128 = v15;
  *(v15 + 16) = v125;
  *(v15 + 20) = v16;

  v158 = 32;
  v17 = swift_allocObject();
  v18 = v128;
  v148 = v17;
  *(v17 + 16) = v127;
  *(v17 + 24) = v18;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v129);
  v132 = swift_allocObject();
  *(v132 + 16) = v130;

  v19 = swift_allocObject();
  v20 = v132;
  v152 = v19;
  *(v19 + 16) = v131;
  *(v19 + 24) = v20;

  v160 = swift_allocObject();
  *(v160 + 16) = v134;
  v202 = sub_1B0E43988();
  v203 = sub_1B0E458D8();
  v155 = 17;
  v164 = swift_allocObject();
  v142 = 16;
  *(v164 + 16) = 16;
  v166 = swift_allocObject();
  v146 = 4;
  *(v166 + 16) = 4;
  v21 = swift_allocObject();
  v137 = v21;
  *(v21 + 16) = v135;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v137;
  v168 = v22;
  *(v22 + 16) = v136;
  *(v22 + 24) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = 0;
  v172 = swift_allocObject();
  *(v172 + 16) = 1;
  v24 = swift_allocObject();
  v25 = v139;
  v141 = v24;
  *(v24 + 16) = v138;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v141;
  v174 = v26;
  *(v26 + 16) = v140;
  *(v26 + 24) = v27;
  v176 = swift_allocObject();
  *(v176 + 16) = v142;
  v178 = swift_allocObject();
  *(v178 + 16) = v146;
  v28 = swift_allocObject();
  v145 = v28;
  *(v28 + 16) = v143;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v145;
  v180 = v29;
  *(v29 + 16) = v144;
  *(v29 + 24) = v30;
  v182 = swift_allocObject();
  *(v182 + 16) = 0;
  v184 = swift_allocObject();
  *(v184 + 16) = v146;
  v31 = swift_allocObject();
  v32 = v148;
  v150 = v31;
  *(v31 + 16) = v147;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v150;
  v186 = v33;
  *(v33 + 16) = v149;
  *(v33 + 24) = v34;
  v188 = swift_allocObject();
  *(v188 + 16) = 32;
  v190 = swift_allocObject();
  v156 = 8;
  *(v190 + 16) = 8;
  v35 = swift_allocObject();
  v36 = v152;
  v154 = v35;
  *(v35 + 16) = v151;
  *(v35 + 24) = v36;
  v37 = swift_allocObject();
  v38 = v154;
  v192 = v37;
  *(v37 + 16) = v153;
  *(v37 + 24) = v38;
  v194 = swift_allocObject();
  *(v194 + 16) = 0;
  v196 = swift_allocObject();
  *(v196 + 16) = v156;
  v39 = swift_allocObject();
  v40 = v160;
  v162 = v39;
  *(v39 + 16) = v157;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v162;
  v199 = v41;
  *(v41 + 16) = v161;
  *(v41 + 24) = v42;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v197 = sub_1B0E46A48();
  v200 = v43;

  v44 = v164;
  v45 = v200;
  *v200 = v163;
  v45[1] = v44;

  v46 = v166;
  v47 = v200;
  v200[2] = v165;
  v47[3] = v46;

  v48 = v168;
  v49 = v200;
  v200[4] = v167;
  v49[5] = v48;

  v50 = v170;
  v51 = v200;
  v200[6] = v169;
  v51[7] = v50;

  v52 = v172;
  v53 = v200;
  v200[8] = v171;
  v53[9] = v52;

  v54 = v174;
  v55 = v200;
  v200[10] = v173;
  v55[11] = v54;

  v56 = v176;
  v57 = v200;
  v200[12] = v175;
  v57[13] = v56;

  v58 = v178;
  v59 = v200;
  v200[14] = v177;
  v59[15] = v58;

  v60 = v180;
  v61 = v200;
  v200[16] = v179;
  v61[17] = v60;

  v62 = v182;
  v63 = v200;
  v200[18] = v181;
  v63[19] = v62;

  v64 = v184;
  v65 = v200;
  v200[20] = v183;
  v65[21] = v64;

  v66 = v186;
  v67 = v200;
  v200[22] = v185;
  v67[23] = v66;

  v68 = v188;
  v69 = v200;
  v200[24] = v187;
  v69[25] = v68;

  v70 = v190;
  v71 = v200;
  v200[26] = v189;
  v71[27] = v70;

  v72 = v192;
  v73 = v200;
  v200[28] = v191;
  v73[29] = v72;

  v74 = v194;
  v75 = v200;
  v200[30] = v193;
  v75[31] = v74;

  v76 = v196;
  v77 = v200;
  v200[32] = v195;
  v77[33] = v76;

  v78 = v199;
  v79 = v200;
  v200[34] = v198;
  v79[35] = v78;
  sub_1B0394964();

  if (os_log_type_enabled(v202, v203))
  {
    v80 = v109;
    v102 = sub_1B0E45D78();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v103 = sub_1B03949A8(0);
    v104 = sub_1B03949A8(1);
    v105 = &v208;
    v208 = v102;
    v106 = &v207;
    v207 = v103;
    v107 = &v206;
    v206 = v104;
    sub_1B0394A48(2, &v208);
    sub_1B0394A48(6, v105);
    v204 = v163;
    v205 = v164;
    sub_1B03949FC(&v204, v105, v106, v107);
    v108 = v80;
    if (v80)
    {

      __break(1u);
    }

    else
    {
      v204 = v165;
      v205 = v166;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v100 = 0;
      v204 = v167;
      v205 = v168;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v99 = 0;
      v204 = v169;
      v205 = v170;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v98 = 0;
      v204 = v171;
      v205 = v172;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v97 = 0;
      v204 = v173;
      v205 = v174;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v96 = 0;
      v204 = v175;
      v205 = v176;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v95 = 0;
      v204 = v177;
      v205 = v178;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v94 = 0;
      v204 = v179;
      v205 = v180;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v93 = 0;
      v204 = v181;
      v205 = v182;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v92 = 0;
      v204 = v183;
      v205 = v184;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v91 = 0;
      v204 = v185;
      v205 = v186;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v90 = 0;
      v204 = v187;
      v205 = v188;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v89 = 0;
      v204 = v189;
      v205 = v190;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v88 = 0;
      v204 = v191;
      v205 = v192;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v87 = 0;
      v204 = v193;
      v205 = v194;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v86 = 0;
      v204 = v195;
      v205 = v196;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      v85 = 0;
      v204 = v198;
      v205 = v199;
      sub_1B03949FC(&v204, &v208, &v207, &v206);
      _os_log_impl(&dword_1B0389000, v202, v203, "[%.*hhx-%.*X] Updating fetch-state for mailbox row ID %s -> %ld", v102, 0x2Bu);
      sub_1B03998A8(v103);
      sub_1B03998A8(v104);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v202);
  (*(v119 + 8))(v120, v114);
  sub_1B041A044();
  v84 = sub_1B0E455A8();
  v83 = *MEMORY[0x1E699A6A8];
  MEMORY[0x1E69E5928](v83);
  [v118 activityWithID:v116 setUserInfoObject:v84 forKey:v83];
  MEMORY[0x1E69E5920](v83);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06B571C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t *), uint64_t a8, uint64_t a9)
{
  v367 = a1;
  v368 = a2;
  v355 = a3;
  v371 = a4;
  v360 = a5;
  v356 = a6;
  v357 = a7;
  v358 = a8;
  v359 = a9;
  v288 = sub_1B039BBE8;
  v289 = sub_1B0394C30;
  v290 = sub_1B0394C24;
  v291 = sub_1B039BA2C;
  v292 = sub_1B039BA88;
  v293 = sub_1B039BB94;
  v294 = sub_1B0394C24;
  v295 = sub_1B039BBA0;
  v296 = sub_1B039BC08;
  v297 = sub_1B03FB774;
  v298 = sub_1B06BCD8C;
  v299 = sub_1B0398F5C;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0399178;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0398F5C;
  v304 = sub_1B039BA94;
  v305 = sub_1B0398F5C;
  v306 = sub_1B0398F5C;
  v307 = sub_1B0399178;
  v308 = sub_1B0398F5C;
  v309 = sub_1B0398F5C;
  v310 = sub_1B03991EC;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0398F5C;
  v313 = sub_1B03992D4;
  v314 = sub_1B06B8A1C;
  v315 = sub_1B039BBE8;
  v316 = sub_1B0394C24;
  v317 = sub_1B039BA2C;
  v318 = sub_1B039BA88;
  v319 = sub_1B0394C24;
  v320 = sub_1B039BBA0;
  v321 = sub_1B039BC08;
  v322 = sub_1B03FB774;
  v323 = sub_1B06BCD8C;
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
  v338 = sub_1B03992D4;
  v400 = 0;
  v399 = 0;
  v398 = 0;
  v397 = 0;
  v395 = 0;
  v396 = 0;
  v394 = 0;
  v392 = 0;
  v393 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v339 = 0;
  v382 = 0;
  v372 = 0;
  v373 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v340 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v341 = &v144 - v340;
  v347 = 0;
  v342 = sub_1B0E43108();
  v343 = *(v342 - 8);
  v344 = v342 - 8;
  v345 = (*(v343 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v347);
  v346 = &v144 - v345;
  v400 = &v144 - v345;
  v348 = _s6LoggerVMa();
  v349 = (*(*(v348 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v347);
  v350 = &v144 - v349;
  v351 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v352 = &v144 - v351;
  v353 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v354 = &v144 - v353;
  v361 = sub_1B0E439A8();
  v362 = *(v361 - 8);
  v363 = v361 - 8;
  v365 = *(v362 + 64);
  v364 = (v365 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v371);
  v366 = &v144 - v364;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v369 = &v144 - v17;
  v399 = v367;
  v398 = v368;
  v370 = *v18;
  v397 = v370;
  v395 = v16;
  v396 = v19;
  v394 = v20;
  v392 = v21;
  v393 = v22;
  v391 = v23;
  v390 = v9;
  sub_1B06BC8E4(v16, v19);
  if (v371)
  {
    v286 = v371;
    v287 = v360;
    v285 = v360;
    v284 = v371;
    v372 = v371;
    v373 = v360;
    MEMORY[0x1E69E5928](v360);
    v389 = v285;
    MEMORY[0x1E69E5920](v284);
    MEMORY[0x1E69E5920](v285);
LABEL_11:
    sub_1B06BC2F4(v367, v341);
    if ((*(v343 + 48))(v341, 1, v342) == 1)
    {
      sub_1B06B97A8(v341);
    }

    else
    {
      (*(v343 + 32))(v346, v341, v342);
      v216 = v389;
      MEMORY[0x1E69E5928](v389);
      v217 = [v216 objectID];
      MEMORY[0x1E69E5920](v216);
      v374 = v370;
      sub_1B06A08E0(v346, v217, &v374, v359);
      MEMORY[0x1E69E5920](v217);
      (*(v343 + 8))(v346, v342);
    }

    (*(v362 + 16))(v366, v359, v361);
    sub_1B0394784(v359, v354);
    sub_1B0394784(v354, v352);
    sub_1B03F4FD0(v354, v350);
    v84 = (v352 + *(v348 + 20));
    v179 = *v84;
    v180 = *(v84 + 1);
    sub_1B039480C(v352);
    v182 = 24;
    v193 = 7;
    v85 = swift_allocObject();
    v86 = v180;
    v184 = v85;
    *(v85 + 16) = v179;
    *(v85 + 20) = v86;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v87 = swift_allocObject();
    v88 = v180;
    v181 = v87;
    *(v87 + 16) = v179;
    *(v87 + 20) = v88;

    v192 = 32;
    v89 = swift_allocObject();
    v90 = v181;
    v189 = v89;
    *(v89 + 16) = v288;
    *(v89 + 24) = v90;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v350);
    v194 = swift_allocObject();
    *(v194 + 16) = v370;
    v214 = sub_1B0E43988();
    v215 = sub_1B0E458D8();
    v191 = 17;
    v196 = swift_allocObject();
    v186 = 16;
    *(v196 + 16) = 16;
    v197 = swift_allocObject();
    v188 = 4;
    *(v197 + 16) = 4;
    v91 = swift_allocObject();
    v183 = v91;
    *(v91 + 16) = v289;
    *(v91 + 24) = 0;
    v92 = swift_allocObject();
    v93 = v183;
    v198 = v92;
    *(v92 + 16) = v290;
    *(v92 + 24) = v93;
    v199 = swift_allocObject();
    *(v199 + 16) = 0;
    v200 = swift_allocObject();
    *(v200 + 16) = 1;
    v94 = swift_allocObject();
    v95 = v184;
    v185 = v94;
    *(v94 + 16) = v291;
    *(v94 + 24) = v95;
    v96 = swift_allocObject();
    v97 = v185;
    v201 = v96;
    *(v96 + 16) = v292;
    *(v96 + 24) = v97;
    v202 = swift_allocObject();
    *(v202 + 16) = v186;
    v203 = swift_allocObject();
    *(v203 + 16) = v188;
    v98 = swift_allocObject();
    v187 = v98;
    *(v98 + 16) = v293;
    *(v98 + 24) = 0;
    v99 = swift_allocObject();
    v100 = v187;
    v204 = v99;
    *(v99 + 16) = v294;
    *(v99 + 24) = v100;
    v205 = swift_allocObject();
    *(v205 + 16) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v188;
    v101 = swift_allocObject();
    v102 = v189;
    v190 = v101;
    *(v101 + 16) = v295;
    *(v101 + 24) = v102;
    v103 = swift_allocObject();
    v104 = v190;
    v207 = v103;
    *(v103 + 16) = v296;
    *(v103 + 24) = v104;
    v208 = swift_allocObject();
    *(v208 + 16) = 0;
    v209 = swift_allocObject();
    *(v209 + 16) = 8;
    v105 = swift_allocObject();
    v106 = v194;
    v195 = v105;
    *(v105 + 16) = v297;
    *(v105 + 24) = v106;
    v107 = swift_allocObject();
    v108 = v195;
    v211 = v107;
    *(v107 + 16) = v298;
    *(v107 + 24) = v108;
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v210 = sub_1B0E46A48();
    v212 = v109;

    v110 = v196;
    v111 = v212;
    *v212 = v299;
    v111[1] = v110;

    v112 = v197;
    v113 = v212;
    v212[2] = v300;
    v113[3] = v112;

    v114 = v198;
    v115 = v212;
    v212[4] = v301;
    v115[5] = v114;

    v116 = v199;
    v117 = v212;
    v212[6] = v302;
    v117[7] = v116;

    v118 = v200;
    v119 = v212;
    v212[8] = v303;
    v119[9] = v118;

    v120 = v201;
    v121 = v212;
    v212[10] = v304;
    v121[11] = v120;

    v122 = v202;
    v123 = v212;
    v212[12] = v305;
    v123[13] = v122;

    v124 = v203;
    v125 = v212;
    v212[14] = v306;
    v125[15] = v124;

    v126 = v204;
    v127 = v212;
    v212[16] = v307;
    v127[17] = v126;

    v128 = v205;
    v129 = v212;
    v212[18] = v308;
    v129[19] = v128;

    v130 = v206;
    v131 = v212;
    v212[20] = v309;
    v131[21] = v130;

    v132 = v207;
    v133 = v212;
    v212[22] = v310;
    v133[23] = v132;

    v134 = v208;
    v135 = v212;
    v212[24] = v311;
    v135[25] = v134;

    v136 = v209;
    v137 = v212;
    v212[26] = v312;
    v137[27] = v136;

    v138 = v211;
    v139 = v212;
    v212[28] = v313;
    v139[29] = v138;
    sub_1B0394964();

    if (os_log_type_enabled(v214, v215))
    {
      v140 = v339;
      v172 = sub_1B0E45D78();
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v171 = 0;
      v173 = sub_1B03949A8(0);
      v174 = sub_1B03949A8(v171);
      v175 = &v379;
      v379 = v172;
      v176 = &v378;
      v378 = v173;
      v177 = &v377;
      v377 = v174;
      sub_1B0394A48(0, &v379);
      sub_1B0394A48(5, v175);
      v375 = v299;
      v376 = v196;
      sub_1B03949FC(&v375, v175, v176, v177);
      v178 = v140;
      if (v140)
      {

        __break(1u);
      }

      else
      {
        v375 = v300;
        v376 = v197;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v168 = 0;
        v375 = v301;
        v376 = v198;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v167 = 0;
        v375 = v302;
        v376 = v199;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v166 = 0;
        v375 = v303;
        v376 = v200;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v165 = 0;
        v375 = v304;
        v376 = v201;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v164 = 0;
        v375 = v305;
        v376 = v202;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v163 = 0;
        v375 = v306;
        v376 = v203;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v162 = 0;
        v375 = v307;
        v376 = v204;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v161 = 0;
        v375 = v308;
        v376 = v205;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v160 = 0;
        v375 = v309;
        v376 = v206;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v159 = 0;
        v375 = v310;
        v376 = v207;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v158 = 0;
        v375 = v311;
        v376 = v208;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v157 = 0;
        v375 = v312;
        v376 = v209;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v156 = 0;
        v375 = v313;
        v376 = v211;
        sub_1B03949FC(&v375, &v379, &v378, &v377);
        v155 = 0;
        _os_log_impl(&dword_1B0389000, v214, v215, "[%.*hhx-%.*X] Completing activity for mailbox row ID %lld)", v172, 0x21u);
        v154 = 0;
        sub_1B03998A8(v173);
        sub_1B03998A8(v174);
        sub_1B0E45D58();

        v169 = v155;
      }
    }

    else
    {
      v141 = v339;

      v169 = v141;
    }

    v142 = v169;
    MEMORY[0x1E69E5920](v214);
    (*(v362 + 8))(v366, v361);
    v151 = v389;
    MEMORY[0x1E69E5928](v389);
    v152 = [v151 objectID];
    MEMORY[0x1E69E5920](v151);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35A0, &qword_1B0E99850);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    result = sub_1B03F1A20(v314, 0, v153, MEMORY[0x1E69E73E0], v143, v232, &v380);
    if (v142)
    {
      __break(1u);
    }

    else
    {
      v150 = v380;
      if (v380)
      {
        v149 = v150;
        v146 = v150;
        v147 = sub_1B0E42CC8();

        v148 = v147;
      }

      else
      {
        v148 = 0;
      }

      v145 = v148;
      [v356 activityWithID:v152 finishedWithError:?];
      MEMORY[0x1E69E5920](v145);
      MEMORY[0x1E69E5920](v152);
      MEMORY[0x1E69E5920](v389);
      return sub_1B06B89A0();
    }

    return result;
  }

  v388 = v370;
  v283 = v357(&v388);
  if (v283)
  {
    v282 = v283;
    v281 = v283;
    v382 = v283;
    v381 = v370;
    sub_1B06B0708(&v381, v283, 4, 0, 0, 0, v367, v359);
    v279 = v24;
    v280 = v25;
    MEMORY[0x1E69E5928](v25);
    MEMORY[0x1E69E5920](v279);
    MEMORY[0x1E69E5920](v280);
    v389 = v280;
    MEMORY[0x1E69E5920](v281);
    goto LABEL_11;
  }

  (*(v362 + 16))(v369, v359, v361);
  sub_1B0394784(v359, v354);
  sub_1B0394784(v354, v352);
  sub_1B03F4FD0(v354, v350);
  v26 = (v352 + *(v348 + 20));
  v242 = *v26;
  v243 = *(v26 + 1);
  sub_1B039480C(v352);
  v245 = 24;
  v256 = 7;
  v27 = swift_allocObject();
  v28 = v243;
  v247 = v27;
  *(v27 + 16) = v242;
  *(v27 + 20) = v28;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v29 = swift_allocObject();
  v30 = v243;
  v244 = v29;
  *(v29 + 16) = v242;
  *(v29 + 20) = v30;

  v255 = 32;
  v31 = swift_allocObject();
  v32 = v244;
  v252 = v31;
  *(v31 + 16) = v315;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v350);
  v257 = swift_allocObject();
  *(v257 + 16) = v370;
  v277 = sub_1B0E43988();
  v278 = sub_1B0E458E8();
  v254 = 17;
  v259 = swift_allocObject();
  v249 = 16;
  *(v259 + 16) = 16;
  v260 = swift_allocObject();
  v251 = 4;
  *(v260 + 16) = 4;
  v33 = swift_allocObject();
  v246 = v33;
  *(v33 + 16) = v289;
  *(v33 + 24) = 0;
  v34 = swift_allocObject();
  v35 = v246;
  v261 = v34;
  *(v34 + 16) = v316;
  *(v34 + 24) = v35;
  v262 = swift_allocObject();
  *(v262 + 16) = 0;
  v263 = swift_allocObject();
  *(v263 + 16) = 1;
  v36 = swift_allocObject();
  v37 = v247;
  v248 = v36;
  *(v36 + 16) = v317;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v248;
  v264 = v38;
  *(v38 + 16) = v318;
  *(v38 + 24) = v39;
  v265 = swift_allocObject();
  *(v265 + 16) = v249;
  v266 = swift_allocObject();
  *(v266 + 16) = v251;
  v40 = swift_allocObject();
  v250 = v40;
  *(v40 + 16) = v293;
  *(v40 + 24) = 0;
  v41 = swift_allocObject();
  v42 = v250;
  v267 = v41;
  *(v41 + 16) = v319;
  *(v41 + 24) = v42;
  v268 = swift_allocObject();
  *(v268 + 16) = 0;
  v269 = swift_allocObject();
  *(v269 + 16) = v251;
  v43 = swift_allocObject();
  v44 = v252;
  v253 = v43;
  *(v43 + 16) = v320;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v253;
  v270 = v45;
  *(v45 + 16) = v321;
  *(v45 + 24) = v46;
  v271 = swift_allocObject();
  *(v271 + 16) = 0;
  v272 = swift_allocObject();
  *(v272 + 16) = 8;
  v47 = swift_allocObject();
  v48 = v257;
  v258 = v47;
  *(v47 + 16) = v322;
  *(v47 + 24) = v48;
  v49 = swift_allocObject();
  v50 = v258;
  v274 = v49;
  *(v49 + 16) = v323;
  *(v49 + 24) = v50;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v273 = sub_1B0E46A48();
  v275 = v51;

  v52 = v259;
  v53 = v275;
  *v275 = v324;
  v53[1] = v52;

  v54 = v260;
  v55 = v275;
  v275[2] = v325;
  v55[3] = v54;

  v56 = v261;
  v57 = v275;
  v275[4] = v326;
  v57[5] = v56;

  v58 = v262;
  v59 = v275;
  v275[6] = v327;
  v59[7] = v58;

  v60 = v263;
  v61 = v275;
  v275[8] = v328;
  v61[9] = v60;

  v62 = v264;
  v63 = v275;
  v275[10] = v329;
  v63[11] = v62;

  v64 = v265;
  v65 = v275;
  v275[12] = v330;
  v65[13] = v64;

  v66 = v266;
  v67 = v275;
  v275[14] = v331;
  v67[15] = v66;

  v68 = v267;
  v69 = v275;
  v275[16] = v332;
  v69[17] = v68;

  v70 = v268;
  v71 = v275;
  v275[18] = v333;
  v71[19] = v70;

  v72 = v269;
  v73 = v275;
  v275[20] = v334;
  v73[21] = v72;

  v74 = v270;
  v75 = v275;
  v275[22] = v335;
  v75[23] = v74;

  v76 = v271;
  v77 = v275;
  v275[24] = v336;
  v77[25] = v76;

  v78 = v272;
  v79 = v275;
  v275[26] = v337;
  v79[27] = v78;

  v80 = v274;
  v81 = v275;
  v275[28] = v338;
  v81[29] = v80;
  sub_1B0394964();

  if (os_log_type_enabled(v277, v278))
  {
    v82 = v339;
    v235 = sub_1B0E45D78();
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v234 = 0;
    v236 = sub_1B03949A8(0);
    v237 = sub_1B03949A8(v234);
    v238 = &v387;
    v387 = v235;
    v239 = &v386;
    v386 = v236;
    v240 = &v385;
    v385 = v237;
    sub_1B0394A48(0, &v387);
    sub_1B0394A48(5, v238);
    v383 = v324;
    v384 = v259;
    sub_1B03949FC(&v383, v238, v239, v240);
    v241 = v82;
    if (v82)
    {

      __break(1u);
    }

    else
    {
      v383 = v325;
      v384 = v260;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v231 = 0;
      v383 = v326;
      v384 = v261;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v230 = 0;
      v383 = v327;
      v384 = v262;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v229 = 0;
      v383 = v328;
      v384 = v263;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v228 = 0;
      v383 = v329;
      v384 = v264;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v227 = 0;
      v383 = v330;
      v384 = v265;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v226 = 0;
      v383 = v331;
      v384 = v266;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v225 = 0;
      v383 = v332;
      v384 = v267;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v224 = 0;
      v383 = v333;
      v384 = v268;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v223 = 0;
      v383 = v334;
      v384 = v269;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v222 = 0;
      v383 = v335;
      v384 = v270;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v221 = 0;
      v383 = v336;
      v384 = v271;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v220 = 0;
      v383 = v337;
      v384 = v272;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      v219 = 0;
      v383 = v338;
      v384 = v274;
      sub_1B03949FC(&v383, &v387, &v386, &v385);
      _os_log_impl(&dword_1B0389000, v277, v278, "[%.*hhx-%.*X] Unable to get mailbox-object-id for completed mailbox row ID %lld", v235, 0x21u);
      v218 = 0;
      sub_1B03998A8(v236);
      sub_1B03998A8(v237);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v277);
  (*(v362 + 8))(v369, v361);
  return sub_1B06B89A0();
}

uint64_t sub_1B06B8A1C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v9 = 0;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for ConnectionStatus.Error(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v4 - v5;
  v9 = v2;
  sub_1B0E45968();
  sub_1B06BB524(v6, v7);
  result = sub_1B0714EC4(v7);
  *v8 = result;
  return result;
}

uint64_t sub_1B06B8AE0(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v49 = a1;
  v41 = a2;
  v56 = a3;
  v40 = a4;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v62 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  v38 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v22 - v38;
  v53 = 0;
  v42 = sub_1B0E43108();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v22 - v45;
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v22 - v47;
  v71 = &v22 - v47;
  v70 = v8;
  v68 = v9;
  v69 = v10 & 1;
  v67 = v11;
  v66 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1750, &qword_1B0E99938);
  v52 = sub_1B0E46A48();
  v50 = v12;
  sub_1B06BD0C8(MEMORY[0x1E699A6B8], v12);
  MEMORY[0x1E69E5928](v49);
  v13 = sub_1B06BD108();
  v14 = v49;
  v15 = v50;
  v16 = v13;
  v17 = v52;
  v50[4] = v16;
  v15[1] = v14;
  sub_1B0394964();
  v55 = v17;
  v54 = type metadata accessor for EMActivityUserInfoKey();
  sub_1B0694EF0();
  v65 = sub_1B0E445D8();
  if ((v56 & 1) == 0)
  {
    v37 = v41;
    v30 = v41;
    v62 = v41;
    v31 = *MEMORY[0x1E699A6A8];
    MEMORY[0x1E69E5928](v31);
    sub_1B041A044();
    v33 = v61;
    v61[3] = MEMORY[0x1E69E6530];
    v61[0] = v18;
    v32 = &v60;
    v60 = v31;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1758, &qword_1B0E99940);
    v34 = &v65;
    sub_1B0E44788();
    v35 = *MEMORY[0x1E699A6C0];
    MEMORY[0x1E69E5928](v35);
    v59 = MEMORY[0x1E69E6370];
    v58 = 1;
    v57 = v35;
    sub_1B0E44788();
  }

  sub_1B06BC2F4(v40, v39);
  if ((*(v43 + 48))(v39, 1, v42) == 1)
  {
    sub_1B06B97A8(v39);
  }

  else
  {
    v19 = v46;
    (*(v43 + 32))(v48, v39, v42);
    v24 = *MEMORY[0x1E699A6B0];
    MEMORY[0x1E69E5928](v24);
    (*(v43 + 16))(v19, v48, v42);
    v25 = sub_1B0E43068();
    v20 = sub_1B06BD16C();
    v27 = v64;
    v64[3] = v20;
    v64[0] = v25;
    v26 = &v63;
    v63 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1758, &qword_1B0E99940);
    sub_1B0E44788();
    v29 = *(v43 + 8);
    v28 = v43 + 8;
    v29(v46, v42);
    v29(v48, v42);
  }

  v22 = &v65;
  v23 = v65;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(v22);
  return v23;
}

uint64_t *sub_1B06B91B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B06B916C();
  return a1;
}

uint64_t sub_1B06B91F0()
{
  v1 = *(_s8ActivityVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B069AD10(v2);
}

void *sub_1B06B9254(void *a1, void *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1690, &qword_1B0E99888);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1680, &qword_1B0E99878);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v13 = a2 + *(v18 + 48);
    v14 = a1 + *(v18 + 48);
    v15 = type metadata accessor for Activity.MailboxStatus(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v13 = *v14;
      v8 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = &v13[*(v8 + 20)];
      __src = &v14[*(v8 + 20)];
      v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(__src, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v3 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(__dst, __src, *(v12 + 64));
        }

        else
        {
          v2 = sub_1B0E441D8();
          (*(*(v2 - 8) + 32))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v12 + 56))(__dst, 0, 1, v11);
      }

      v4 = &v13[*(v8 + 24)];
      v5 = &v14[*(v8 + 24)];
      *v4 = *v5;
      v4[8] = v5[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v13, v14, *(*(v15 - 8) + 64));
    }

    (*(v19 + 56))(a2, 0, 1, v18);
  }

  return a2;
}

uint64_t _s8ActivityV4DiffV4KindOMa()
{
  v1 = qword_1EB6DBD80;
  if (!qword_1EB6DBD80)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B06B9620()
{
  v2 = qword_1EB6DB818;
  if (!qword_1EB6DB818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16A0, &qword_1B0E99898);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06B96A8()
{
  v2 = qword_1EB6DBFF8;
  if (!qword_1EB6DBFF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06B9720()
{
  v2 = qword_1EB6DB820;
  if (!qword_1EB6DB820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16B0, &qword_1B0E998A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB820);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06B97A8(uint64_t a1)
{
  v3 = sub_1B0E43108();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1B06B9850(void *a1, void *a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16C8, &qword_1B0E998C0);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(a1, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16B8, &qword_1B0E998B0);
    memcpy(a2, a1, *(*(v9 - 8) + 64));
    return a2;
  }

  *a2 = *a1;
  v22 = a2 + *(v28 + 48);
  v23 = a1 + *(v28 + 48);
  v24 = _s8ActivityV4DiffV4KindOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *v22 = *v23;
        v11 = type metadata accessor for ConnectionStatus.Error(0);
        v12 = &v22[*(v11 + 20)];
        v13 = &v23[*(v11 + 20)];
        v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(v13, 1))
        {
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
          memcpy(v12, v13, *(*(v6 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v12, v13, *(v15 + 64));
          }

          else
          {
            v5 = sub_1B0E441D8();
            (*(*(v5 - 8) + 32))(v12, v13);
            swift_storeEnumTagMultiPayload();
          }

          (*(v15 + 56))(v12, 0, 1, v14);
        }

        v7 = &v22[*(v11 + 24)];
        v8 = &v23[*(v11 + 24)];
        *v7 = *v8;
        v7[8] = v8[8];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v22, v23, *(*(v24 - 8) + 64));
      }

      goto LABEL_20;
    }

    v16 = sub_1B0E43108();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v23, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(v22, v23, *(*(v4 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v22, v23, v16);
      (*(v17 + 56))(v22, 0, 1, v16);
    }
  }

  else
  {
    *v22 = *v23;
    *(v22 + 10) = *(v23 + 10);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
    __dst = &v22[*(v2 + 48)];
    __src = &v23[*(v2 + 48)];
    v20 = sub_1B0E43108();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v21 + 32))(__dst, __src, v20);
      (*(v21 + 56))(__dst, 0, 1, v20);
    }
  }

  swift_storeEnumTagMultiPayload();
LABEL_20:
  (*(v29 + 56))(a2, 0, 1, v28);
  return a2;
}

_OWORD *sub_1B06B9E3C(_OWORD *a1, _OWORD *a2)
{
  v23 = _s8ActivityV4DiffV4KindOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      *a2 = *a1;
      *(a2 + 10) = *(a1 + 10);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
      v17 = a2 + *(v2 + 48);
      v18 = a1 + *(v2 + 48);
      v19 = sub_1B0E43108();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v18, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(v17, v18, *(*(v3 - 8) + 64));
      }

      else
      {
        (*(v20 + 32))(v17, v18, v19);
        (*(v20 + 56))(v17, 0, 1, v19);
      }

      goto LABEL_8;
    case 2:
      v15 = sub_1B0E43108();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a1, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(a2, a1, *(*(v4 - 8) + 64));
      }

      else
      {
        (*(v16 + 32))(a2, a1, v15);
        (*(v16 + 56))(a2, 0, 1, v15);
      }

LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a2;
    case 3:
      *a2 = *a1;
      v10 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = a2 + *(v10 + 20);
      __src = a1 + *(v10 + 20);
      v13 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(__src, 1))
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(__dst, __src, *(v14 + 64));
        }

        else
        {
          v5 = sub_1B0E441D8();
          (*(*(v5 - 8) + 32))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v14 + 56))(__dst, 0, 1, v13);
      }

      v7 = a2 + *(v10 + 24);
      v8 = a1 + *(v10 + 24);
      *v7 = *v8;
      v7[8] = v8[8];
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a2, a1, *(*(v23 - 8) + 64));
      break;
  }

  return a2;
}

_OWORD *sub_1B06BA32C(_OWORD *a1, _OWORD *a2)
{
  _s8ActivityV4DiffV4KindOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      *a2 = *a1;
      *(a2 + 10) = *(a1 + 10);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8);
      v23 = a2 + *(v2 + 48);
      v24 = a1 + *(v2 + 48);
      v25 = sub_1B0E43108();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v24, 1))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(v23, v24, *(*(v3 - 8) + 64));
      }

      else
      {
        (*(v26 + 16))(v23, v24, v25);
        (*(v26 + 56))(v23, 0, 1, v25);
      }

      goto LABEL_8;
    case 1:
      v22 = *a1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a2 = v22;
      swift_storeEnumTagMultiPayload();
      return a2;
    case 2:
      v20 = sub_1B0E43108();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(a1, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
        memcpy(a2, a1, *(*(v4 - 8) + 64));
      }

      else
      {
        (*(v21 + 16))(a2, a1, v20);
        (*(v21 + 56))(a2, 0, 1, v20);
      }

LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a2;
  }

  *a2 = *a1;
  v15 = type metadata accessor for ConnectionStatus.Error(0);
  __dst = (a2 + *(v15 + 20));
  __src = (a1 + *(v15 + 20));
  v18 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(__src, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14)
    {
      if (v14 == 1)
      {
        *__dst = *__src;
        v12 = __src[1];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __dst[1] = v12;
        __dst[2] = __src[2];
        v13 = __src[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __dst[3] = v13;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *__dst = *__src;
        if (v14 == 2)
        {
          v11 = __src[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v11;
        }

        else
        {
          v10 = __src[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __dst[1] = v10;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v5 = sub_1B0E441D8();
      (*(*(v5 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
    }

    (*(v19 + 56))(__dst, 0, 1, v18);
  }

  v7 = a2 + *(v15 + 24);
  v8 = a1 + *(v15 + 24);
  *v7 = *v8;
  v7[8] = v8[8];
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1B06BA8E4()
{
  v1 = *(_s8ActivityV4DiffV4KindOMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B06A9508(v2);
}

uint64_t *sub_1B06BA948(uint64_t *a1)
{
  _s8ActivityV4DiffV4KindOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v1 = *a1;

        break;
      case 2:
        v10 = sub_1B0E43108();
        v11 = *(v10 - 8);
        if (!(*(v11 + 48))(a1, 1))
        {
          (*(v11 + 8))(a1, v10);
        }

        break;
      case 3:
        v8 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v9 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v9 - 8) + 48))(v8, 1))
        {
          v7 = swift_getEnumCaseMultiPayload();
          if (v7)
          {
            if (v7 == 1)
            {
              v3 = *(v8 + 1);

              v4 = *(v8 + 3);
            }

            else if (v7 == 2 || v7 == 3)
            {
              v5 = *(v8 + 1);
            }
          }

          else
          {
            v2 = sub_1B0E441D8();
            (*(*(v2 - 8) + 8))(v8);
          }
        }

        break;
    }
  }

  else
  {
    v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v13 = sub_1B0E43108();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v12, 1))
    {
      (*(v14 + 8))(v12, v13);
    }
  }

  return a1;
}

void *sub_1B06BAC30(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
    MEMORY[0x1E69E5920](a1[1]);
  }

  return a1;
}

unint64_t sub_1B06BAC8C()
{
  v2 = qword_1EB6E16E8;
  if (!qword_1EB6E16E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16E0, &qword_1B0E998D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E16E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BAD14()
{
  v2 = qword_1EB6DACC0;
  if (!qword_1EB6DACC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DACC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BAD78()
{
  v2 = qword_1EB6E16F8;
  if (!qword_1EB6E16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E16F0, &qword_1B0E998E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E16F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B06BAE00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B06B916C();
  v6 = a1[6];

  return a1;
}

uint64_t _s18EmailActivityStateO7RunningVMa()
{
  v1 = qword_1EB6DC9C8;
  if (!qword_1EB6DC9C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s18EmailActivityStateOMa()
{
  v1 = qword_1EB6DC9B8;
  if (!qword_1EB6DC9B8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

_BYTE *sub_1B06BAF3C(_BYTE *a1, _BYTE *a2)
{
  v20 = _s18EmailActivityStateOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v9 = type metadata accessor for ConnectionStatus.Error(0);
      v10 = &a2[*(v9 + 20)];
      __src = &a1[*(v9 + 20)];
      v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(__src, 1))
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(v10, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v10, __src, *(v13 + 64));
        }

        else
        {
          v4 = sub_1B0E441D8();
          (*(*(v4 - 8) + 32))(v10, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v13 + 56))(v10, 0, 1, v12);
      }

      v6 = &a2[*(v9 + 24)];
      v7 = &a1[*(v9 + 24)];
      *v6 = *v7;
      v6[8] = v7[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v20 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    *(a2 + 3) = *(a1 + 3);
    v2 = _s18EmailActivityStateO7RunningVMa();
    __dst = &a2[*(v2 + 24)];
    v15 = &a1[*(v2 + 24)];
    v16 = sub_1B0E43108();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(__dst, v15, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(__dst, v15, v16);
      (*(v17 + 56))(__dst, 0, 1, v16);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_BYTE *sub_1B06BB304(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v8 = type metadata accessor for ConnectionStatus.Error(0);
  v9 = *(v8 + 20);
  v11 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a1[v9], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(&a2[v9], &a1[v9], *(*(v3 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a2[v9], &a1[v9], *(v12 + 64));
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 32))();
      swift_storeEnumTagMultiPayload();
    }

    (*(v12 + 56))(&a2[v9], 0, 1, v11);
  }

  result = a2;
  v5 = &a2[*(v8 + 24)];
  v6 = &a1[*(v8 + 24)];
  *v5 = *v6;
  v5[8] = v6[8];
  return result;
}

_BYTE *sub_1B06BB524(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v14 = type metadata accessor for ConnectionStatus.Error(0);
  v15 = *(v14 + 20);
  v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&a1[v15], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
    memcpy(&a2[v15], &a1[v15], *(*(v3 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = &a2[v15];
        *&a2[v15] = *&a1[v15];
        v9 = *&a1[v15 + 8];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10[1] = v9;
        v10[2] = *&a1[v15 + 16];
        v11 = *&a1[v15 + 24];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10[3] = v11;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        *&a2[v15] = *&a1[v15];
        if (EnumCaseMultiPayload == 2)
        {
          v8 = *&a1[v15 + 8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *&a2[v15 + 8] = v8;
        }

        else
        {
          v7 = *&a1[v15 + 8];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *&a2[v15 + 8] = v7;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = sub_1B0E441D8();
      (*(*(v2 - 8) + 16))();
      swift_storeEnumTagMultiPayload();
    }

    (*(v18 + 56))(&a2[v15], 0, 1, v17);
  }

  result = a2;
  v5 = *(v14 + 24);
  v6 = &a2[v5];
  *v6 = *&a1[v5];
  v6[8] = a1[v5 + 8];
  return result;
}

uint64_t sub_1B06BB840(uint64_t a1)
{
  v7 = *(type metadata accessor for ConnectionStatus.Error(0) + 20);
  v9 = type metadata accessor for ConnectionStatus.Error.Details(0);
  if (!(*(*(v9 - 8) + 48))(a1 + v7, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v2 = *(a1 + v7 + 8);

        v3 = *(a1 + v7 + 24);
      }

      else if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        v4 = *(a1 + v7 + 8);
      }
    }

    else
    {
      v1 = sub_1B0E441D8();
      (*(*(v1 - 8) + 8))(a1 + v7);
    }
  }

  return a1;
}

uint64_t sub_1B06BB9BC(uint64_t a1)
{
  _s18EmailActivityStateOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v8 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v8 - 8) + 48))(v7, 1))
      {
        v6 = swift_getEnumCaseMultiPayload();
        if (v6)
        {
          if (v6 == 1)
          {
            v2 = *(v7 + 8);

            v3 = *(v7 + 24);
          }

          else if (v6 == 2 || v6 == 3)
          {
            v4 = *(v7 + 8);
          }
        }

        else
        {
          v1 = sub_1B0E441D8();
          (*(*(v1 - 8) + 8))(v7);
        }
      }
    }
  }

  else
  {
    v9 = a1 + *(_s18EmailActivityStateO7RunningVMa() + 24);
    v10 = sub_1B0E43108();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v9, 1))
    {
      (*(v11 + 8))(v9, v10);
    }
  }

  return a1;
}

uint64_t sub_1B06BBBE8(uint64_t a1)
{
  v2 = *(_s18EmailActivityStateO7RunningVMa() + 24);
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

uint64_t sub_1B06BBCB8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(_s18EmailActivityStateO7RunningVMa() + 24);
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B06BBE40(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v5 = *(_s18EmailActivityStateO7RunningVMa() + 24);
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1 + v5, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy((a2 + v5), (a1 + v5), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))();
    (*(v8 + 56))(a2 + v5, 0, 1, v7);
  }

  return a2;
}

uint64_t *sub_1B06BBFC8(uint64_t *a1)
{
  v17 = _s8ActivityV4DiffV4KindOMa();
  if (!(*(*(v17 - 8) + 48))(a1, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v1 = *a1;

          break;
        case 2:
          v10 = sub_1B0E43108();
          v11 = *(v10 - 8);
          if (!(*(v11 + 48))(a1, 1))
          {
            (*(v11 + 8))(a1, v10);
          }

          break;
        case 3:
          v8 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
          v9 = type metadata accessor for ConnectionStatus.Error.Details(0);
          if (!(*(*(v9 - 8) + 48))(v8, 1))
          {
            v7 = swift_getEnumCaseMultiPayload();
            if (v7)
            {
              if (v7 == 1)
              {
                v3 = *(v8 + 1);

                v4 = *(v8 + 3);
              }

              else if (v7 == 2 || v7 == 3)
              {
                v5 = *(v8 + 1);
              }
            }

            else
            {
              v2 = sub_1B0E441D8();
              (*(*(v2 - 8) + 8))(v8);
            }
          }

          break;
      }
    }

    else
    {
      v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
      v13 = sub_1B0E43108();
      v14 = *(v13 - 8);
      if (!(*(v14 + 48))(v12, 1))
      {
        (*(v14 + 8))(v12, v13);
      }
    }
  }

  return a1;
}

void *sub_1B06BC2F4(const void *a1, void *a2)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t _s8ActivityV4DiffV6UpdateOMa()
{
  v1 = qword_1EB6DBD68;
  if (!qword_1EB6DBD68)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B06BC490()
{
  v2 = qword_1EB6DAA40;
  if (!qword_1EB6DAA40)
  {
    type metadata accessor for EMActivityFetchState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06BC510(uint64_t a1)
{
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_1B06BC63C()
{
  v2 = qword_1EB6DECF8;
  if (!qword_1EB6DECF8)
  {
    sub_1B0E43108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DECF8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B06BC6BC(const void *a1, void *a2)
{
  v7 = sub_1B0E43108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1B06BC8E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5928](result);
    return MEMORY[0x1E69E5928](a2);
  }

  return result;
}

uint64_t sub_1B06BC934(uint64_t result, uint64_t a2)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
    return MEMORY[0x1E69E5920](a2);
  }

  return result;
}

void *sub_1B06BC984(const void *a1, void *a2)
{
  v6 = sub_1B0E43108();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *sub_1B06BCAAC(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B0E466C8();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B0E466C8();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

char *sub_1B06BCC28(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B0E466C8();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

uint64_t sub_1B06BCD50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B06BCD98()
{
  v2 = qword_1EB6DED50;
  if (!qword_1EB6DED50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BCE10()
{
  v2 = qword_1EB6DB198;
  if (!qword_1EB6DB198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1728, &qword_1B0E99910);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB198);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B06BCE98(const void *a1, void *a2)
{
  updated = _s8ActivityV4DiffV6UpdateOMa();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(updated - 8) + 64));
  }

  return a2;
}

void *sub_1B06BCF60(const void *a1, void *a2)
{
  updated = _s8ActivityV4DiffV6UpdateOMa();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(updated - 8) + 64));
  }

  return a2;
}

uint64_t sub_1B06BD028(uint64_t a1)
{
  _s8ActivityV4DiffV6UpdateOMa();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = sub_1B0E43108();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_1B06BD0C8(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B06BD108()
{
  v2 = qword_1EB6DAB00;
  if (!qword_1EB6DAB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BD16C()
{
  v2 = qword_1EB6DA5D8;
  if (!qword_1EB6DA5D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B06BD220()
{
  v3 = sub_1B06BD300();
  if (v0 <= 0x3F)
  {
    v3 = _s8ActivityVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1B06BD300()
{
  v2 = qword_1EB6DA970;
  if (!qword_1EB6DA970)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA970);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B06BD3B4()
{
  v4 = sub_1B06BD4B8();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B06BD568();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B0E43108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B06BD4B8()
{
  v4 = qword_1EB6DB738;
  if (!qword_1EB6DB738)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    sub_1B0417568();
    v3 = sub_1B0E44708();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB738);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BD568()
{
  v4 = qword_1EB6DAD28;
  if (!qword_1EB6DAD28)
  {
    sub_1B0417568();
    v3 = sub_1B0E45588();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DAD28);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BD690()
{
  v5 = sub_1B06BD7AC();
  if (v0 <= 0x3F)
  {
    v5 = sub_1B06BD868();
    if (v1 <= 0x3F)
    {
      v5 = sub_1B06BD904();
      if (v2 <= 0x3F)
      {
        v5 = type metadata accessor for ConnectionStatus.Error(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1B06BD7AC()
{
  v4 = qword_1EB6DBD78;
  if (!qword_1EB6DBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2990, &qword_1B0E9B060);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v4 = TupleTypeMetadata2;
    if (!v0)
    {
      v1 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_1EB6DBD78);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BD868()
{
  v4 = qword_1EB6DB1A0;
  if (!qword_1EB6DB1A0)
  {
    _s8ActivityV4DiffV6UpdateOMa();
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB1A0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BD904()
{
  v4 = qword_1EB6DECE8;
  if (!qword_1EB6DECE8)
  {
    v3 = sub_1B04376A0();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DECE8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BD990(void *a1, uint64_t *a2)
{
  v4 = *a2;

  *a1 = v4;
  return *a1 + 16;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 10);
  *(a1 + 10) = result;
  return result;
}

uint64_t sub_1B06BD9E4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[26])
    {
      v5 = *a1 + 252;
    }

    else
    {
      v4 = -1;
      if ((*a1 & 0xFE) != 0)
      {
        v4 = (*a1 + 2147483646) & 0x7FFFFFFF;
      }

      v2 = v4 - 2;
      if (v4 - 2 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B06BDB14(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 26);
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1B06BDD70()
{
  State = sub_1B06BDE5C();
  if (v0 <= 0x3F)
  {
    State = type metadata accessor for EMActivityFetchState();
    if (v1 <= 0x3F)
    {
      State = sub_1B0E43108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return State;
}

uint64_t sub_1B06BDE5C()
{
  v4 = qword_1EB6DC9D8;
  if (!qword_1EB6DC9D8)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DC9D8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B06BDEF0()
{
  v4 = _s18EmailActivityStateO7RunningVMa();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B06BDFDC();
    if (v1 <= 0x3F)
    {
      v4 = type metadata accessor for ConnectionStatus.Error(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B06BDFDC()
{
  v2 = qword_1EB6DADC8;
  if (!qword_1EB6DADC8)
  {
    v0 = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EB6DADC8);
    return v0;
  }

  return v2;
}

uint64_t sub_1B06BE078()
{
  State = sub_1B06BDE5C();
  if (v0 <= 0x3F)
  {
    State = type metadata accessor for EMActivityFetchState();
    if (v1 <= 0x3F)
    {
      State = sub_1B04376A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return State;
}

uint64_t sub_1B06BE190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B06BE2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B06BE4B8()
{
  v2 = qword_1EB6E1760;
  if (!qword_1EB6E1760)
  {
    type metadata accessor for Activity.MailboxStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06BE538()
{
  v2 = qword_1EB6E1768;
  if (!qword_1EB6E1768)
  {
    _s8ActivityV4DiffV4KindOMa();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1768);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B06BE5B8(uint64_t *a1)
{
  _s8ActivityV4DiffV4KindOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v1 = *a1;

        break;
      case 2:
        v25 = sub_1B0E43108();
        v26 = *(v25 - 8);
        if (!(*(v26 + 48))(a1, 1))
        {
          (*(v26 + 8))(a1, v25);
        }

        break;
      case 3:
        v23 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v24 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v24 - 8) + 48))(v23, 1))
        {
          v22 = swift_getEnumCaseMultiPayload();
          if (v22)
          {
            if (v22 == 1)
            {
              v3 = *(v23 + 1);

              v4 = *(v23 + 3);
            }

            else if (v22 == 2 || v22 == 3)
            {
              v5 = *(v23 + 1);
            }
          }

          else
          {
            v2 = sub_1B0E441D8();
            (*(*(v2 - 8) + 8))(v23);
          }
        }

        break;
    }
  }

  else
  {
    v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v28 = sub_1B0E43108();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v27, 1))
    {
      (*(v29 + 8))(v27, v28);
    }
  }

  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1770, &qword_1B0E99B28) + 48));
  v21 = swift_getEnumCaseMultiPayload();
  if (v21)
  {
    switch(v21)
    {
      case 1:
        v6 = *v20;

        break;
      case 2:
        v15 = sub_1B0E43108();
        v16 = *(v15 - 8);
        if (!(*(v16 + 48))(v20, 1))
        {
          (*(v16 + 8))(v20, v15);
        }

        break;
      case 3:
        v13 = v20 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
        v14 = type metadata accessor for ConnectionStatus.Error.Details(0);
        if (!(*(*(v14 - 8) + 48))(v13, 1))
        {
          v12 = swift_getEnumCaseMultiPayload();
          if (v12)
          {
            if (v12 == 1)
            {
              v8 = *(v13 + 1);

              v9 = *(v13 + 3);
            }

            else if (v12 == 2 || v12 == 3)
            {
              v10 = *(v13 + 1);
            }
          }

          else
          {
            v7 = sub_1B0E441D8();
            (*(*(v7 - 8) + 8))(v13);
          }
        }

        break;
    }
  }

  else
  {
    v17 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D0, &qword_1B0E998C8) + 48);
    v18 = sub_1B0E43108();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v17, 1))
    {
      (*(v19 + 8))(v17, v18);
    }
  }

  return a1;
}

unint64_t sub_1B06BEB80()
{
  v2 = qword_1EB6E1778;
  if (!qword_1EB6E1778)
  {
    _s8ActivityV4DiffV6UpdateOMa();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1778);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06BEC00(uint64_t a1)
{
  _s8ActivityV4DiffV6UpdateOMa();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = sub_1B0E43108();
    (*(*(v1 - 8) + 8))(a1);
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1780, &qword_1B0E99B30) + 48);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = sub_1B0E43108();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

_BYTE *sub_1B06BECF8(_BYTE *a1, _BYTE *a2)
{
  v25 = _s18EmailActivityStateOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v14 = type metadata accessor for ConnectionStatus.Error(0);
      __dst = &a2[*(v14 + 20)];
      __src = &a1[*(v14 + 20)];
      v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(__src, 1))
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E39C0, &qword_1B0EA35E0);
        memcpy(__dst, __src, *(*(v5 - 8) + 64));
      }

      else
      {
        v13 = swift_getEnumCaseMultiPayload();
        if (v13)
        {
          if (v13 == 1)
          {
            *__dst = *__src;
            v11 = __src[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[1] = v11;
            __dst[2] = __src[2];
            v12 = __src[3];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            __dst[3] = v12;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            *__dst = *__src;
            if (v13 == 2)
            {
              v10 = __src[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              __dst[1] = v10;
            }

            else
            {
              v9 = __src[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              __dst[1] = v9;
            }

            swift_storeEnumTagMultiPayload();
          }
        }

        else
        {
          v4 = sub_1B0E441D8();
          (*(*(v4 - 8) + 16))(__dst, __src);
          swift_storeEnumTagMultiPayload();
        }

        (*(v18 + 56))(__dst, 0, 1, v17);
      }

      v6 = &a2[*(v14 + 24)];
      v7 = &a1[*(v14 + 24)];
      *v6 = *v7;
      v6[8] = v7[8];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v25 - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    *(a2 + 3) = *(a1 + 3);
    v2 = _s18EmailActivityStateO7RunningVMa();
    v19 = &a2[*(v2 + 24)];
    v20 = &a1[*(v2 + 24)];
    v21 = sub_1B0E43108();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
      memcpy(v19, v20, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(v19, v20, v21);
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1B06BF18C(uint64_t a1)
{
  _s18EmailActivityStateOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = a1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v20 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v20 - 8) + 48))(v19, 1))
      {
        v18 = swift_getEnumCaseMultiPayload();
        if (v18)
        {
          if (v18 == 1)
          {
            v2 = *(v19 + 8);

            v3 = *(v19 + 24);
          }

          else if (v18 == 2 || v18 == 3)
          {
            v4 = *(v19 + 8);
          }
        }

        else
        {
          v1 = sub_1B0E441D8();
          (*(*(v1 - 8) + 8))(v19);
        }
      }
    }
  }

  else
  {
    v21 = a1 + *(_s18EmailActivityStateO7RunningVMa() + 24);
    v22 = sub_1B0E43108();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v21, 1))
    {
      (*(v23 + 8))(v21, v22);
    }
  }

  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1718, &qword_1B0E99900) + 48);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17)
  {
    if (v17 == 2)
    {
      v11 = v16 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);
      v12 = type metadata accessor for ConnectionStatus.Error.Details(0);
      if (!(*(*(v12 - 8) + 48))(v11, 1))
      {
        v10 = swift_getEnumCaseMultiPayload();
        if (v10)
        {
          if (v10 == 1)
          {
            v6 = *(v11 + 8);

            v7 = *(v11 + 24);
          }

          else if (v10 == 2 || v10 == 3)
          {
            v8 = *(v11 + 8);
          }
        }

        else
        {
          v5 = sub_1B0E441D8();
          (*(*(v5 - 8) + 8))(v11);
        }
      }
    }
  }

  else
  {
    v13 = v16 + *(_s18EmailActivityStateO7RunningVMa() + 24);
    v14 = sub_1B0E43108();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v13, 1))
    {
      (*(v15 + 8))(v13, v14);
    }
  }

  return a1;
}

uint64_t sub_1B06BF5DC()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DBA10);
  __swift_project_value_buffer(v1, qword_1EB6DBA10);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B06BF680()
{
  if (qword_1EB6DBA00 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DBA10);
}

uint64_t sub_1B06BF6EC()
{
  result = sub_1B0E44838();
  qword_1EB6DC038 = result;
  qword_1EB6DC040 = v1;
  return result;
}

uint64_t *sub_1B06BF730()
{
  if (qword_1EB6DC028 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DC038;
}

uint64_t sub_1B06BF800()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B06BF8D0(char a1)
{
  v3 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06BF944()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B06BF9AC(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B06BFA58()
{
  v2 = (v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06BFABC(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06BFB9C()
{
  v2 = *(v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_accountProvider);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B06BFBDC()
{
  sub_1B06D4BE8(0);
  sub_1B0E45988();
  sub_1B06D6240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1888, &unk_1B0EEDC60);
  sub_1B06D62C0();
  return sub_1B0E460A8();
}

uint64_t sub_1B06BFC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E8090];
  v1 = sub_1B0E459C8();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B06BFD5C()
{
  v2 = *(v0 + OBJC_IVAR___MFBackFillMessageBodyScheduler_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1B06BFDA4(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAccountsProvider_];
  swift_unknownObjectRelease();
  return v2;
}

char *sub_1B06BFDF4(uint64_t a1)
{
  v21 = a1;
  v25 = 0;
  v24 = 0;
  v17 = 0;
  v7 = (*(*(sub_1B0E459C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v7 - v7;
  v8 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v15 = &v7 - v8;
  v9 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v21);
  v14 = &v7 - v9;
  v24 = v2;
  v25 = v1;
  v1[OBJC_IVAR___MFBackFillMessageBodyScheduler_didSetCriteria] = 0;
  *&v25[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity] = v3;
  v11 = v25;
  v10 = OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID;
  sub_1B06BFA2C();
  *&v11[v10] = v4;
  v19 = v25;
  v18 = OBJC_IVAR___MFBackFillMessageBodyScheduler_queue;
  sub_1B06CCC58();
  v12 = sub_1B0E44838();
  v13 = v5;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v16);
  *&v19[v18] = sub_1B0E45A08();
  v20 = v25;
  swift_unknownObjectRetain();
  *&v20[OBJC_IVAR___MFBackFillMessageBodyScheduler_accountProvider] = v21;
  v23.receiver = v25;
  v23.super_class = MFBackFillMessageBodyScheduler;
  v22 = objc_msgSendSuper2(&v23, sel_init);
  MEMORY[0x1E69E5928](v22);
  v25 = v22;
  sub_1B06C0098();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v25);
  return v22;
}

uint64_t sub_1B06C0098()
{
  v42 = 0;
  v57 = 0;
  v31 = 0;
  v39 = sub_1B0E439A8();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v0 = &v8 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v57 = v1;
  v2 = sub_1B06BF680();
  (*(v38 + 16))(v0, v2, v39);
  v44 = sub_1B0E43988();
  v40 = v44;
  v43 = sub_1B0E45908();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v45 = sub_1B0E46A48();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v31;
    v22 = sub_1B0E45D78();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v20 = 0;
    v23 = sub_1B03949A8(0);
    v21 = v23;
    v24 = sub_1B03949A8(v20);
    v49 = v22;
    v48 = v23;
    v47 = v24;
    v25 = 0;
    v26 = &v49;
    sub_1B0394A48(0, &v49);
    sub_1B0394A48(v25, v26);
    v46 = v45;
    v27 = &v8;
    MEMORY[0x1EEE9AC00](&v8);
    v28 = &v8 - 6;
    *(&v8 - 4) = v4;
    *(&v8 - 3) = &v48;
    *(&v8 - 2) = &v47;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v30 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v40, v41, "Registering.", v18, 2u);
      v16 = 0;
      sub_1B03998A8(v21);
      sub_1B03998A8(v24);
      sub_1B0E45D58();

      v17 = v30;
    }
  }

  else
  {

    v17 = v31;
  }

  (*(v35 + 8))(v37, v33);
  v5 = sub_1B06BF730();
  v10 = *v5;
  v15 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = *MEMORY[0x1E69E9C50];
  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v8 = v9 + 16;
  v6 = v32;
  swift_unknownObjectWeakInit();

  v55 = sub_1B06CCCBC;
  v56 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = 0;
  v53 = sub_1B06C276C;
  v54 = &block_descriptor;
  v13 = _Block_copy(&aBlock);

  v12 = sub_1B0E44BC8();

  v11 = (v12 + 32);

  xpc_activity_register(v11, v14, v13);
  swift_unknownObjectRelease();
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1B06C0744(_xpc_activity_s *a1, uint64_t a2)
{
  v53 = a1;
  v52 = a2;
  v46 = sub_1B03FB774;
  v47 = sub_1B03B0DF8;
  v48 = sub_1B0398F5C;
  v49 = sub_1B0398F5C;
  v50 = sub_1B0399260;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v51 = 0;
  v54 = sub_1B0E439A8();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = v18 - v57;
  v69 = MEMORY[0x1EEE9AC00](v53);
  v68 = v2 + 16;
  state = xpc_activity_get_state(v69);
  v67 = state;
  if (state)
  {
    if (state == 2)
    {
      v42 = v52 + 16;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        p_Strong = &Strong;
        v41 = Strong;
        MEMORY[0x1E69E5928](Strong);
        sub_1B06D4E94(p_Strong);
        swift_endAccess();
        sub_1B06C1B7C(v53);
        return MEMORY[0x1E69E5920](v41);
      }

      else
      {
        sub_1B06D4E94(&Strong);
        return swift_endAccess();
      }
    }

    else
    {
      v4 = v58;
      v5 = sub_1B06BF680();
      (*(v55 + 16))(v4, v5, v54);
      v29 = 7;
      v30 = swift_allocObject();
      *(v30 + 16) = state;
      v38 = sub_1B0E43988();
      v39 = sub_1B0E458E8();
      v27 = 17;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = 8;
      v28 = 32;
      v6 = swift_allocObject();
      v7 = v30;
      v31 = v6;
      *(v6 + 16) = v46;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v31;
      v35 = v8;
      *(v8 + 16) = v47;
      *(v8 + 24) = v9;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v34 = sub_1B0E46A48();
      v36 = v10;

      v11 = v32;
      v12 = v36;
      *v36 = v48;
      v12[1] = v11;

      v13 = v33;
      v14 = v36;
      v36[2] = v49;
      v14[3] = v13;

      v15 = v35;
      v16 = v36;
      v36[4] = v50;
      v16[5] = v15;
      sub_1B0394964();

      if (os_log_type_enabled(v38, v39))
      {
        v17 = v51;
        v20 = sub_1B0E45D78();
        v18[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v19 = 0;
        v21 = sub_1B03949A8(0);
        v22 = sub_1B03949A8(v19);
        v23 = &v66;
        v66 = v20;
        v24 = &v65;
        v65 = v21;
        v25 = &v64;
        v64 = v22;
        sub_1B0394A48(0, &v66);
        sub_1B0394A48(1, v23);
        v62 = v48;
        v63 = v32;
        sub_1B03949FC(&v62, v23, v24, v25);
        v26 = v17;
        if (v17)
        {

          __break(1u);
        }

        else
        {
          v62 = v49;
          v63 = v33;
          sub_1B03949FC(&v62, &v66, &v65, &v64);
          v18[2] = 0;
          v62 = v50;
          v63 = v35;
          sub_1B03949FC(&v62, &v66, &v65, &v64);
          _os_log_impl(&dword_1B0389000, v38, v39, "Unexpected activity state: %ld.", v20, 0xCu);
          v18[1] = 0;
          sub_1B03998A8(v21);
          sub_1B03998A8(v22);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v38);
      return (*(v55 + 8))(v58, v54);
    }
  }

  else
  {
    v45 = v52 + 16;
    swift_beginAccess();
    v60 = swift_unknownObjectWeakLoadStrong();
    if (v60)
    {
      v43 = &v60;
      v44 = v60;
      MEMORY[0x1E69E5928](v60);
      sub_1B06D4E94(v43);
      swift_endAccess();
      sub_1B06C0F78(v53);
      return MEMORY[0x1E69E5920](v44);
    }

    else
    {
      sub_1B06D4E94(&v60);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1B06C0F78(_xpc_activity_s *a1)
{
  v87 = a1;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v86 = 0;
  v98 = 0;
  v88 = sub_1B0E439A8();
  v89 = *(v88 - 8);
  v90 = v89;
  v91 = *(v89 + 64);
  v2 = MEMORY[0x1EEE9AC00](v87);
  v93 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = v25 - v93;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v94 = v25 - v93;
  v111 = v3;
  v110 = v1;
  v95 = xpc_activity_copy_criteria(v3);
  v109 = v95;
  v97 = sub_1B06C2C1C();
  v108 = v97;
  if ([v96 didSetCriteria])
  {
    swift_unknownObjectRetain();
    if (v95)
    {
      v84 = v95;
      v81 = v95;
      v98 = v95;
      v4 = xpc_equal(v97, v95);
      v82 = !v4;
      v107 = !v4;
      swift_unknownObjectRelease();
      v83 = v82;
    }

    else
    {
      v107 = 1;
      v83 = 1;
    }

    v85 = v83;
  }

  else
  {
    v107 = 1;
    v85 = 1;
  }

  if (v85)
  {
    v5 = v94;
    v6 = sub_1B06BF680();
    (*(v90 + 16))(v5, v6, v88);
    swift_unknownObjectRetain();
    v69 = 7;
    v70 = swift_allocObject();
    *(v70 + 16) = v97;
    v80 = sub_1B0E43988();
    v63 = v80;
    v79 = sub_1B0E45908();
    v64 = v79;
    v65 = 17;
    v73 = swift_allocObject();
    v66 = v73;
    *(v73 + 16) = 34;
    v74 = swift_allocObject();
    v67 = v74;
    *(v74 + 16) = 8;
    v68 = 32;
    v7 = swift_allocObject();
    v8 = v70;
    v71 = v7;
    *(v7 + 16) = sub_1B06D46CC;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v71;
    v77 = v9;
    v72 = v9;
    *(v9 + 16) = sub_1B039BCF8;
    *(v9 + 24) = v10;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v75 = sub_1B0E46A48();
    v76 = v11;

    v12 = v73;
    v13 = v76;
    *v76 = sub_1B0398F5C;
    v13[1] = v12;

    v14 = v74;
    v15 = v76;
    v76[2] = sub_1B0398F5C;
    v15[3] = v14;

    v16 = v76;
    v17 = v77;
    v76[4] = sub_1B039BCEC;
    v16[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v80, v79))
    {
      v18 = v86;
      v56 = sub_1B0E45D78();
      v53 = v56;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v57 = sub_1B03949A8(0);
      v55 = v57;
      v59 = 1;
      v58 = sub_1B03949A8(1);
      v103[0] = v56;
      v102 = v57;
      v101 = v58;
      v60 = v103;
      sub_1B0394A48(2, v103);
      sub_1B0394A48(v59, v60);
      v99 = sub_1B0398F5C;
      v100 = v66;
      sub_1B03949FC(&v99, v60, &v102, &v101);
      v61 = v18;
      v62 = v18;
      if (v18)
      {
        v51 = 0;

        __break(1u);
      }

      else
      {
        v99 = sub_1B0398F5C;
        v100 = v67;
        sub_1B03949FC(&v99, v103, &v102, &v101);
        v49 = 0;
        v50 = 0;
        v99 = sub_1B039BCEC;
        v100 = v72;
        sub_1B03949FC(&v99, v103, &v102, &v101);
        v47 = 0;
        v48 = 0;
        _os_log_impl(&dword_1B0389000, v63, v64, "Checking in: Updating criteria to %{public}s", v53, 0xCu);
        sub_1B03998A8(v55);
        sub_1B03998A8(v58);
        sub_1B0E45D58();

        v52 = v47;
      }
    }

    else
    {
      v19 = v86;

      v52 = v19;
    }

    v45 = v52;

    (*(v90 + 8))(v94, v88);
    xpc_activity_set_criteria(v87, v97);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v45;
  }

  else
  {
    v20 = v92;
    v21 = sub_1B06BF680();
    (*(v90 + 16))(v20, v21, v88);
    v43 = sub_1B0E43988();
    v40 = v43;
    v42 = sub_1B0E45908();
    v41 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v44 = sub_1B0E46A48();
    if (os_log_type_enabled(v43, v42))
    {
      v22 = v86;
      v31 = sub_1B0E45D78();
      v27 = v31;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v29 = 0;
      v32 = sub_1B03949A8(0);
      v30 = v32;
      v33 = sub_1B03949A8(v29);
      v106 = v31;
      v105 = v32;
      v104 = v33;
      v34 = 0;
      v35 = &v106;
      sub_1B0394A48(0, &v106);
      sub_1B0394A48(v34, v35);
      v103[2] = v44;
      v36 = v25;
      MEMORY[0x1EEE9AC00](v25);
      v37 = &v25[-6];
      v25[-4] = v23;
      v25[-3] = &v105;
      v25[-2] = &v104;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v39 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v40, v41, "Checked in.", v27, 2u);
        v25[1] = 0;
        sub_1B03998A8(v30);
        sub_1B03998A8(v33);
        sub_1B0E45D58();

        v26 = v39;
      }
    }

    else
    {

      v26 = v86;
    }

    v25[0] = v26;

    (*(v90 + 8))(v92, v88);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v25[0];
  }
}

uint64_t sub_1B06C1B7C(uint64_t a1)
{
  v84 = a1;
  v79 = 0;
  v110 = 0;
  v109 = 0;
  v74 = 0;
  v103 = 0;
  v75 = sub_1B0E44238();
  v76 = *(v75 - 8);
  v77 = v76;
  v2 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](0);
  v78 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B0E44288();
  v81 = *(v80 - 8);
  v82 = v81;
  v4 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v83 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1B0E439A8();
  v86 = *(v85 - 8);
  v87 = v86;
  v88 = *(v86 + 64);
  v6 = MEMORY[0x1EEE9AC00](v84);
  v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = v22 - v90;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v91 = v22 - v90;
  v110 = v7;
  v109 = v1;
  if (xpc_activity_set_state(v7, 4))
  {
    v8 = v91;
    v9 = sub_1B06BF680();
    (*(v87 + 16))(v8, v9, v85);
    v71 = sub_1B0E43988();
    v68 = v71;
    v70 = sub_1B0E45908();
    v69 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v72 = sub_1B0E46A48();
    if (os_log_type_enabled(v71, v70))
    {
      v10 = v74;
      v59 = sub_1B0E45D78();
      v55 = v59;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v57 = 0;
      v60 = sub_1B03949A8(0);
      v58 = v60;
      v61 = sub_1B03949A8(v57);
      v95 = v59;
      v94 = v60;
      v93 = v61;
      v62 = 0;
      v63 = &v95;
      sub_1B0394A48(0, &v95);
      sub_1B0394A48(v62, v63);
      v92 = v72;
      v64 = v22;
      MEMORY[0x1EEE9AC00](v22);
      v65 = &v22[-6];
      v22[-4] = v11;
      v22[-3] = &v94;
      v22[-2] = &v93;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v67 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v68, v69, "Run", v55, 2u);
        v53 = 0;
        sub_1B03998A8(v58);
        sub_1B03998A8(v61);
        sub_1B0E45D58();

        v54 = v67;
      }
    }

    else
    {

      v54 = v74;
    }

    v51 = v54;

    (*(v87 + 8))(v91, v85);
    v47 = 0;
    _s8ActivityCMa();
    v42 = &v73[OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID];
    v46 = 32;
    v43 = &v104;
    swift_beginAccess();
    v44 = *v42;
    swift_endAccess();
    swift_unknownObjectRetain();
    v12 = v73;
    v45 = 0x1FB85B000uLL;
    v13 = [v73 0x1FB85B978];
    v50 = sub_1B06C30C8(v44, v84, v73, v13);
    v103 = v50;
    v49 = [v73 (v45 + 2424)];
    v14 = v73;

    v15 = swift_allocObject();
    v16 = v50;
    *(v15 + 16) = v73;
    *(v15 + 24) = v16;
    v101 = sub_1B06D4D4C;
    v102 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v97 = 1107296256;
    v98 = 0;
    v99 = sub_1B038C908;
    v100 = &block_descriptor_24;
    v48 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](v47, v83, v78, v48);
    (*(v77 + 8))(v78, v75);
    (*(v82 + 8))(v83, v80);
    _Block_release(v48);

    sub_1B06C300C(v73);
    return v51;
  }

  else
  {
    v17 = v89;
    v18 = sub_1B06BF680();
    (*(v87 + 16))(v17, v18, v85);
    v40 = sub_1B0E43988();
    v37 = v40;
    v39 = sub_1B0E458E8();
    v38 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v41 = sub_1B0E46A48();
    if (os_log_type_enabled(v40, v39))
    {
      v19 = v74;
      v28 = sub_1B0E45D78();
      v24 = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v26 = 0;
      v29 = sub_1B03949A8(0);
      v27 = v29;
      v30 = sub_1B03949A8(v26);
      v108 = v28;
      v107 = v29;
      v106 = v30;
      v31 = 0;
      v32 = &v108;
      sub_1B0394A48(0, &v108);
      sub_1B0394A48(v31, v32);
      v105 = v41;
      v33 = v22;
      MEMORY[0x1EEE9AC00](v22);
      v34 = &v22[-6];
      v22[-4] = v20;
      v22[-3] = &v107;
      v22[-2] = &v106;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v36 = v19;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v37, v38, "Unable to set state to CONTINUE.", v24, 2u);
        v22[1] = 0;
        sub_1B03998A8(v27);
        sub_1B03998A8(v30);
        sub_1B0E45D58();

        v23 = v36;
      }
    }

    else
    {

      v23 = v74;
    }

    v22[0] = v23;

    (*(v87 + 8))(v89, v85);
    return v22[0];
  }
}

uint64_t sub_1B06C276C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v3(a2);
  swift_unknownObjectRelease();
}

uint64_t sub_1B06C27D4()
{
  v36 = 0;
  v44 = 0;
  v26 = 0;
  v33 = sub_1B0E439A8();
  v27 = v33;
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = v28;
  v30 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v0 = &v7 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v44 = v1;
  v2 = sub_1B06BF680();
  (*(v32 + 16))(v0, v2, v33);
  v38 = sub_1B0E43988();
  v34 = v38;
  v37 = sub_1B0E45908();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v39 = sub_1B0E46A48();
  if (os_log_type_enabled(v38, v37))
  {
    v3 = v26;
    v17 = sub_1B0E45D78();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v15 = 0;
    v18 = sub_1B03949A8(0);
    v16 = v18;
    v19 = sub_1B03949A8(v15);
    v43 = v17;
    v42 = v18;
    v41 = v19;
    v20 = 0;
    v21 = &v43;
    sub_1B0394A48(0, &v43);
    sub_1B0394A48(v20, v21);
    v40 = v39;
    v22 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v23 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v42;
    *(&v7 - 2) = &v41;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    sub_1B06D3AB0();
    sub_1B0E45018();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B0389000, v34, v35, "Un-registering.", v13, 2u);
      v11 = 0;
      sub_1B03998A8(v16);
      sub_1B03998A8(v19);
      sub_1B0E45D58();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v29 + 8))(v31, v27);
  v5 = sub_1B06BF730();
  v7 = *v5;
  v10 = v5[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0E44BC8();

  v8 = (v9 + 32);

  xpc_activity_unregister(v8);
  swift_unknownObjectRelease();
}

xpc_object_t sub_1B06C2C1C()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  v5 = MEMORY[0x1E69E9CC0];
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], *MEMORY[0x1E69E9CD8]);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], *v5);
  if (*MEMORY[0x1E69E9C90])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C90], *MEMORY[0x1E69E9CD8]);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, key, *MEMORY[0x1E69E9CD8]);
  }

  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 0);
  if (*MEMORY[0x1E69E9DB0])
  {
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB0], 1);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_BOOL(empty, v3, 1);
  }

  if (*MEMORY[0x1E69E9D10])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9D10], 104857600);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, v2, 104857600);
  }

  if (*MEMORY[0x1E69E9D48])
  {
    xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9D48], 0x100000);
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
    xpc_dictionary_set_int64(empty, v1, 0x100000);
  }

  return empty;
}

uint64_t sub_1B06C2F5C()
{
  v3 = xpc_copy_clean_description();
  if (!v3)
  {
    return sub_1B0E44838();
  }

  v1 = sub_1B0E44D88();
  sub_1B06D3A58(v3);
  return v1;
}

uint64_t sub_1B06C300C(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  sub_1B06CCCC4();
  v7 = v1;
  v6 = (a1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_nextActivityID);
  swift_beginAccess();
  *v6 = v7;
  return swift_endAccess();
}

uint64_t sub_1B06C30C8(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_1B06CAC00(a1, a2, a3, a4);
}

uint64_t sub_1B06C3174(uint64_t a1)
{
  v84 = a1;
  v67 = sub_1B06D4DBC;
  v68 = sub_1B06D4E08;
  v69 = sub_1B06D4DC4;
  v70 = sub_1B06D4E08;
  v71 = sub_1B0398F5C;
  v72 = sub_1B0398F5C;
  v73 = sub_1B0399348;
  v74 = sub_1B0398F5C;
  v75 = sub_1B0398F5C;
  v76 = sub_1B0399348;
  v101 = 0;
  v100 = 0;
  v77 = 0;
  v78 = 0;
  v79 = sub_1B0E439A8();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v83 = v33 - v82;
  v89 = sub_1B0E44468();
  v87 = *(v89 - 8);
  v88 = v89 - 8;
  v85 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v86);
  v90 = (v33 - v85);
  v101 = v2;
  v100 = v1;
  MEMORY[0x1E69E5928](v1);
  v3 = [v86 queue];
  v4 = v87;
  *v90 = v3;
  v5 = *MEMORY[0x1E69E8020];
  (*(v4 + 104))();
  v91 = sub_1B0E44488();
  (*(v87 + 8))(v90, v89);
  result = v91;
  if (v91)
  {
    MEMORY[0x1E69E5920](v86);
    v64 = &v86[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity];
    v65 = &v99;
    swift_beginAccess();
    v66 = *v64;

    swift_endAccess();
    v98 = v66;
    v63 = v66 == 0;
    v62 = v63;
    sub_1B0391AD4(&v98);
    if (v62)
    {
      v7 = v84;

      v60 = &v86[OBJC_IVAR___MFBackFillMessageBodyScheduler_activity];
      v61 = &v92;
      swift_beginAccess();
      v8 = *v60;
      *v60 = v7;

      swift_endAccess();
      return sub_1B06C5700();
    }

    else
    {
      v9 = v83;
      v10 = sub_1B06BF680();
      (*(v80 + 16))(v9, v10, v79);

      MEMORY[0x1E69E5928](v86);
      v46 = 7;
      v47 = swift_allocObject();
      *(v47 + 16) = v86;
      v58 = sub_1B0E43988();
      v59 = sub_1B0E458E8();
      v43 = 17;
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      v50 = swift_allocObject();
      v44 = 2;
      *(v50 + 16) = 2;
      v45 = 32;
      v11 = swift_allocObject();
      v12 = v84;
      v42 = v11;
      *(v11 + 16) = v67;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v42;
      v51 = v13;
      *(v13 + 16) = v68;
      *(v13 + 24) = v14;
      v52 = swift_allocObject();
      *(v52 + 16) = 0;
      v53 = swift_allocObject();
      *(v53 + 16) = v44;
      v15 = swift_allocObject();
      v16 = v47;
      v48 = v15;
      *(v15 + 16) = v69;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v48;
      v55 = v17;
      *(v17 + 16) = v70;
      *(v17 + 24) = v18;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v54 = sub_1B0E46A48();
      v56 = v19;

      v20 = v49;
      v21 = v56;
      *v56 = v71;
      v21[1] = v20;

      v22 = v50;
      v23 = v56;
      v56[2] = v72;
      v23[3] = v22;

      v24 = v51;
      v25 = v56;
      v56[4] = v73;
      v25[5] = v24;

      v26 = v52;
      v27 = v56;
      v56[6] = v74;
      v27[7] = v26;

      v28 = v53;
      v29 = v56;
      v56[8] = v75;
      v29[9] = v28;

      v30 = v55;
      v31 = v56;
      v56[10] = v76;
      v31[11] = v30;
      sub_1B0394964();

      if (os_log_type_enabled(v58, v59))
      {
        v32 = v77;
        v35 = sub_1B0E45D78();
        v33[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v34 = 0;
        v36 = sub_1B03949A8(0);
        v37 = sub_1B03949A8(v34);
        v38 = &v97;
        v97 = v35;
        v39 = &v96;
        v96 = v36;
        v40 = &v95;
        v95 = v37;
        sub_1B0394A48(0, &v97);
        sub_1B0394A48(2, v38);
        v93 = v71;
        v94 = v49;
        sub_1B03949FC(&v93, v38, v39, v40);
        v41 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v93 = v72;
          v94 = v50;
          sub_1B03949FC(&v93, &v97, &v96, &v95);
          v33[4] = 0;
          v93 = v73;
          v94 = v51;
          sub_1B03949FC(&v93, &v97, &v96, &v95);
          v33[3] = 0;
          v93 = v74;
          v94 = v52;
          sub_1B03949FC(&v93, &v97, &v96, &v95);
          v33[2] = 0;
          v93 = v75;
          v94 = v53;
          sub_1B03949FC(&v93, &v97, &v96, &v95);
          v33[1] = 0;
          v93 = v76;
          v94 = v55;
          sub_1B03949FC(&v93, &v97, &v96, &v95);
          _os_log_impl(&dword_1B0389000, v58, v59, "Received new activity '%hx', but already have an existing one %hx.", v35, 0xAu);
          v33[0] = 0;
          sub_1B03998A8(v36);
          sub_1B03998A8(v37);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v58);
      (*(v80 + 8))(v83, v79);
      return sub_1B06C3EFC(3u);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06C3DFC(uint64_t a1)
{
  v4 = (a1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  swift_beginAccess();
  v5 = *v4;

  swift_endAccess();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = *(v3 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id);

  return v2;
}

uint64_t sub_1B06C3EFC(unsigned int a1)
{
  v158 = a1;
  v129 = sub_1B06D4DBC;
  v130 = sub_1B06D4E08;
  v131 = sub_1B06D4E8C;
  v132 = sub_1B039BCF8;
  v133 = sub_1B0398F5C;
  v134 = sub_1B0398F5C;
  v135 = sub_1B0399348;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0398F5C;
  v138 = sub_1B039BCEC;
  v139 = sub_1B06D4DBC;
  v140 = sub_1B06D4E08;
  v141 = sub_1B06D4E8C;
  v142 = sub_1B039BCF8;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0399348;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B039BCEC;
  v181 = 0;
  v180 = 0;
  v149 = 0;
  v150 = 0;
  v151 = sub_1B0E439A8();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v155 = &p_Strong - v154;
  v156 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v157 = &p_Strong - v156;
  v163 = sub_1B0E44468();
  v161 = *(v163 - 8);
  v162 = v163 - 8;
  v159 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v158);
  v164 = (&p_Strong - v159);
  v181 = v4;
  v180 = v1;

  v160 = *(v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v160);
  v5 = v161;
  *v164 = v160;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v165 = sub_1B0E44488();
  (*(v161 + 8))(v164, v163);
  result = v165;
  if (v165)
  {

    v126 = &v179;
    swift_beginAccess();
    v127 = *(v128 + 48);
    result = swift_endAccess();
    if ((v127 & 1) == 0)
    {
      v124 = &v178;
      v125 = 0;
      swift_beginAccess();
      *(v128 + 48) = 1;
      swift_endAccess();
      swift_beginAccess();
      if (*(v128 + 40))
      {
        v123 = *(v128 + 40);
        swift_unknownObjectRetain();
        swift_endAccess();
        swift_getObjectType();
        sub_1B0E45A98();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }

      v120 = &v177;
      swift_beginAccess();
      v8 = *(v128 + 40);
      *(v128 + 40) = 0;
      swift_unknownObjectRelease();
      swift_endAccess();
      v121 = *(v128 + 24);
      swift_unknownObjectRetain();
      sub_1B06CCCF4(v158);
      v122 = xpc_activity_set_completion_status();
      swift_unknownObjectRelease();
      if (v122)
      {
        v33 = v155;
        v34 = sub_1B06BF680();
        (*(v152 + 16))(v33, v34, v151);

        v74 = 17;
        v76 = 7;
        v77 = swift_allocObject();
        *(v77 + 16) = v158;
        v88 = sub_1B0E43988();
        v89 = sub_1B0E45908();
        v79 = swift_allocObject();
        *(v79 + 16) = 0;
        v80 = swift_allocObject();
        *(v80 + 16) = 2;
        v75 = 32;
        v35 = swift_allocObject();
        v36 = v128;
        v73 = v35;
        *(v35 + 16) = v129;
        *(v35 + 24) = v36;
        v37 = swift_allocObject();
        v38 = v73;
        v81 = v37;
        *(v37 + 16) = v130;
        *(v37 + 24) = v38;
        v82 = swift_allocObject();
        *(v82 + 16) = 34;
        v83 = swift_allocObject();
        *(v83 + 16) = 8;
        v39 = swift_allocObject();
        v40 = v77;
        v78 = v39;
        *(v39 + 16) = v131;
        *(v39 + 24) = v40;
        v41 = swift_allocObject();
        v42 = v78;
        v85 = v41;
        *(v41 + 16) = v132;
        *(v41 + 24) = v42;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v84 = sub_1B0E46A48();
        v86 = v43;

        v44 = v79;
        v45 = v86;
        *v86 = v133;
        v45[1] = v44;

        v46 = v80;
        v47 = v86;
        v86[2] = v134;
        v47[3] = v46;

        v48 = v81;
        v49 = v86;
        v86[4] = v135;
        v49[5] = v48;

        v50 = v82;
        v51 = v86;
        v86[6] = v136;
        v51[7] = v50;

        v52 = v83;
        v53 = v86;
        v86[8] = v137;
        v53[9] = v52;

        v54 = v85;
        v55 = v86;
        v86[10] = v138;
        v55[11] = v54;
        sub_1B0394964();

        if (os_log_type_enabled(v88, v89))
        {
          v56 = v149;
          v65 = sub_1B0E45D78();
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v66 = sub_1B03949A8(0);
          v67 = sub_1B03949A8(1);
          v69 = &v175;
          v175 = v65;
          v70 = &v174;
          v174 = v66;
          v71 = &v173;
          v173 = v67;
          v68 = 2;
          sub_1B0394A48(2, &v175);
          sub_1B0394A48(v68, v69);
          v171 = v133;
          v172 = v79;
          sub_1B03949FC(&v171, v69, v70, v71);
          v72 = v56;
          if (v56)
          {

            __break(1u);
          }

          else
          {
            v171 = v134;
            v172 = v80;
            sub_1B03949FC(&v171, &v175, &v174, &v173);
            v63 = 0;
            v171 = v135;
            v172 = v81;
            sub_1B03949FC(&v171, &v175, &v174, &v173);
            v62 = 0;
            v171 = v136;
            v172 = v82;
            sub_1B03949FC(&v171, &v175, &v174, &v173);
            v61 = 0;
            v171 = v137;
            v172 = v83;
            sub_1B03949FC(&v171, &v175, &v174, &v173);
            v60 = 0;
            v171 = v138;
            v172 = v85;
            sub_1B03949FC(&v171, &v175, &v174, &v173);
            _os_log_impl(&dword_1B0389000, v88, v89, "%hx: Completed with status: %{public}s", v65, 0x10u);
            sub_1B03998A8(v66);
            sub_1B03998A8(v67);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v88);
        (*(v152 + 8))(v155, v151);
      }

      else
      {
        v9 = v157;
        v10 = sub_1B06BF680();
        (*(v152 + 16))(v9, v10, v151);

        v104 = 17;
        v106 = 7;
        v107 = swift_allocObject();
        *(v107 + 16) = v158;
        v118 = sub_1B0E43988();
        v119 = sub_1B0E458E8();
        v109 = swift_allocObject();
        *(v109 + 16) = 0;
        v110 = swift_allocObject();
        *(v110 + 16) = 2;
        v105 = 32;
        v11 = swift_allocObject();
        v12 = v128;
        v103 = v11;
        *(v11 + 16) = v139;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v103;
        v111 = v13;
        *(v13 + 16) = v140;
        *(v13 + 24) = v14;
        v112 = swift_allocObject();
        *(v112 + 16) = 34;
        v113 = swift_allocObject();
        *(v113 + 16) = 8;
        v15 = swift_allocObject();
        v16 = v107;
        v108 = v15;
        *(v15 + 16) = v141;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v108;
        v115 = v17;
        *(v17 + 16) = v142;
        *(v17 + 24) = v18;
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v114 = sub_1B0E46A48();
        v116 = v19;

        v20 = v109;
        v21 = v116;
        *v116 = v143;
        v21[1] = v20;

        v22 = v110;
        v23 = v116;
        v116[2] = v144;
        v23[3] = v22;

        v24 = v111;
        v25 = v116;
        v116[4] = v145;
        v25[5] = v24;

        v26 = v112;
        v27 = v116;
        v116[6] = v146;
        v27[7] = v26;

        v28 = v113;
        v29 = v116;
        v116[8] = v147;
        v29[9] = v28;

        v30 = v115;
        v31 = v116;
        v116[10] = v148;
        v31[11] = v30;
        sub_1B0394964();

        if (os_log_type_enabled(v118, v119))
        {
          v32 = v149;
          v95 = sub_1B0E45D78();
          v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v96 = sub_1B03949A8(0);
          v97 = sub_1B03949A8(1);
          v99 = &v170;
          v170 = v95;
          v100 = &v169;
          v169 = v96;
          v101 = &v168;
          v168 = v97;
          v98 = 2;
          sub_1B0394A48(2, &v170);
          sub_1B0394A48(v98, v99);
          v166 = v143;
          v167 = v109;
          sub_1B03949FC(&v166, v99, v100, v101);
          v102 = v32;
          if (v32)
          {

            __break(1u);
          }

          else
          {
            v166 = v144;
            v167 = v110;
            sub_1B03949FC(&v166, &v170, &v169, &v168);
            v93 = 0;
            v166 = v145;
            v167 = v111;
            sub_1B03949FC(&v166, &v170, &v169, &v168);
            v92 = 0;
            v166 = v146;
            v167 = v112;
            sub_1B03949FC(&v166, &v170, &v169, &v168);
            v91 = 0;
            v166 = v147;
            v167 = v113;
            sub_1B03949FC(&v166, &v170, &v169, &v168);
            v90 = 0;
            v166 = v148;
            v167 = v115;
            sub_1B03949FC(&v166, &v170, &v169, &v168);
            _os_log_impl(&dword_1B0389000, v118, v119, "%hx: Failed to set completion status to %{public}s", v95, 0x10u);
            sub_1B03998A8(v96);
            sub_1B03998A8(v97);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v118);
        (*(v152 + 8))(v157, v151);
      }

      v59 = v128 + 16;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        p_Strong = &Strong;
        v58 = Strong;
        MEMORY[0x1E69E5928](Strong);
        sub_1B06D4E94(p_Strong);
        swift_endAccess();
        sub_1B06C5CA4(v128);
        return MEMORY[0x1E69E5920](v58);
      }

      else
      {
        sub_1B06D4E94(&Strong);
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06C5700()
{
  v34 = sub_1B06D4DBC;
  v37 = sub_1B06D4E08;
  v39 = sub_1B0398F5C;
  v41 = sub_1B0398F5C;
  v44 = sub_1B0399348;
  v55 = 0;
  v26 = 0;
  v31 = sub_1B0E439A8();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v27 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v0 = v17 - v27;
  v28 = v17 - v27;
  v55 = v1;
  v2 = sub_1B06BF680();
  (*(v29 + 16))(v0, v2, v31);

  v3 = sub_1B0E43988();
  v4 = v32;
  v48 = v3;
  v49 = sub_1B0E458E8();
  v33 = 17;
  v36 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 2;
  v35 = 32;
  v5 = swift_allocObject();
  v38 = v5;
  *(v5 + 16) = v34;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v7 = v38;
  v45 = v6;
  *(v6 + 16) = v37;
  *(v6 + 24) = v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v43 = sub_1B0E46A48();
  v46 = v8;

  v9 = v40;
  v10 = v46;
  *v46 = v39;
  v10[1] = v9;

  v11 = v42;
  v12 = v46;
  v46[2] = v41;
  v12[3] = v11;

  v13 = v45;
  v14 = v46;
  v46[4] = v44;
  v14[5] = v13;
  sub_1B0394964();

  if (os_log_type_enabled(v48, v49))
  {
    v15 = v26;
    v19 = sub_1B0E45D78();
    v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v18 = 0;
    v20 = sub_1B03949A8(0);
    v21 = sub_1B03949A8(v18);
    v22 = &v54;
    v54 = v19;
    v23 = &v53;
    v53 = v20;
    v24 = &v52;
    v52 = v21;
    sub_1B0394A48(0, &v54);
    sub_1B0394A48(1, v22);
    v50 = v39;
    v51 = v40;
    sub_1B03949FC(&v50, v22, v23, v24);
    v25 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v50 = v41;
      v51 = v42;
      sub_1B03949FC(&v50, &v54, &v53, &v52);
      v17[1] = 0;
      v50 = v44;
      v51 = v45;
      sub_1B03949FC(&v50, &v54, &v53, &v52);
      _os_log_impl(&dword_1B0389000, v48, v49, "%hx: Running.", v19, 6u);
      v17[0] = 0;
      sub_1B03998A8(v20);
      sub_1B03998A8(v21);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v48);
  (*(v29 + 8))(v28, v31);
  sub_1B06CAF08();
  return sub_1B06CC24C();
}

uint64_t sub_1B06C5CA4(uint64_t a1)
{
  v98 = a1;
  v97 = 0;
  v86 = sub_1B06D4DBC;
  v87 = sub_1B06D4E08;
  v88 = sub_1B0398F5C;
  v89 = sub_1B0398F5C;
  v90 = sub_1B0399348;
  v91 = sub_1B06D4DBC;
  v92 = sub_1B06D4E08;
  v93 = sub_1B0398F5C;
  v94 = sub_1B0398F5C;
  v95 = sub_1B0399348;
  v122 = 0;
  v121 = 0;
  v96 = 0;
  v99 = sub_1B0E439A8();
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v98);
  v103 = v35 - v102;
  v104 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v105 = v35 - v104;
  v122 = v4;
  v121 = v1;
  v106 = (v1 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
  v107 = &v120;
  swift_beginAccess();
  v108 = *v106;

  swift_endAccess();
  if (v108)
  {
    v84 = v108;
    v83 = v108;
  }

  else
  {
    v83 = 0;
  }

  v81 = v83;

  v82 = sub_1B0E46B58();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v82)
  {
    v5 = v105;
    v67 = (v85 + OBJC_IVAR___MFBackFillMessageBodyScheduler_activity);
    v68 = &v114;
    swift_beginAccess();
    v6 = *v67;
    *v67 = 0;

    swift_endAccess();
    v7 = sub_1B06BF680();
    (*(v100 + 16))(v5, v7, v99);

    v79 = sub_1B0E43988();
    v80 = sub_1B0E45908();
    v69 = 17;
    v71 = 7;
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = 2;
    v70 = 32;
    v8 = swift_allocObject();
    v9 = v98;
    v72 = v8;
    *(v8 + 16) = v91;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v72;
    v76 = v10;
    *(v10 + 16) = v92;
    *(v10 + 24) = v11;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v75 = sub_1B0E46A48();
    v77 = v12;

    v13 = v73;
    v14 = v77;
    *v77 = v93;
    v14[1] = v13;

    v15 = v74;
    v16 = v77;
    v77[2] = v94;
    v16[3] = v15;

    v17 = v76;
    v18 = v77;
    v77[4] = v95;
    v18[5] = v17;
    sub_1B0394964();

    if (os_log_type_enabled(v79, v80))
    {
      v19 = v96;
      v60 = sub_1B0E45D78();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v59 = 0;
      v61 = sub_1B03949A8(0);
      v62 = sub_1B03949A8(v59);
      v63 = &v113;
      v113 = v60;
      v64 = &v112;
      v112 = v61;
      v65 = &v111;
      v111 = v62;
      sub_1B0394A48(0, &v113);
      sub_1B0394A48(1, v63);
      v109 = v93;
      v110 = v73;
      sub_1B03949FC(&v109, v63, v64, v65);
      v66 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v109 = v94;
        v110 = v74;
        sub_1B03949FC(&v109, &v113, &v112, &v111);
        v57 = 0;
        v109 = v95;
        v110 = v76;
        sub_1B03949FC(&v109, &v113, &v112, &v111);
        _os_log_impl(&dword_1B0389000, v79, v80, "Activity '%hx' did complete.", v60, 6u);
        v56 = 0;
        sub_1B03998A8(v61);
        sub_1B03998A8(v62);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v79);
    return (*(v100 + 8))(v105, v99);
  }

  else
  {
    v21 = v103;
    v22 = sub_1B06BF680();
    (*(v100 + 16))(v21, v22, v99);

    v54 = sub_1B0E43988();
    v55 = sub_1B0E458E8();
    v44 = 17;
    v46 = 7;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v49 = swift_allocObject();
    *(v49 + 16) = 2;
    v45 = 32;
    v23 = swift_allocObject();
    v24 = v98;
    v47 = v23;
    *(v23 + 16) = v86;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v47;
    v51 = v25;
    *(v25 + 16) = v87;
    *(v25 + 24) = v26;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v50 = sub_1B0E46A48();
    v52 = v27;

    v28 = v48;
    v29 = v52;
    *v52 = v88;
    v29[1] = v28;

    v30 = v49;
    v31 = v52;
    v52[2] = v89;
    v31[3] = v30;

    v32 = v51;
    v33 = v52;
    v52[4] = v90;
    v33[5] = v32;
    sub_1B0394964();

    if (os_log_type_enabled(v54, v55))
    {
      v34 = v96;
      v37 = sub_1B0E45D78();
      v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v36 = 0;
      v38 = sub_1B03949A8(0);
      v39 = sub_1B03949A8(v36);
      v40 = &v119;
      v119 = v37;
      v41 = &v118;
      v118 = v38;
      v42 = &v117;
      v117 = v39;
      sub_1B0394A48(0, &v119);
      sub_1B0394A48(1, v40);
      v115 = v88;
      v116 = v48;
      sub_1B03949FC(&v115, v40, v41, v42);
      v43 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v115 = v89;
        v116 = v49;
        sub_1B03949FC(&v115, &v119, &v118, &v117);
        v35[2] = 0;
        v115 = v90;
        v116 = v51;
        sub_1B03949FC(&v115, &v119, &v118, &v117);
        _os_log_impl(&dword_1B0389000, v54, v55, "Activity '%hx' did complete, but we no longer have a reference to it.", v37, 6u);
        v35[1] = 0;
        sub_1B03998A8(v38);
        sub_1B03998A8(v39);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v54);
    return (*(v100 + 8))(v103, v99);
  }
}

uint64_t sub_1B06C6AA4()
{
  sub_1B0E46A48();
  *v0 = "complete";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "pendingWork";
  *(v0 + 32) = 11;
  *(v0 + 40) = 2;
  *(v0 + 48) = "noWork";
  *(v0 + 56) = 6;
  *(v0 + 64) = 2;
  *(v0 + 72) = "error";
  *(v0 + 80) = 5;
  *(v0 + 88) = 2;
  *(v0 + 96) = "deallocated";
  *(v0 + 104) = 11;
  *(v0 + 112) = 2;
  sub_1B0394964();
  v4 = sub_1B0E467E8();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1B06C6F14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B06C6AA4();
  *a2 = result;
  return result;
}

uint64_t sub_1B06C6F4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_1B06C6CB4();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B06C6F80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06C6FE8()
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_1B06C70B0(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v10 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v3 - v3;
  (*(v5 + 16))();
  v9 = sub_1B08D932C(v4, v7);
  (*(v5 + 8))(v8, v7);
  return v9;
}

uint64_t sub_1B06C71A4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  return v2;
}

uint64_t sub_1B06C71E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  sub_1B03E1B3C(sub_1B06C728C, 0, v2, MEMORY[0x1E69E6370], MEMORY[0x1E69E6370]);

  return v3 & 1;
}

uint64_t sub_1B06C72B0(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  v4 = *(v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred);

  v5[16] = a1;
  sub_1B03E1B3C(sub_1B06D4F44, v5, v4, MEMORY[0x1E69E6370], MEMORY[0x1E69E7CA8] + 8);
}

char *sub_1B06C73E0(uint64_t a1, __int16 a2)
{
  ObjectType = swift_getObjectType();
  v12 = a1;
  v11 = a2;
  v13 = v2;
  swift_weakInit();
  v4 = OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request__deferred;
  v10 = 0;
  *&v2[v4] = sub_1B06C70B0(&v10, MEMORY[0x1E69E6370]);

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
  *&v13[OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activityID] = *(a1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id);
  *&v13[OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_id] = a2;
  v9.receiver = v13;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x1E69E5928](v8);
  v13 = v8;

  MEMORY[0x1E69E5920](v13);
  return v8;
}

BOOL sub_1B06C763C()
{
  v4[4] = 0;
  v3 = sub_1B06C71E4();
  (MEMORY[0x1E69E5928])();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    swift_endAccess();
    v4[0] = Strong;
    sub_1B0391AD4(v4);
    v2 = Strong == 0;
  }

  (MEMORY[0x1E69E5920])();
  return v2;
}

id sub_1B06C7778()
{
  v16 = 0;
  v8 = sub_1B06D4F70;
  ObjectType = swift_getObjectType();
  v35 = 0;
  v32 = 0;
  v10 = 0;
  v11 = sub_1B0E44238();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v2 - v14;
  v17 = sub_1B0E44288();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v2 - v20;
  v35 = v0;
  v22 = v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activity;
  v23 = &v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v6 = Strong;
    v5 = Strong;
    v32 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v4);

    v30 = v8;
    v31 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = 0;
    v28 = sub_1B038C908;
    v29 = &block_descriptor_180;
    v3 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v21, v15, v3);
    (*(v12 + 8))(v15, v11);
    (*(v18 + 8))(v21, v17);
    _Block_release(v3);

    MEMORY[0x1E69E5920](v4);
  }

  v33.receiver = v7;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_dealloc);
}

void sub_1B06C7AD8(void *a1, int a2)
{
  v330 = a2;
  v329 = a1;
  v318 = a2;
  v320 = 0;
  v363 = 0;
  v362 = 0;
  v361 = 0;
  v319 = 0;
  v355 = 0;
  v349 = 0;
  v344 = 0;
  v321 = sub_1B0E439A8();
  v322 = *(v321 - 8);
  v323 = v322;
  v325 = *(v322 + 64);
  v3 = MEMORY[0x1EEE9AC00](0);
  v327 = (v325 + 15) & 0xFFFFFFFFFFFFFFF0;
  v324 = &v122 - v327;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v326 = &v122 - v327;
  MEMORY[0x1EEE9AC00](v4);
  v328 = &v122 - v327;
  v334 = sub_1B0E44468();
  v331 = *(v334 - 8);
  v333 = v331;
  v5 = *(v331 + 64);
  v6 = MEMORY[0x1EEE9AC00](v329);
  v335 = (&v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v363 = v6;
  v362 = v8;
  v361 = v2;

  v332 = *(v2 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  v9 = v332;
  v10 = v333;
  *v335 = v332;
  v11 = *MEMORY[0x1E69E8020];
  (*(v10 + 104))();
  v336 = sub_1B0E44488();
  (*(v333 + 8))(v335, v334);
  if (v336)
  {

    v12 = v329;
    if (!v329)
    {
      v315 = v319;
      goto LABEL_15;
    }

    v316 = v329;
    v13 = v319;
    v309 = v329;
    v349 = v329;
    v307 = &v346;
    swift_beginAccess();
    v308 = *(v317 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v345 = v308;
    v14 = v309;
    v310 = &v122;
    MEMORY[0x1EEE9AC00](&v122);
    v312 = &v122 - 4;
    *(&v122 - 2) = v15;
    v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
    v311 = v313;
    sub_1B06D5010();
    sub_1B0E456F8();
    v314 = v13;
    if (!v13)
    {

      sub_1B039E440(&v345);
      v306 = v347;
      if ((v348 & 1) == 0)
      {
        v305 = v306;
        v16 = v328;
        v269 = v306;
        v344 = v306;
        v17 = sub_1B06BF680();
        (*(v323 + 16))(v16, v17, v321);

        v282 = 17;
        v287 = 7;
        v18 = swift_allocObject();
        v19 = v309;
        v278 = v18;
        *(v18 + 16) = v318;
        v20 = v19;
        v288 = swift_allocObject();
        *(v288 + 16) = v309;
        v304 = sub_1B0E43988();
        v270 = v304;
        v303 = sub_1B0E45908();
        v271 = v303;
        v291 = swift_allocObject();
        v272 = v291;
        v281 = 0;
        *(v291 + 16) = 0;
        v292 = swift_allocObject();
        v273 = v292;
        v284 = 2;
        *(v292 + 16) = 2;
        v286 = 32;
        v21 = swift_allocObject();
        v22 = v317;
        v274 = v21;
        *(v21 + 16) = sub_1B06D4DBC;
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v274;
        v293 = v23;
        v275 = v23;
        *(v23 + 16) = sub_1B06D4E08;
        *(v23 + 24) = v24;
        v294 = swift_allocObject();
        v276 = v294;
        *(v294 + 16) = 34;
        v295 = swift_allocObject();
        v277 = v295;
        *(v295 + 16) = 8;
        v25 = swift_allocObject();
        v26 = v278;
        v279 = v25;
        *(v25 + 16) = sub_1B06D4E8C;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v279;
        v296 = v27;
        v280 = v27;
        *(v27 + 16) = sub_1B039BCF8;
        *(v27 + 24) = v28;
        v297 = swift_allocObject();
        v283 = v297;
        *(v297 + 16) = v281;
        v298 = swift_allocObject();
        v285 = v298;
        *(v298 + 16) = v284;
        v29 = swift_allocObject();
        v30 = v288;
        v289 = v29;
        *(v29 + 16) = sub_1B06D4FDC;
        *(v29 + 24) = v30;
        v31 = swift_allocObject();
        v32 = v289;
        v301 = v31;
        v290 = v31;
        *(v31 + 16) = sub_1B06D4E08;
        *(v31 + 24) = v32;
        v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v299 = sub_1B0E46A48();
        v300 = v33;

        v34 = v291;
        v35 = v300;
        *v300 = sub_1B0398F5C;
        v35[1] = v34;

        v36 = v292;
        v37 = v300;
        v300[2] = sub_1B0398F5C;
        v37[3] = v36;

        v38 = v293;
        v39 = v300;
        v300[4] = sub_1B0399348;
        v39[5] = v38;

        v40 = v294;
        v41 = v300;
        v300[6] = sub_1B0398F5C;
        v41[7] = v40;

        v42 = v295;
        v43 = v300;
        v300[8] = sub_1B0398F5C;
        v43[9] = v42;

        v44 = v296;
        v45 = v300;
        v300[10] = sub_1B039BCEC;
        v45[11] = v44;

        v46 = v297;
        v47 = v300;
        v300[12] = sub_1B0398F5C;
        v47[13] = v46;

        v48 = v298;
        v49 = v300;
        v300[14] = sub_1B0398F5C;
        v49[15] = v48;

        v50 = v300;
        v51 = v301;
        v300[16] = sub_1B0399348;
        v50[17] = v51;
        sub_1B0394964();

        if (os_log_type_enabled(v304, v303))
        {
          v53 = v314;
          v263 = sub_1B0E45D78();
          v260 = v263;
          v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v264 = sub_1B03949A8(0);
          v262 = v264;
          v265 = sub_1B03949A8(1);
          v341 = v263;
          v340 = v264;
          v339 = v265;
          v266 = &v341;
          sub_1B0394A48(2, &v341);
          sub_1B0394A48(3, v266);
          v337 = sub_1B0398F5C;
          v338 = v272;
          sub_1B03949FC(&v337, v266, &v340, &v339);
          v267 = v53;
          v268 = v53;
          if (v53)
          {
            v258 = 0;

            __break(1u);
          }

          else
          {
            v337 = sub_1B0398F5C;
            v338 = v273;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v256 = 0;
            v257 = 0;
            v337 = sub_1B0399348;
            v338 = v275;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v254 = 0;
            v255 = 0;
            v337 = sub_1B0398F5C;
            v338 = v276;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v252 = 0;
            v253 = 0;
            v337 = sub_1B0398F5C;
            v338 = v277;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v250 = 0;
            v251 = 0;
            v337 = sub_1B039BCEC;
            v338 = v280;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v248 = 0;
            v249 = 0;
            v337 = sub_1B0398F5C;
            v338 = v283;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v246 = 0;
            v247 = 0;
            v337 = sub_1B0398F5C;
            v338 = v285;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v244 = 0;
            v245 = 0;
            v337 = sub_1B0399348;
            v338 = v290;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v242 = 0;
            v243 = 0;
            _os_log_impl(&dword_1B0389000, v270, v271, "%hx: Received '%{public}s' from request #%hu.", v260, 0x14u);
            sub_1B03998A8(v262);
            sub_1B03998A8(v265);
            sub_1B0E45D58();

            v259 = v242;
          }
        }

        else
        {
          v54 = v314;

          v259 = v54;
        }

        v240 = v259;

        (*(v323 + 8))(v328, v321);
        v239 = &v343;
        swift_beginAccess();
        v238 = &v342;
        v55 = sub_1B0E45398();
        v56 = v238;
        *(v57 + 8) = v318;
        v55(v56, 0);
        swift_endAccess();

        v241 = v240;
LABEL_29:
        sub_1B06CDF74();
        return;
      }

      v315 = v314;
LABEL_15:
      v237 = v315;
      v58 = v329;
      if (v329)
      {
        v236 = v329;
        v59 = v326;
        v200 = v329;
        v355 = v329;
        v60 = sub_1B06BF680();
        (*(v323 + 16))(v59, v60, v321);

        v213 = 17;
        v218 = 7;
        v61 = swift_allocObject();
        v62 = v200;
        v209 = v61;
        *(v61 + 16) = v318;
        v63 = v62;
        v219 = swift_allocObject();
        *(v219 + 16) = v200;
        v235 = sub_1B0E43988();
        v201 = v235;
        v234 = sub_1B0E45908();
        v202 = v234;
        v222 = swift_allocObject();
        v203 = v222;
        v212 = 0;
        *(v222 + 16) = 0;
        v223 = swift_allocObject();
        v204 = v223;
        v215 = 2;
        *(v223 + 16) = 2;
        v217 = 32;
        v64 = swift_allocObject();
        v65 = v317;
        v205 = v64;
        *(v64 + 16) = sub_1B06D4DBC;
        *(v64 + 24) = v65;
        v66 = swift_allocObject();
        v67 = v205;
        v224 = v66;
        v206 = v66;
        *(v66 + 16) = sub_1B06D4E08;
        *(v66 + 24) = v67;
        v225 = swift_allocObject();
        v207 = v225;
        *(v225 + 16) = 34;
        v226 = swift_allocObject();
        v208 = v226;
        *(v226 + 16) = 8;
        v68 = swift_allocObject();
        v69 = v209;
        v210 = v68;
        *(v68 + 16) = sub_1B06D4E8C;
        *(v68 + 24) = v69;
        v70 = swift_allocObject();
        v71 = v210;
        v227 = v70;
        v211 = v70;
        *(v70 + 16) = sub_1B039BCF8;
        *(v70 + 24) = v71;
        v228 = swift_allocObject();
        v214 = v228;
        *(v228 + 16) = v212;
        v229 = swift_allocObject();
        v216 = v229;
        *(v229 + 16) = v215;
        v72 = swift_allocObject();
        v73 = v219;
        v220 = v72;
        *(v72 + 16) = sub_1B06D4FDC;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v220;
        v232 = v74;
        v221 = v74;
        *(v74 + 16) = sub_1B06D4E08;
        *(v74 + 24) = v75;
        v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v230 = sub_1B0E46A48();
        v231 = v76;

        v77 = v222;
        v78 = v231;
        *v231 = sub_1B0398F5C;
        v78[1] = v77;

        v79 = v223;
        v80 = v231;
        v231[2] = sub_1B0398F5C;
        v80[3] = v79;

        v81 = v224;
        v82 = v231;
        v231[4] = sub_1B0399348;
        v82[5] = v81;

        v83 = v225;
        v84 = v231;
        v231[6] = sub_1B0398F5C;
        v84[7] = v83;

        v85 = v226;
        v86 = v231;
        v231[8] = sub_1B0398F5C;
        v86[9] = v85;

        v87 = v227;
        v88 = v231;
        v231[10] = sub_1B039BCEC;
        v88[11] = v87;

        v89 = v228;
        v90 = v231;
        v231[12] = sub_1B0398F5C;
        v90[13] = v89;

        v91 = v229;
        v92 = v231;
        v231[14] = sub_1B0398F5C;
        v92[15] = v91;

        v93 = v231;
        v94 = v232;
        v231[16] = sub_1B0399348;
        v93[17] = v94;
        sub_1B0394964();

        if (os_log_type_enabled(v235, v234))
        {
          v95 = v237;
          v194 = sub_1B0E45D78();
          v191 = v194;
          v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v195 = sub_1B03949A8(0);
          v193 = v195;
          v196 = sub_1B03949A8(1);
          v354 = v194;
          v353 = v195;
          v352 = v196;
          v197 = &v354;
          sub_1B0394A48(2, &v354);
          sub_1B0394A48(3, v197);
          v350 = sub_1B0398F5C;
          v351 = v203;
          sub_1B03949FC(&v350, v197, &v353, &v352);
          v198 = v95;
          v199 = v95;
          if (v95)
          {
            v189 = 0;

            __break(1u);
          }

          else
          {
            v350 = sub_1B0398F5C;
            v351 = v204;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v187 = 0;
            v188 = 0;
            v350 = sub_1B0399348;
            v351 = v206;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v185 = 0;
            v186 = 0;
            v350 = sub_1B0398F5C;
            v351 = v207;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v183 = 0;
            v184 = 0;
            v350 = sub_1B0398F5C;
            v351 = v208;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v181 = 0;
            v182 = 0;
            v350 = sub_1B039BCEC;
            v351 = v211;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v179 = 0;
            v180 = 0;
            v350 = sub_1B0398F5C;
            v351 = v214;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v177 = 0;
            v178 = 0;
            v350 = sub_1B0398F5C;
            v351 = v216;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v175 = 0;
            v176 = 0;
            v350 = sub_1B0399348;
            v351 = v221;
            sub_1B03949FC(&v350, &v354, &v353, &v352);
            v173 = 0;
            v174 = 0;
            _os_log_impl(&dword_1B0389000, v201, v202, "%hx: Received '%{public}s' from unknown request #%hu.", v191, 0x14u);
            sub_1B03998A8(v193);
            sub_1B03998A8(v196);
            sub_1B0E45D58();

            v190 = v173;
          }
        }

        else
        {
          v96 = v237;

          v190 = v96;
        }

        v171 = v190;

        (*(v323 + 8))(v326, v321);
        v172 = v171;
      }

      else
      {
        v97 = v324;
        v98 = sub_1B06BF680();
        (*(v323 + 16))(v97, v98, v321);

        v152 = 17;
        v156 = 7;
        v157 = swift_allocObject();
        *(v157 + 16) = v318;
        v170 = sub_1B0E43988();
        v146 = v170;
        v169 = sub_1B0E458E8();
        v147 = v169;
        v160 = swift_allocObject();
        v148 = v160;
        *(v160 + 16) = 0;
        v161 = swift_allocObject();
        v149 = v161;
        *(v161 + 16) = 2;
        v155 = 32;
        v99 = swift_allocObject();
        v100 = v317;
        v150 = v99;
        *(v99 + 16) = sub_1B06D4DBC;
        *(v99 + 24) = v100;
        v101 = swift_allocObject();
        v102 = v150;
        v162 = v101;
        v151 = v101;
        *(v101 + 16) = sub_1B06D4E08;
        *(v101 + 24) = v102;
        v163 = swift_allocObject();
        v153 = v163;
        *(v163 + 16) = 34;
        v164 = swift_allocObject();
        v154 = v164;
        *(v164 + 16) = 8;
        v103 = swift_allocObject();
        v104 = v157;
        v158 = v103;
        *(v103 + 16) = sub_1B06D4E8C;
        *(v103 + 24) = v104;
        v105 = swift_allocObject();
        v106 = v158;
        v167 = v105;
        v159 = v105;
        *(v105 + 16) = sub_1B039BCF8;
        *(v105 + 24) = v106;
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v165 = sub_1B0E46A48();
        v166 = v107;

        v108 = v160;
        v109 = v166;
        *v166 = sub_1B0398F5C;
        v109[1] = v108;

        v110 = v161;
        v111 = v166;
        v166[2] = sub_1B0398F5C;
        v111[3] = v110;

        v112 = v162;
        v113 = v166;
        v166[4] = sub_1B0399348;
        v113[5] = v112;

        v114 = v163;
        v115 = v166;
        v166[6] = sub_1B0398F5C;
        v115[7] = v114;

        v116 = v164;
        v117 = v166;
        v166[8] = sub_1B0398F5C;
        v117[9] = v116;

        v118 = v166;
        v119 = v167;
        v166[10] = sub_1B039BCEC;
        v118[11] = v119;
        sub_1B0394964();

        if (os_log_type_enabled(v170, v169))
        {
          v120 = v237;
          v139 = sub_1B0E45D78();
          v136 = v139;
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v140 = sub_1B03949A8(0);
          v138 = v140;
          v141 = sub_1B03949A8(1);
          v360 = v139;
          v359 = v140;
          v358 = v141;
          v142 = 2;
          v143 = &v360;
          sub_1B0394A48(2, &v360);
          sub_1B0394A48(v142, v143);
          v356 = sub_1B0398F5C;
          v357 = v148;
          sub_1B03949FC(&v356, v143, &v359, &v358);
          v144 = v120;
          v145 = v120;
          if (v120)
          {
            v134 = 0;

            __break(1u);
          }

          else
          {
            v356 = sub_1B0398F5C;
            v357 = v149;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v132 = 0;
            v133 = 0;
            v356 = sub_1B0399348;
            v357 = v151;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v130 = 0;
            v131 = 0;
            v356 = sub_1B0398F5C;
            v357 = v153;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v128 = 0;
            v129 = 0;
            v356 = sub_1B0398F5C;
            v357 = v154;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v126 = 0;
            v127 = 0;
            v356 = sub_1B039BCEC;
            v357 = v159;
            sub_1B03949FC(&v356, &v360, &v359, &v358);
            v124 = 0;
            v125 = 0;
            _os_log_impl(&dword_1B0389000, v146, v147, "%hx: Received '%{public}s' without request.", v136, 0x10u);
            sub_1B03998A8(v138);
            sub_1B03998A8(v141);
            sub_1B0E45D58();

            v135 = v124;
          }
        }

        else
        {
          v121 = v237;

          v135 = v121;
        }

        v123 = v135;

        (*(v323 + 8))(v324, v321);
        v172 = v123;
      }

      v241 = v172;
      goto LABEL_29;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B06C9C1C()
{
  v10[2] = 0;
  v10[0] = sub_1B0E46A28();
  v10[1] = v0;
  v1 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v1);

  v9 = *(v6 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activityID);
  sub_1B06D5098();
  sub_1B041AF18();
  v8[0] = sub_1B0E44E98();
  v8[1] = v2;
  sub_1B0E46A08();
  sub_1B03B1198(v8);
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  v7 = *(v6 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_id);
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v10);
  return sub_1B0E44C88();
}

uint64_t sub_1B06C9DEC(unsigned int a1)
{
  v20 = a1;
  v26 = 0;
  v13 = sub_1B06D5110;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v14 = 0;
  v15 = sub_1B0E44238();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v8 - v18;
  v21 = sub_1B0E44288();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v8 - v24;
  v42 = v2;
  v41 = v1;
  v27 = sub_1B06CA158(v2);
  v40 = v27;
  v28 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activity;
  v29 = &v39;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v11 = Strong;
    v10 = Strong;
    v38 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v9);

    MEMORY[0x1E69E5928](v12);
    v4 = swift_allocObject();
    v5 = v12;
    v6 = v27;
    v7 = v13;
    *(v4 + 16) = v10;
    *(v4 + 24) = v5;
    *(v4 + 32) = v6;
    v36 = v7;
    v37 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = 0;
    v34 = sub_1B038C908;
    v35 = &block_descriptor_329;
    v8 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v25, v19, v8);
    (*(v16 + 8))(v19, v15);
    (*(v22 + 8))(v25, v21);
    _Block_release(v8);

    MEMORY[0x1E69E5920](v9);
  }

  return result;
}

uint64_t sub_1B06CA158(int a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 1;
    }

    else if (a1 == 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B06CA20C(uint64_t a1, void *a2, int a3)
{
  MEMORY[0x1E69E5928](a2);
  sub_1B06C7AD8(a2, a3);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B06CA38C()
{
  v1 = 0;
  result = sub_1B06C70B0(&v1, MEMORY[0x1E69E75F8]);
  qword_1EB6DA6D8 = result;
  return result;
}

uint64_t *sub_1B06CA3C4()
{
  if (qword_1EB6DA6D0 != -1)
  {
    swift_once();
  }

  return &qword_1EB6DA6D8;
}

uint64_t sub_1B06CA424()
{
  v1 = *sub_1B06CA3C4();

  return v1;
}

uint64_t sub_1B06CA454()
{
  v1 = *sub_1B06CA3C4();

  sub_1B03E1B3C(sub_1B06CA4EC, 0, v1, MEMORY[0x1E69E75F8], &unk_1F26A2268);

  return v2;
}

void sub_1B06CA4EC(_WORD *a1@<X0>, _WORD *a2@<X8>)
{
  v2 = ++*a1;
  sub_1B06CA370();
  *a2 = v3;
}

uint64_t sub_1B06CA53C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06CA594(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06CA614()
{
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B06CA640()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B06CA698()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B06CA6E8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_1B06CA748()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_unknownObjectRetain();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B06CA798(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06CA7F8()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B06CA848(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CA894()
{
  swift_beginAccess();
  v2 = *(v0 + 49);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B06CA8E4(char a1)
{
  swift_beginAccess();
  *(v1 + 49) = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CA930@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  swift_beginAccess();
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B06CA9BC(uint64_t a1)
{
  v10 = a1;
  v11 = sub_1B0E43108();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B06CAAFC()
{
  v2 = (v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06CAB58(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B06CABC4()
{
  v2 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06CAC00(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 32) = sub_1B06CA640();
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 49) = 0;
  sub_1B0E430F8();
  v6 = OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime;
  *(v4 + v6) = static MonotonicTime.now()();
  *(v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_id) = a1;
  MEMORY[0x1E69E5928](a3);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a3);
  swift_endAccess();
  swift_unknownObjectRetain();
  *(v4 + 24) = a2;
  MEMORY[0x1E69E5928](a4);
  *(v4 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue) = a4;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  swift_unknownObjectRelease();
  return v11;
}

void *sub_1B06CAD70()
{
  swift_beginAccess();
  if (*(v0 + 40))
  {
    v5 = v6[5];
    swift_unknownObjectRetain();
    swift_endAccess();
    swift_getObjectType();
    sub_1B0E45A98();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  MEMORY[0x1B272C2D0](v6 + 2);
  v1 = v6[3];
  swift_unknownObjectRelease();
  sub_1B039E440(v6 + 4);
  sub_1B03FD360(v6 + 5);
  v4 = v6 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 8))(v4);
  MEMORY[0x1E69E5920](*(v6 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue));
  return v6;
}

uint64_t sub_1B06CAEA4()
{
  v0 = *sub_1B06CAD70();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t *sub_1B06CAF08()
{
  v128 = sub_1B06D4DBC;
  v129 = sub_1B06D4E08;
  v130 = sub_1B03FB774;
  v131 = sub_1B06D5270;
  v132 = sub_1B0398F5C;
  v133 = sub_1B0398F5C;
  v134 = sub_1B0399348;
  v135 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v137 = sub_1B06D527C;
  v168 = 0;
  v166[0] = 0;
  v166[1] = 0;
  v163 = 0;
  v162 = 0;
  v157 = 0;
  v138 = 0;
  v139 = 0;
  v140 = sub_1B0E439A8();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v144 = &v32 - v143;
  v149 = sub_1B0E44468();
  v147 = *(v149 - 8);
  v148 = v149 - 8;
  v145 = (*(v147 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v149);
  v150 = (&v32 - v145);
  v168 = v0;

  v146 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v146);
  v1 = v147;
  *v150 = v146;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v151 = sub_1B0E44488();
  (*(v147 + 8))(v150, v149);
  result = v151;
  if (v151)
  {
    v4 = v127;

    v123 = sub_1B0E46A48();
    v124 = &v167;
    swift_beginAccess();
    v5 = *(v4 + 32);
    *(v4 + 32) = v123;

    swift_endAccess();
    v165 = sub_1B06CCDFC();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1808, &qword_1B0E99B80);
    sub_1B06D5184();
    sub_1B0E45798();
    for (i = v138; ; i = v33)
    {
      v121 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1818, &qword_1B0E99B88);
      sub_1B0E46518();
      v122 = v164;
      if (!v164)
      {
        break;
      }

      v120 = v122;
      v119 = v122;
      v163 = v122;
      _s7RequestCMa();

      v6 = sub_1B06CA454();
      v116 = sub_1B06C739C(v127, v6);
      v162 = v116;
      MEMORY[0x1E69E5928](v116);
      v117 = v161;
      sub_1B06CCF34(v116, 5, v161);
      v118 = &v160;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
      sub_1B0E452E8();
      swift_endAccess();
      v159 = v119;
      v158 = v119;
      if (v119)
      {
        v115 = v158;
      }

      else
      {
        v115 = 0;
      }

      v7 = v144;
      v97 = v115;
      v157 = v115;
      v8 = sub_1B06BF680();
      (*(v141 + 16))(v7, v8, v140);

      v101 = 7;
      v102 = swift_allocObject();
      *(v102 + 16) = v97;
      v113 = sub_1B0E43988();
      v114 = sub_1B0E45908();
      v99 = 17;
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = 2;
      v100 = 32;
      v9 = swift_allocObject();
      v10 = v127;
      v98 = v9;
      *(v9 + 16) = v128;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v98;
      v106 = v11;
      *(v11 + 16) = v129;
      *(v11 + 24) = v12;
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v13 = swift_allocObject();
      v14 = v102;
      v103 = v13;
      *(v13 + 16) = v130;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v103;
      v110 = v15;
      *(v15 + 16) = v131;
      *(v15 + 24) = v16;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v109 = sub_1B0E46A48();
      v111 = v17;

      v18 = v104;
      v19 = v111;
      *v111 = v132;
      v19[1] = v18;

      v20 = v105;
      v21 = v111;
      v111[2] = v133;
      v21[3] = v20;

      v22 = v106;
      v23 = v111;
      v111[4] = v134;
      v23[5] = v22;

      v24 = v107;
      v25 = v111;
      v111[6] = v135;
      v25[7] = v24;

      v26 = v108;
      v27 = v111;
      v111[8] = v136;
      v27[9] = v26;

      v28 = v110;
      v29 = v111;
      v111[10] = v137;
      v29[11] = v28;
      sub_1B0394964();

      if (os_log_type_enabled(v113, v114))
      {
        v30 = v121;
        v84 = sub_1B0E45D78();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v83 = 0;
        v85 = sub_1B03949A8(0);
        v86 = sub_1B03949A8(v83);
        v87 = &v156;
        v156 = v84;
        v88 = &v155;
        v155 = v85;
        v89 = &v154;
        v154 = v86;
        sub_1B0394A48(0, &v156);
        sub_1B0394A48(2, v87);
        v152 = v132;
        v153 = v104;
        sub_1B03949FC(&v152, v87, v88, v89);
        v90 = v30;
        v91 = v104;
        v92 = v105;
        v93 = v106;
        v94 = v107;
        v95 = v108;
        v96 = v110;
        if (v30)
        {
          v75 = v91;
          v76 = v92;
          v77 = v93;
          v78 = v94;
          v79 = v95;
          v80 = v96;
          v38 = v96;
          v37 = v95;
          v36 = v94;
          v35 = v93;
          v34 = v92;

          __break(1u);
        }

        else
        {
          v152 = v133;
          v153 = v105;
          sub_1B03949FC(&v152, &v156, &v155, &v154);
          v68 = 0;
          v69 = v104;
          v70 = v105;
          v71 = v106;
          v72 = v107;
          v73 = v108;
          v74 = v110;
          v152 = v134;
          v153 = v106;
          sub_1B03949FC(&v152, &v156, &v155, &v154);
          v61 = 0;
          v62 = v104;
          v63 = v105;
          v64 = v106;
          v65 = v107;
          v66 = v108;
          v67 = v110;
          v152 = v135;
          v153 = v107;
          sub_1B03949FC(&v152, &v156, &v155, &v154);
          v54 = 0;
          v55 = v104;
          v56 = v105;
          v57 = v106;
          v58 = v107;
          v59 = v108;
          v60 = v110;
          v152 = v136;
          v153 = v108;
          sub_1B03949FC(&v152, &v156, &v155, &v154);
          v47 = 0;
          v48 = v104;
          v49 = v105;
          v50 = v106;
          v51 = v107;
          v52 = v108;
          v53 = v110;
          v152 = v137;
          v153 = v110;
          sub_1B03949FC(&v152, &v156, &v155, &v154);
          v40 = 0;
          v41 = v104;
          v42 = v105;
          v43 = v106;
          v44 = v107;
          v45 = v108;
          v46 = v110;
          _os_log_impl(&dword_1B0389000, v113, v114, "%hx: Starting back-filling messages on task manager %lx.", v84, 0x10u);
          v39 = 0;
          sub_1B03998A8(v85);
          sub_1B03998A8(v86);
          sub_1B0E45D58();

          v81 = v40;
        }
      }

      else
      {
        v31 = v121;

        v81 = v31;
      }

      v33 = v81;
      MEMORY[0x1E69E5920](v113);
      (*(v141 + 8))(v144, v140);
      swift_getObjectType();
      MEMORY[0x1E69E5928](v116);
      [v119 startBackFillingMessageBodyDownloadWithRequest_];
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v116);
      swift_unknownObjectRelease();
    }

    return sub_1B039E440(v166);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06CC24C()
{
  v34 = sub_1B06D5370;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v59 = 0;
  v35 = sub_1B0E443F8();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v39 = v15 - v38;
  v40 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v41 = v15 - v40;
  v42 = sub_1B0E44208();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v59);
  v46 = (v15 - v45);
  v47 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = (v15 - v47);
  v82 = v15 - v47;
  v49 = sub_1B0E44238();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v53 = v15 - v52;
  v54 = sub_1B0E44288();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v58 = v15 - v57;
  v60 = sub_1B0E45A38();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v64 = v15 - v63;
  v69 = sub_1B0E44468();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v70 = (v15 - v65);
  v81 = v0;

  v66 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v66);
  v5 = v67;
  *v70 = v66;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v71 = sub_1B0E44488();
  (*(v67 + 8))(v70, v69);
  result = v71;
  if (v71)
  {

    swift_beginAccess();
    if (*(v33 + 40))
    {
      v32 = *(v33 + 40);
      swift_unknownObjectRetain();
      swift_endAccess();
      swift_getObjectType();
      sub_1B0E45A98();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_endAccess();
    }

    v15[0] = 0;
    v15[2] = sub_1B0421E38();
    v15[1] = sub_1B0E46A48();
    sub_1B06D52F0();
    sub_1B0E46028();
    v16 = *(v33 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
    MEMORY[0x1E69E5928](v16);
    v8 = sub_1B0E45A48();
    v31 = v8;
    MEMORY[0x1E69E5920](v16);
    (*(v61 + 8))(v64, v60);
    v80 = v8;
    ObjectType = swift_getObjectType();
    v21 = swift_allocObject();
    v17 = v21 + 16;

    v18 = v33;
    swift_weakInit();

    v78 = v34;
    v79 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = 0;
    v76 = sub_1B038C908;
    v77 = &block_descriptor_369;
    v20 = _Block_copy(&aBlock);
    sub_1B06D284C();
    sub_1B06D2870();
    sub_1B0E45A58();
    (*(v50 + 8))(v53, v49);
    (*(v55 + 8))(v58, v54);
    _Block_release(v20);

    v9 = v43;
    *v48 = 2;
    v22 = MEMORY[0x1E69E7F48];
    v10 = *MEMORY[0x1E69E7F48];
    v24 = *(v9 + 104);
    v23 = v9 + 104;
    v24();
    v25 = swift_getObjectType();
    sub_1B0E443D8();
    sub_1B0E443E8();
    v27 = *(v36 + 8);
    v26 = v36 + 8;
    v27(v39, v35);
    v11 = v22;
    v12 = v24;
    *v46 = 1;
    v13 = *v11;
    v12();
    MEMORY[0x1B2727D90](v41, v48, v46, v25);
    v30 = *(v43 + 8);
    v29 = v43 + 8;
    v30(v46, v42);
    v27(v41, v35);
    swift_unknownObjectRetain();
    v28 = &v72;
    swift_beginAccess();
    v14 = *(v33 + 40);
    *(v33 + 40) = v31;
    swift_unknownObjectRelease();
    swift_endAccess();
    sub_1B06D2914();
    v30(v48, v42);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B06CCC58()
{
  v2 = qword_1EB6DEED0;
  if (!qword_1EB6DEED0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DEED0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B06CCCF4(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

BOOL sub_1B06CCDAC()
{
  activity = *(v0 + 24);
  swift_unknownObjectRetain();
  should_defer = xpc_activity_should_defer(activity);
  swift_unknownObjectRelease();
  return should_defer;
}

uint64_t sub_1B06CCDFC()
{
  v7 = 0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1B06D4E94(&Strong);
    swift_endAccess();
    v2 = sub_1B06CCF8C();
    MEMORY[0x1E69E5920](v1);
    v3 = v2;
  }

  else
  {
    sub_1B06D4E94(&Strong);
    swift_endAccess();
    v3 = 0;
  }

  v4 = v3;
  if (v3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1828, &unk_1B0E99B90);
  return sub_1B0E46A48();
}

uint64_t sub_1B06CCF34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  result = MEMORY[0x1E69E5920](a1);
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1B06CCF8C()
{
  v83 = sub_1B06D53E8;
  v61 = sub_1B06CDC58;
  v62 = sub_1B06D5520;
  v63 = sub_1B03B0DF8;
  v64 = sub_1B06D5528;
  v65 = sub_1B03B0DF8;
  v66 = sub_1B0398F5C;
  v67 = sub_1B0398F5C;
  v68 = sub_1B0399260;
  v69 = sub_1B0398F5C;
  v70 = sub_1B0398F5C;
  v71 = sub_1B0399260;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v27 - v76;
  v94 = MEMORY[0x1EEE9AC00](v72);
  v79 = [v94 accountProvider];
  swift_getObjectType();
  v78 = [v79 mailAccounts];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1830, qword_1B0E99BA0);
  v80 = sub_1B0E451B8();
  v93 = v80;
  MEMORY[0x1E69E5920](v78);
  swift_unknownObjectRelease();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v92[1] = v80;
  KeyPath = swift_getKeyPath();

  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1838, &qword_1B0E99BE0);
  sub_1B06D5410();
  v0 = sub_1B0E46398();
  v84 = 0;
  v85 = v0;
  v57 = v0;

  v92[0] = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1828, &unk_1B0E99B90);
  sub_1B06D5498();
  v1 = sub_1B0E44F58();
  v59 = 0;
  v60 = v1;
  v2 = v77;
  v36 = v1;
  sub_1B039E440(v92);
  v91 = v36;
  v3 = sub_1B06BF680();
  (*(v74 + 16))(v2, v3, v73);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = 24;
  v43 = 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = swift_allocObject();
  *(v44 + 16) = v80;
  v55 = sub_1B0E43988();
  v56 = sub_1B0E45908();
  v40 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v47 = swift_allocObject();
  v41 = 8;
  *(v47 + 16) = 8;
  v42 = 32;
  v4 = swift_allocObject();
  v5 = v38;
  v39 = v4;
  *(v4 + 16) = v62;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v39;
  v48 = v6;
  *(v6 + 16) = v63;
  *(v6 + 24) = v7;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = v41;
  v8 = swift_allocObject();
  v9 = v44;
  v45 = v8;
  *(v8 + 16) = v64;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v45;
  v52 = v10;
  *(v10 + 16) = v65;
  *(v10 + 24) = v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v51 = sub_1B0E46A48();
  v53 = v12;

  v13 = v46;
  v14 = v53;
  *v53 = v66;
  v14[1] = v13;

  v15 = v47;
  v16 = v53;
  v53[2] = v67;
  v16[3] = v15;

  v17 = v48;
  v18 = v53;
  v53[4] = v68;
  v18[5] = v17;

  v19 = v49;
  v20 = v53;
  v53[6] = v69;
  v20[7] = v19;

  v21 = v50;
  v22 = v53;
  v53[8] = v70;
  v22[9] = v21;

  v23 = v52;
  v24 = v53;
  v53[10] = v71;
  v24[11] = v23;
  sub_1B0394964();

  if (os_log_type_enabled(v55, v56))
  {
    v25 = v59;
    v29 = sub_1B0E45D78();
    v27[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v28 = 0;
    v30 = sub_1B03949A8(0);
    v31 = sub_1B03949A8(v28);
    v32 = &v90;
    v90 = v29;
    v33 = &v89;
    v89 = v30;
    v34 = &v88;
    v88 = v31;
    sub_1B0394A48(0, &v90);
    sub_1B0394A48(2, v32);
    v86 = v66;
    v87 = v46;
    sub_1B03949FC(&v86, v32, v33, v34);
    v35 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v86 = v67;
      v87 = v47;
      sub_1B03949FC(&v86, &v90, &v89, &v88);
      v27[5] = 0;
      v86 = v68;
      v87 = v48;
      sub_1B03949FC(&v86, &v90, &v89, &v88);
      v27[4] = 0;
      v86 = v69;
      v87 = v49;
      sub_1B03949FC(&v86, &v90, &v89, &v88);
      v27[3] = 0;
      v86 = v70;
      v87 = v50;
      sub_1B03949FC(&v86, &v90, &v89, &v88);
      v27[2] = 0;
      v86 = v71;
      v87 = v52;
      sub_1B03949FC(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_1B0389000, v55, v56, "Found %ld task managers for %ld accounts.", v29, 0x16u);
      v27[1] = 0;
      sub_1B03998A8(v30);
      sub_1B03998A8(v31);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v55);
  (*(v74 + 8))(v77, v73);

  return v36;
}

uint64_t sub_1B06CDB80@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isActive];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06CDBE4(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectRetain();

  swift_getAtKeyPath();
  swift_unknownObjectRelease();

  return v3 & 1;
}

uint64_t sub_1B06CDC58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
  }

  else
  {
    result = swift_unknownObjectRelease();
    v3 = 0;
  }

  if (v3)
  {
    *a2 = [v3 taskManager];
    return MEMORY[0x1E69E5920](v3);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B06CDDC0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v14 = a1;
  v13 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  MEMORY[0x1E69E5928](Strong);
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a2);
  v11 = Strong;
  v12 = a2;
  if (!Strong)
  {
    if (!v12)
    {
      sub_1B06D4E94(&v11);
      v4 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_1B06BD0C8(&v11, &v10);
  if (!v12)
  {
    MEMORY[0x1E69E5920](v10);
LABEL_8:
    sub_1B06D61B0(&v11);
    v4 = 0;
    goto LABEL_7;
  }

  v9 = v10;
  v8 = v12;
  v3 = sub_1B0E45CD8();
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  sub_1B06D4E94(&v11);
  v4 = v3;
LABEL_7:
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](Strong);
  return v4 & 1;
}

uint64_t sub_1B06CDF74()
{
  v221 = "Fatal error";
  v222 = "Double value cannot be converted to Int because it is either infinite or NaN";
  v223 = "Swift/IntegerTypes.swift";
  v224 = "Double value cannot be converted to Int because the result would be less than Int.min";
  v225 = "Double value cannot be converted to Int because the result would be greater than Int.max";
  v226 = sub_1B06D4DBC;
  v227 = sub_1B06D4E08;
  v228 = sub_1B06D5530;
  v229 = sub_1B03B0DF8;
  v230 = sub_1B06D5538;
  v231 = sub_1B03B0DF8;
  v232 = sub_1B03FB774;
  v233 = sub_1B03B0DF8;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0399348;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B0399260;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0399260;
  v243 = sub_1B0398F5C;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0399260;
  v246 = sub_1B06D4DBC;
  v247 = sub_1B06D4E08;
  v248 = sub_1B06D5530;
  v249 = sub_1B03B0DF8;
  v250 = sub_1B06D5538;
  v251 = sub_1B03B0DF8;
  v252 = sub_1B03FB774;
  v253 = sub_1B03B0DF8;
  v254 = sub_1B06D5540;
  v255 = sub_1B039BCF8;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0399348;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0399260;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0399260;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B0399260;
  v268 = sub_1B0398F5C;
  v269 = sub_1B0398F5C;
  v270 = sub_1B039BCEC;
  v312 = 0;
  v309 = 0;
  v305 = 0;
  v271 = 0;
  v294 = 0;
  v279 = 0;
  v272 = sub_1B0E439A8();
  v273 = *(v272 - 8);
  v274 = v272 - 8;
  v275 = (v273[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v276 = v109 - v275;
  v277 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v278 = v109 - v277;
  v280 = sub_1B0E43108();
  v281 = *(v280 - 8);
  v282 = v280 - 8;
  v283 = (*(v281 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v279);
  v284 = v109 - v283;
  v285 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v286 = v109 - v285;
  v291 = sub_1B0E44468();
  v289 = *(v291 - 8);
  v290 = v291 - 8;
  v287 = (*(v289 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v291);
  v292 = (v109 - v287);
  v312 = v0;

  v288 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v288);
  v5 = v289;
  *v292 = v288;
  v6 = *MEMORY[0x1E69E8020];
  (*(v5 + 104))();
  v293 = sub_1B0E44488();
  (*(v289 + 8))(v292, v291);
  result = v293;
  if (v293)
  {

    v218 = &v311;
    swift_beginAccess();
    v219 = *(v220 + 48);
    result = swift_endAccess();
    if ((v219 & 1) == 0)
    {
      v215 = &v310;
      swift_beginAccess();
      v216 = *(v220 + 32);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v217 = sub_1B06D1520(v216);
      if (v217 == 5)
      {

        v212 = static MonotonicTime.now()();
        v309 = v212;
        v209 = (v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
        v210 = &v308;
        swift_beginAccess();
        v211 = *v209;
        swift_endAccess();
        result = MonotonicTime.seconds(since:)(v211, v212);
        if (v8 > 5.0)
        {
          v200 = (v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_lastStatusLogTime);
          v201 = &v307;
          v202 = 0;
          swift_beginAccess();
          *v200 = v212;
          swift_endAccess();
          sub_1B0E430E8();
          v203 = v220 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_startDate;
          v204 = &v306;
          swift_beginAccess();
          (*(v281 + 16))(v284, v203, v280);
          swift_endAccess();
          sub_1B0E43048();
          v207 = v9;
          v206 = *(v281 + 8);
          v205 = v281 + 8;
          v206(v284, v280);
          v206(v286, v280);
          v208 = floor(v207 / 60.0);
          if (((*&v208 >> 52) & 0x7FFLL) == 0x7FF)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (v208 <= -9.22337204e18)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (v208 >= 9.22337204e18)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          v10 = v278;
          v173 = v208;
          v305 = v208;
          v11 = sub_1B06BF680();
          v171 = v273[2];
          v172 = v273 + 2;
          v171(v10, v11, v272);

          v180 = 7;
          v181 = swift_allocObject();
          *(v181 + 16) = v173;
          v198 = sub_1B0E43988();
          v199 = sub_1B0E45908();
          v177 = 17;
          v183 = swift_allocObject();
          *(v183 + 16) = 0;
          v184 = swift_allocObject();
          *(v184 + 16) = 2;
          v179 = 32;
          v12 = swift_allocObject();
          v13 = v220;
          v174 = v12;
          *(v12 + 16) = v226;
          *(v12 + 24) = v13;
          v14 = swift_allocObject();
          v15 = v174;
          v185 = v14;
          *(v14 + 16) = v227;
          *(v14 + 24) = v15;
          v186 = swift_allocObject();
          *(v186 + 16) = 0;
          v187 = swift_allocObject();
          v178 = 8;
          *(v187 + 16) = 8;
          v16 = swift_allocObject();
          v17 = v220;
          v175 = v16;
          *(v16 + 16) = v228;
          *(v16 + 24) = v17;
          v18 = swift_allocObject();
          v19 = v175;
          v188 = v18;
          *(v18 + 16) = v229;
          *(v18 + 24) = v19;
          v189 = swift_allocObject();
          *(v189 + 16) = 0;
          v190 = swift_allocObject();
          *(v190 + 16) = v178;
          v20 = swift_allocObject();
          v21 = v220;
          v176 = v20;
          *(v20 + 16) = v230;
          *(v20 + 24) = v21;
          v22 = swift_allocObject();
          v23 = v176;
          v191 = v22;
          *(v22 + 16) = v231;
          *(v22 + 24) = v23;
          v192 = swift_allocObject();
          *(v192 + 16) = 0;
          v193 = swift_allocObject();
          *(v193 + 16) = v178;
          v24 = swift_allocObject();
          v25 = v181;
          v182 = v24;
          *(v24 + 16) = v232;
          *(v24 + 24) = v25;
          v26 = swift_allocObject();
          v27 = v182;
          v195 = v26;
          *(v26 + 16) = v233;
          *(v26 + 24) = v27;
          v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v194 = sub_1B0E46A48();
          v196 = v28;

          v29 = v183;
          v30 = v196;
          *v196 = v234;
          v30[1] = v29;

          v31 = v184;
          v32 = v196;
          v196[2] = v235;
          v32[3] = v31;

          v33 = v185;
          v34 = v196;
          v196[4] = v236;
          v34[5] = v33;

          v35 = v186;
          v36 = v196;
          v196[6] = v237;
          v36[7] = v35;

          v37 = v187;
          v38 = v196;
          v196[8] = v238;
          v38[9] = v37;

          v39 = v188;
          v40 = v196;
          v196[10] = v239;
          v40[11] = v39;

          v41 = v189;
          v42 = v196;
          v196[12] = v240;
          v42[13] = v41;

          v43 = v190;
          v44 = v196;
          v196[14] = v241;
          v44[15] = v43;

          v45 = v191;
          v46 = v196;
          v196[16] = v242;
          v46[17] = v45;

          v47 = v192;
          v48 = v196;
          v196[18] = v243;
          v48[19] = v47;

          v49 = v193;
          v50 = v196;
          v196[20] = v244;
          v50[21] = v49;

          v51 = v195;
          v52 = v196;
          v196[22] = v245;
          v52[23] = v51;
          sub_1B0394964();

          if (os_log_type_enabled(v198, v199))
          {
            v53 = v271;
            v164 = sub_1B0E45D78();
            v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v163 = 0;
            v165 = sub_1B03949A8(0);
            v166 = sub_1B03949A8(v163);
            v167 = &v299;
            v299 = v164;
            v168 = &v298;
            v298 = v165;
            v169 = &v297;
            v297 = v166;
            sub_1B0394A48(0, &v299);
            sub_1B0394A48(4, v167);
            v295 = v234;
            v296 = v183;
            sub_1B03949FC(&v295, v167, v168, v169);
            v170 = v53;
            if (v53)
            {

              __break(1u);
            }

            else
            {
              v295 = v235;
              v296 = v184;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v160 = 0;
              v295 = v236;
              v296 = v185;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v159 = 0;
              v295 = v237;
              v296 = v186;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v158 = 0;
              v295 = v238;
              v296 = v187;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v157 = 0;
              v295 = v239;
              v296 = v188;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v156 = 0;
              v295 = v240;
              v296 = v189;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v155 = 0;
              v295 = v241;
              v296 = v190;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v154 = 0;
              v295 = v242;
              v296 = v191;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v153 = 0;
              v295 = v243;
              v296 = v192;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v152 = 0;
              v295 = v244;
              v296 = v193;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v151 = 0;
              v295 = v245;
              v296 = v195;
              sub_1B03949FC(&v295, &v299, &v298, &v297);
              v150 = 0;
              _os_log_impl(&dword_1B0389000, v198, v199, "%hx: %ld out of %ld are still running after %ld minute(s).", v164, 0x24u);
              v149 = 0;
              sub_1B03998A8(v165);
              sub_1B03998A8(v166);
              sub_1B0E45D58();

              v161 = v150;
            }
          }

          else
          {
            v54 = v271;

            v161 = v54;
          }

          v146 = v161;
          MEMORY[0x1E69E5920](v198);
          v147 = v273[1];
          v148 = v273 + 1;
          result = v147(v278, v272);
          if (v173 > 5)
          {
            v55 = v276;
            v56 = sub_1B06BF680();
            v171(v55, v56, v272);

            v125 = 7;
            v120 = swift_allocObject();
            *(v120 + 16) = v173;

            v144 = sub_1B0E43988();
            v145 = sub_1B0E458E8();
            v122 = 17;
            v127 = swift_allocObject();
            *(v127 + 16) = 0;
            v128 = swift_allocObject();
            *(v128 + 16) = 2;
            v124 = 32;
            v57 = swift_allocObject();
            v58 = v220;
            v117 = v57;
            *(v57 + 16) = v246;
            *(v57 + 24) = v58;
            v59 = swift_allocObject();
            v60 = v117;
            v129 = v59;
            *(v59 + 16) = v247;
            *(v59 + 24) = v60;
            v130 = swift_allocObject();
            *(v130 + 16) = 0;
            v131 = swift_allocObject();
            v123 = 8;
            *(v131 + 16) = 8;
            v61 = swift_allocObject();
            v62 = v220;
            v118 = v61;
            *(v61 + 16) = v248;
            *(v61 + 24) = v62;
            v63 = swift_allocObject();
            v64 = v118;
            v132 = v63;
            *(v63 + 16) = v249;
            *(v63 + 24) = v64;
            v133 = swift_allocObject();
            *(v133 + 16) = 0;
            v134 = swift_allocObject();
            *(v134 + 16) = v123;
            v65 = swift_allocObject();
            v66 = v220;
            v119 = v65;
            *(v65 + 16) = v250;
            *(v65 + 24) = v66;
            v67 = swift_allocObject();
            v68 = v119;
            v135 = v67;
            *(v67 + 16) = v251;
            *(v67 + 24) = v68;
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            v137 = swift_allocObject();
            *(v137 + 16) = v123;
            v69 = swift_allocObject();
            v70 = v120;
            v121 = v69;
            *(v69 + 16) = v252;
            *(v69 + 24) = v70;
            v71 = swift_allocObject();
            v72 = v121;
            v138 = v71;
            *(v71 + 16) = v253;
            *(v71 + 24) = v72;
            v139 = swift_allocObject();
            *(v139 + 16) = 32;
            v140 = swift_allocObject();
            *(v140 + 16) = v123;
            v73 = swift_allocObject();
            v74 = v220;
            v126 = v73;
            *(v73 + 16) = v254;
            *(v73 + 24) = v74;
            v75 = swift_allocObject();
            v76 = v126;
            v142 = v75;
            *(v75 + 16) = v255;
            *(v75 + 24) = v76;
            v141 = sub_1B0E46A48();
            v143 = v77;

            v78 = v127;
            v79 = v143;
            *v143 = v256;
            v79[1] = v78;

            v80 = v128;
            v81 = v143;
            v143[2] = v257;
            v81[3] = v80;

            v82 = v129;
            v83 = v143;
            v143[4] = v258;
            v83[5] = v82;

            v84 = v130;
            v85 = v143;
            v143[6] = v259;
            v85[7] = v84;

            v86 = v131;
            v87 = v143;
            v143[8] = v260;
            v87[9] = v86;

            v88 = v132;
            v89 = v143;
            v143[10] = v261;
            v89[11] = v88;

            v90 = v133;
            v91 = v143;
            v143[12] = v262;
            v91[13] = v90;

            v92 = v134;
            v93 = v143;
            v143[14] = v263;
            v93[15] = v92;

            v94 = v135;
            v95 = v143;
            v143[16] = v264;
            v95[17] = v94;

            v96 = v136;
            v97 = v143;
            v143[18] = v265;
            v97[19] = v96;

            v98 = v137;
            v99 = v143;
            v143[20] = v266;
            v99[21] = v98;

            v100 = v138;
            v101 = v143;
            v143[22] = v267;
            v101[23] = v100;

            v102 = v139;
            v103 = v143;
            v143[24] = v268;
            v103[25] = v102;

            v104 = v140;
            v105 = v143;
            v143[26] = v269;
            v105[27] = v104;

            v106 = v142;
            v107 = v143;
            v143[28] = v270;
            v107[29] = v106;
            sub_1B0394964();

            if (os_log_type_enabled(v144, v145))
            {
              v108 = v146;
              v110 = sub_1B0E45D78();
              v109[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
              v111 = sub_1B03949A8(0);
              v112 = sub_1B03949A8(1);
              v113 = &v304;
              v304 = v110;
              v114 = &v303;
              v303 = v111;
              v115 = &v302;
              v302 = v112;
              sub_1B0394A48(2, &v304);
              sub_1B0394A48(5, v113);
              v300 = v256;
              v301 = v127;
              sub_1B03949FC(&v300, v113, v114, v115);
              v116 = v108;
              if (v108)
              {

                __break(1u);
              }

              else
              {
                v300 = v257;
                v301 = v128;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[13] = 0;
                v300 = v258;
                v301 = v129;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[12] = 0;
                v300 = v259;
                v301 = v130;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[11] = 0;
                v300 = v260;
                v301 = v131;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[10] = 0;
                v300 = v261;
                v301 = v132;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[9] = 0;
                v300 = v262;
                v301 = v133;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[8] = 0;
                v300 = v263;
                v301 = v134;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[7] = 0;
                v300 = v264;
                v301 = v135;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[6] = 0;
                v300 = v265;
                v301 = v136;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[5] = 0;
                v300 = v266;
                v301 = v137;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[4] = 0;
                v300 = v267;
                v301 = v138;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[3] = 0;
                v300 = v268;
                v301 = v139;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[2] = 0;
                v300 = v269;
                v301 = v140;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                v109[1] = 0;
                v300 = v270;
                v301 = v142;
                sub_1B03949FC(&v300, &v304, &v303, &v302);
                _os_log_impl(&dword_1B0389000, v144, v145, "%hx: %ld out of %ld are still running after %ld minute(s): %s", v110, 0x2Eu);
                sub_1B03998A8(v111);
                sub_1B03998A8(v112);
                sub_1B0E45D58();
              }
            }

            else
            {
            }

            MEMORY[0x1E69E5920](v144);
            return v147(v276, v272);
          }
        }
      }

      else
      {
        v214 = v217;
        v213 = v217;
        v294 = v217;

        return sub_1B06C3EFC(v213);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06D0B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v4 = sub_1B06D0C04(v3);

  return v4;
}

uint64_t sub_1B06D0C04(uint64_t a1)
{
  v3[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  sub_1B06D5548();
  sub_1B0E44FD8();
  sub_1B039E440(v3);
  return v3[1];
}

uint64_t sub_1B06D0CD0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v4 = sub_1B06D0D40();

  return v4;
}

uint64_t sub_1B06D0D40()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E452A8();

  return v1;
}

uint64_t sub_1B06D0D98(uint64_t a1)
{
  v29[2] = a1;
  v29[0] = sub_1B0E46A28();
  v29[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1840, &qword_1B0E99BE8);
  sub_1B03F1A20(sub_1B06D1108, 0, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v12, &v25);
  sub_1B06D4E94(&Strong);
  v22 = v25;
  v23 = v26;
  if (v26)
  {
    v27 = v22;
    v28 = v23;
  }

  else
  {
    v27 = sub_1B0E44838();
    v28 = v4;
  }

  v21[0] = v27;
  v21[1] = v28;
  v10 = MEMORY[0x1E69E6158];
  sub_1B0E46A08();
  sub_1B03B1198(v21);
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  v16 = *(a1 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1848, &unk_1B0E99BF0);
  sub_1B03F1A20(sub_1B06D1318, 0, v6, MEMORY[0x1E69E73E0], v10, v12, &v17);
  v14 = v17;
  v15 = v18;
  if (v18)
  {
    v19 = v14;
    v20 = v15;
  }

  else
  {
    v19 = sub_1B0E44838();
    v20 = v7;
  }

  v13[0] = v19;
  v13[1] = v20;
  sub_1B0E46A08();
  sub_1B03B1198(v13);
  v8 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v29);
  return sub_1B0E44C88();
}

uint64_t sub_1B06D1108@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = 0;
  v13 = *a1;
  v12[0] = sub_1B0E46A28();
  v12[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  v11 = *(v13 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_id);
  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  v10 = *(v13 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodyScheduler7Request_activityID);
  sub_1B0E469F8();
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  sub_1B06C71E4();
  sub_1B0E469F8();
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v12);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B06D1318@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = sub_1B06C6CB4();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B06D135C(uint64_t a1)
{
  swift_beginAccess();
  v6 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v10 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  v1 = sub_1B06D5010();
  v3 = sub_1B039CA88(sub_1B06D14DC, 0, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v8);
  sub_1B039E440(&v10);
  v9 = v3;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v4 = sub_1B0E448E8();

  sub_1B039E440(&v9);
  return v4;
}

uint64_t sub_1B06D14DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B06D0D98(a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B06D1520(uint64_t a1)
{
  v6[1] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1800, &unk_1B0E99B70);
  sub_1B06D5548();
  sub_1B0E44F58();
  sub_1B039E440(v6);
  v4 = sub_1B0E452A8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E452A8();

  if (v4 == v3)
  {
    return sub_1B06D1A08();
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1B06D168C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B06D16F8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B0E452A8();

  if (v2 < 0)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  sub_1B06D55D0();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1858, &qword_1B0E99C00);
    result = sub_1B0E46518();
    if (v3)
    {
      break;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E453A8();

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B06D56EC();
    if (Strong)
    {
      sub_1B06C7744();
      MEMORY[0x1E69E5920](Strong);
    }
  }

  return result;
}

uint64_t sub_1B06D18F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B06D1940();
  *a1 = result;
  return result;
}

uint64_t sub_1B06D1940()
{
  v5 = v0;
  if (*(v0 + 8) == 5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v2 = Strong == 0;
    sub_1B06D4E94(&Strong);
    if (v2)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t sub_1B06D1A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1860, &qword_1B0E99C08);
  sub_1B06D5714();
  if (sub_1B0E45748())
  {
    v3 = 0;
  }

  else
  {
    sub_1B06D579C();
    sub_1B06D5824();
    if (sub_1B0E450A8())
    {
      if (sub_1B0E44F48())
      {
        v3 = 0;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B06D58A0();
        v1 = sub_1B0E46398();
        v3 = sub_1B06D1A08(v1);
      }
    }

    else if (sub_1B0E450A8())
    {
      if (sub_1B0E44F48())
      {
        v3 = 1;
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B06D58A0();
        v2 = sub_1B0E46398();
        v3 = sub_1B06D1A08(v2);
      }
    }

    else
    {
      if (sub_1B0E450A8())
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      v3 = v4;
    }
  }

  return v3;
}

void *sub_1B06D1D24(void *a1, uint64_t a2)
{
  v8[2] = a1;
  v8[1] = a2;
  v8[0] = swift_unknownObjectWeakLoadStrong();
  v5 = v8[0] != 0;
  result = v8;
  sub_1B06D4E94(v8);
  if (v5 && *(a2 + 8) == 5)
  {
    if (__OFADD__(*a1, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a1;
    }
  }

  return result;
}

uint64_t sub_1B06D1E40(char *a1)
{
  v2 = *a1;
  sub_1B06D4EC8();
  return sub_1B0E46AE8() & 1;
}

uint64_t sub_1B06D1EB4(char *a1)
{
  v2 = *a1;
  sub_1B06D5824();
  return (sub_1B0E44A28() ^ 1) & 1;
}

uint64_t sub_1B06D1F30(char *a1)
{
  v2 = *a1;
  sub_1B06D4EC8();
  return sub_1B0E46AE8() & 1;
}

uint64_t sub_1B06D1FA8(char *a1)
{
  v2 = *a1;
  sub_1B06D5824();
  return (sub_1B0E44A28() ^ 1) & 1;
}

uint64_t sub_1B06D2028(uint64_t a1)
{
  v2[4] = a1 + 16;
  swift_beginAccess();
  v2[0] = swift_weakLoadStrong();
  if (v2[0])
  {

    sub_1B0391AD4(v2);
    swift_endAccess();
    sub_1B06D20D8();
  }

  else
  {
    sub_1B0391AD4(v2);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D20D8()
{
  v40 = sub_1B06D4DBC;
  v41 = sub_1B06D4E08;
  v42 = sub_1B0398F5C;
  v43 = sub_1B0398F5C;
  v44 = sub_1B0399348;
  v64 = 0;
  v45 = 0;
  v46 = 0;
  v47 = sub_1B0E439A8();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v51 = v18 - v50;
  v56 = sub_1B0E44468();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v52 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = (v18 - v52);
  v64 = v0;

  v53 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v53);
  v1 = v54;
  *v57 = v53;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v58 = sub_1B0E44488();
  (*(v54 + 8))(v57, v56);
  result = v58;
  if (v58)
  {
    v4 = v51;

    v5 = sub_1B06BF680();
    (*(v48 + 16))(v4, v5, v47);

    v37 = sub_1B0E43988();
    v38 = sub_1B0E458D8();
    v27 = 17;
    v29 = 7;
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = swift_allocObject();
    *(v32 + 16) = 2;
    v28 = 32;
    v6 = swift_allocObject();
    v7 = v39;
    v30 = v6;
    *(v6 + 16) = v40;
    *(v6 + 24) = v7;
    v8 = swift_allocObject();
    v9 = v30;
    v34 = v8;
    *(v8 + 16) = v41;
    *(v8 + 24) = v9;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v33 = sub_1B0E46A48();
    v35 = v10;

    v11 = v31;
    v12 = v35;
    *v35 = v42;
    v12[1] = v11;

    v13 = v32;
    v14 = v35;
    v35[2] = v43;
    v14[3] = v13;

    v15 = v34;
    v16 = v35;
    v35[4] = v44;
    v16[5] = v15;
    sub_1B0394964();

    if (os_log_type_enabled(v37, v38))
    {
      v17 = v45;
      v20 = sub_1B0E45D78();
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v19 = 0;
      v21 = sub_1B03949A8(0);
      v22 = sub_1B03949A8(v19);
      v23 = &v63;
      v63 = v20;
      v24 = &v62;
      v62 = v21;
      v25 = &v61;
      v61 = v22;
      sub_1B0394A48(0, &v63);
      sub_1B0394A48(1, v23);
      v59 = v42;
      v60 = v31;
      sub_1B03949FC(&v59, v23, v24, v25);
      v26 = v17;
      if (v17)
      {

        __break(1u);
      }

      else
      {
        v59 = v43;
        v60 = v32;
        sub_1B03949FC(&v59, &v63, &v62, &v61);
        v18[1] = 0;
        v59 = v44;
        v60 = v34;
        sub_1B03949FC(&v59, &v63, &v62, &v61);
        _os_log_impl(&dword_1B0389000, v37, v38, "%hx: Timer fired", v20, 6u);
        v18[0] = 0;
        sub_1B03998A8(v21);
        sub_1B03998A8(v22);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v37);
    (*(v48 + 8))(v51, v47);
    if (sub_1B06CCDAC())
    {
      sub_1B06D2954();
    }

    return sub_1B06CDF74();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06D2870()
{
  sub_1B039B834(0);
  sub_1B0E44238();
  sub_1B039B924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1880, &unk_1B0E99EA0);
  sub_1B039B9A4();
  return sub_1B0E460A8();
}