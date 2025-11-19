uint64_t sub_1ADFDC454(unint64_t a1, uint64_t a2, void (*a3)(unint64_t *, uint64_t))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  a3(&v7, a2);
}

uint64_t TaggedValue_9.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v390 = a2;
  v403 = a1;
  v399 = a4;
  v409 = a3[19];
  v5 = a3[10];
  v367 = *(v409 + 8);
  v6 = v5;
  v406 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v315 = sub_1AE23D7CC();
  v314 = *(v315 - 8);
  v8 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v315);
  v368 = &v289 - v9;
  v369 = AssociatedTypeWitness;
  v366 = *(AssociatedTypeWitness - 8);
  v10 = *(v366 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v313 = &v289 - v12;
  v381 = *(v6 - 8);
  v13 = *(v381 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v364 = &v289 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v363 = &v289 - v17;
  v408 = a3[18];
  v18 = a3[9];
  v360 = *(v408 + 8);
  v19 = v18;
  *(&v405 + 1) = v18;
  v20 = swift_getAssociatedTypeWitness();
  v312 = sub_1AE23D7CC();
  v311 = *(v312 - 8);
  v21 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v312);
  v362 = &v289 - v22;
  v365 = v20;
  v361 = *(v20 - 8);
  v23 = *(v361 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v310 = &v289 - v25;
  v380 = *(v19 - 8);
  v26 = *(v380 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v358 = &v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v357 = &v289 - v30;
  v31 = a3[8];
  v407 = a3[17];
  v354 = *(v407 + 1);
  v32 = v31;
  *&v405 = v31;
  v33 = swift_getAssociatedTypeWitness();
  v309 = sub_1AE23D7CC();
  v308 = *(v309 - 8);
  v34 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v309);
  v356 = &v289 - v35;
  v359 = v33;
  v355 = *(v33 - 8);
  v36 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v307 = &v289 - v38;
  v379 = *(v32 - 8);
  v39 = *(v379 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v352 = &v289 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v351 = &v289 - v43;
  *&v401 = a3[16];
  v44 = a3[7];
  v348 = *(v401 + 8);
  v45 = v44;
  v404 = v44;
  v46 = swift_getAssociatedTypeWitness();
  v306 = sub_1AE23D7CC();
  v305 = *(v306 - 8);
  v47 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v350 = &v289 - v48;
  v353 = v46;
  v349 = *(v46 - 8);
  v49 = *(v349 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v304 = &v289 - v51;
  v378 = *(v45 - 8);
  v52 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v346 = &v289 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v345 = &v289 - v56;
  *&v400[8] = a3[15];
  v57 = a3[6];
  v342 = *(*&v400[8] + 8);
  v58 = swift_getAssociatedTypeWitness();
  v303 = sub_1AE23D7CC();
  v302 = *(v303 - 8);
  v59 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v303);
  v344 = &v289 - v60;
  v347 = v58;
  v343 = *(v58 - 8);
  v61 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v301 = &v289 - v63;
  v376 = *(v57 - 8);
  v64 = *(v376 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v340 = &v289 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v339 = &v289 - v68;
  *v400 = a3[14];
  v69 = a3[5];
  v336 = *(*v400 + 8);
  v70 = swift_getAssociatedTypeWitness();
  v300 = sub_1AE23D7CC();
  v299 = *(v300 - 8);
  v71 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v300);
  v338 = &v289 - v72;
  v341 = v70;
  v337 = *(v70 - 8);
  v73 = *(v337 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v298 = &v289 - v75;
  v374 = *(v69 - 8);
  v76 = *(v374 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v334 = &v289 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v333 = &v289 - v80;
  v81 = a3[13];
  v82 = a3[4];
  v330 = *(v81 + 8);
  v83 = swift_getAssociatedTypeWitness();
  v297 = sub_1AE23D7CC();
  v296 = *(v297 - 8);
  v84 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v332 = &v289 - v85;
  v335 = v83;
  v331 = *(v83 - 8);
  v86 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v295 = &v289 - v88;
  v372 = *(v82 - 8);
  v89 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v328 = &v289 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v327 = &v289 - v93;
  v94 = a3[12];
  v95 = a3[3];
  v324 = *(v94 + 8);
  v96 = swift_getAssociatedTypeWitness();
  v294 = sub_1AE23D7CC();
  v293 = *(v294 - 8);
  v97 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v294);
  v326 = &v289 - v98;
  v329 = v96;
  v325 = *(v96 - 8);
  v99 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v292 = &v289 - v101;
  v370 = *(v95 - 8);
  v102 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v323 = &v289 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v322 = &v289 - v106;
  v107 = a3[11];
  v108 = a3[2];
  v318 = *(v107 + 8);
  v109 = swift_getAssociatedTypeWitness();
  v291 = sub_1AE23D7CC();
  v290 = *(v291 - 8);
  v110 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v291);
  v320 = &v289 - v111;
  v321 = v109;
  v319 = *(v109 - 8);
  v112 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v289 = &v289 - v114;
  v388 = *(v108 - 8);
  v115 = *(v388 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v317 = &v289 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v118);
  v316 = &v289 - v119;
  v389 = v108;
  *&v120 = v108;
  v371 = v95;
  *(&v120 + 1) = v95;
  v373 = v82;
  *&v121 = v82;
  v375 = v69;
  *(&v121 + 1) = v69;
  v377 = v57;
  *&v122 = v57;
  *(&v122 + 1) = v404;
  v393 = v121;
  v411 = v121;
  v394 = v120;
  v410 = v120;
  v395 = v405;
  v413 = v405;
  v396 = v122;
  v412 = v122;
  *&v122 = v406;
  *(&v122 + 1) = v107;
  *&v120 = v94;
  *(&v120 + 1) = v81;
  v397 = v120;
  v415 = v120;
  v398 = v122;
  v414 = v122;
  v123 = *v400;
  *&v120 = v401;
  *(&v120 + 1) = v407;
  *&v400[8] = v120;
  v417 = v120;
  v401 = v123;
  v416 = v123;
  v418 = v408;
  v419 = v409;
  v124 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v125 = *(v124 - 8);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v386 = &v289 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128);
  v387 = &v289 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v385 = &v289 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v384 = &v289 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v383 = &v289 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v382 = &v289 - v137;
  MEMORY[0x1EEE9AC00](v138);
  v140 = &v289 - v139;
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v289 - v142;
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v289 - v145;
  MEMORY[0x1EEE9AC00](v147);
  v149 = &v289 - v148;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v400 = *(TupleTypeMetadata2 - 8);
  v151 = *(*v400 + 64);
  v152 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v154 = &v289 - v153;
  v392 = v155;
  v156 = &v289 + *(v155 + 48) - v153;
  v391 = v125;
  v157 = *(v125 + 16);
  v157(&v289 - v153, v402, v124, v152);
  v158 = v156;
  (v157)(v156, v403, v124);
  v407 = v154;
  v159 = v124;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v161 = v407;
        (v157)(v143, v407, v124);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v195 = v372;
          v196 = *(v372 + 32);
          v197 = v327;
          v198 = v373;
          v196(v327, v143, v373);
          v199 = v328;
          v196(v328, v156, v198);
          v200 = v332;
          (*(v330 + 40))(v199, v390, v198);
          v201 = *(v195 + 8);
          v201(v199, v198);
          v201(v197, v198);
          v202 = v331;
          v203 = v335;
          if ((*(v331 + 48))(v200, 1, v335) == 1)
          {
            (*(v296 + 8))(v200, v297);
            goto LABEL_39;
          }

          v265 = *(v202 + 32);
          v266 = v295;
          v265(v295, v200, v203);
          v267 = v399;
          v265(v399, v266, v203);
          v411 = v393;
          v410 = v394;
          v413 = v395;
          v412 = v396;
          v415 = v397;
          v414 = v398;
          v417 = *&v400[8];
          v416 = v401;
          v418 = v408;
          v419 = v409;
          v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
          goto LABEL_63;
        }

        (*(v372 + 8))(v143, v373);
      }

      else
      {
        v161 = v407;
        if (EnumCaseMultiPayload == 3)
        {
          (v157)(v140, v407, v124);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v162 = v374;
            v163 = *(v374 + 32);
            v164 = v333;
            v165 = v375;
            v163(v333, v140, v375);
            v166 = v334;
            v163(v334, v158, v165);
            v167 = v338;
            (*(v336 + 40))(v166, v390, v165);
            v168 = *(v162 + 8);
            v168(v166, v165);
            v168(v164, v165);
            v169 = v337;
            v170 = v341;
            if ((*(v337 + 48))(v167, 1, v341) == 1)
            {
              (*(v299 + 8))(v167, v300);
LABEL_39:
              v411 = v393;
              v410 = v394;
              v413 = v395;
              v412 = v396;
              v415 = v397;
              v414 = v398;
              v417 = *&v400[8];
              v416 = v401;
              goto LABEL_40;
            }

            v271 = *(v169 + 32);
            v272 = v298;
            v271(v298, v167, v170);
            v267 = v399;
            v271(v399, v272, v170);
            v411 = v393;
            v410 = v394;
            v413 = v395;
            v412 = v396;
            v415 = v397;
            v414 = v398;
            v417 = *&v400[8];
            v416 = v401;
            v418 = v408;
            v419 = v409;
            v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
            goto LABEL_63;
          }

          (*(v374 + 8))(v140, v375);
        }

        else
        {
          v215 = v382;
          (v157)(v382, v407, v159);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v216 = v376;
            v217 = *(v376 + 32);
            v218 = v339;
            v219 = v215;
            v220 = v377;
            v217(v339, v219, v377);
            v221 = v340;
            v217(v340, v158, v220);
            v222 = v344;
            (*(v342 + 40))(v221, v390, v220);
            v223 = *(v216 + 8);
            v223(v221, v220);
            v223(v218, v220);
            v224 = v343;
            v225 = v347;
            if ((*(v343 + 48))(v222, 1, v347) == 1)
            {
              (*(v302 + 8))(v222, v303);
              goto LABEL_39;
            }

            v275 = *(v224 + 32);
            v276 = v301;
            v275(v301, v222, v225);
            v267 = v399;
            v275(v399, v276, v225);
            v411 = v393;
            v410 = v394;
            v413 = v395;
            v412 = v396;
            v415 = v397;
            v414 = v398;
            v417 = *&v400[8];
            v416 = v401;
            v418 = v408;
            v419 = v409;
            v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
            goto LABEL_63;
          }

          (*(v376 + 8))(v215, v377);
        }
      }

      goto LABEL_50;
    }

    if (EnumCaseMultiPayload)
    {
      (v157)(v146, v407, v124);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v370 + 8))(v146, v371);
        v161 = v407;
        goto LABEL_50;
      }

      v231 = v370;
      v232 = *(v370 + 32);
      v233 = v322;
      v234 = v371;
      v232(v322, v146, v371);
      v235 = v323;
      v232(v323, v158, v234);
      v236 = v326;
      (*(v324 + 40))(v235, v390, v234);
      v237 = *(v231 + 8);
      v237(v235, v234);
      v237(v233, v234);
      v238 = v325;
      v239 = v329;
      if ((*(v325 + 48))(v236, 1, v329) == 1)
      {
        (*(v293 + 8))(v236, v294);
LABEL_53:
        v411 = v393;
        v410 = v394;
        v413 = v395;
        v412 = v396;
        v415 = v397;
        v414 = v398;
        v417 = *&v400[8];
        v416 = v401;
        v418 = v408;
        v419 = v409;
        v264 = type metadata accessor for TaggedValue_9.ObservableDifference();
        (*(*(v264 - 8) + 56))(v399, 1, 1, v264);
LABEL_69:
        v285 = v391;
        v161 = v407;
        return (*(v285 + 8))(v161, v159);
      }

      v279 = *(v238 + 32);
      v280 = v292;
      v279(v292, v236, v239);
      v281 = v399;
      v279(v399, v280, v239);
      v411 = v393;
      v410 = v394;
      v413 = v395;
      v412 = v396;
      v415 = v397;
      v414 = v398;
      v417 = *&v400[8];
      v416 = v401;
      v418 = v408;
      v419 = v409;
      v282 = type metadata accessor for TaggedValue_9.ObservableDifference();
    }

    else
    {
      v161 = v407;
      (v157)(v149, v407, v124);
      v182 = v156;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v388 + 8))(v149, v389);
        goto LABEL_50;
      }

      v255 = v388;
      v256 = *(v388 + 32);
      v257 = v316;
      v258 = v389;
      v256(v316, v149, v389);
      v259 = v317;
      v256(v317, v182, v258);
      v260 = v320;
      (*(v318 + 40))(v259, v390, v258);
      v261 = *(v255 + 8);
      v261(v259, v258);
      v261(v257, v258);
      v262 = v319;
      v263 = v321;
      if ((*(v319 + 48))(v260, 1, v321) == 1)
      {
        (*(v290 + 8))(v260, v291);
        goto LABEL_53;
      }

      v287 = *(v262 + 32);
      v288 = v289;
      v287(v289, v260, v263);
      v281 = v399;
      v287(v399, v288, v263);
      v411 = v393;
      v410 = v394;
      v413 = v395;
      v412 = v396;
      v415 = v397;
      v414 = v398;
      v417 = *&v400[8];
      v416 = v401;
      v418 = v408;
      v419 = v409;
      v282 = type metadata accessor for TaggedValue_9.ObservableDifference();
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v282 - 8) + 56))(v281, 0, 1, v282);
    goto LABEL_69;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v161 = v407;
    if (EnumCaseMultiPayload == 5)
    {
      v183 = v383;
      (v157)(v383, v407, v124);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v184 = v378;
        v185 = *(v378 + 32);
        v186 = v345;
        v187 = v183;
        v188 = v158;
        v189 = v404;
        v185(v345, v187, v404);
        v190 = v346;
        v185(v346, v188, v189);
        v191 = v350;
        (*(v348 + 40))(v190, v390, v189);
        v192 = *(v184 + 8);
        v192(v190, v189);
        v192(v186, v189);
        v193 = v349;
        v194 = v353;
        if ((*(v349 + 48))(v191, 1, v353) == 1)
        {
          (*(v305 + 8))(v191, v306);
          goto LABEL_39;
        }

        v277 = *(v193 + 32);
        v278 = v304;
        v277(v304, v191, v194);
        v267 = v399;
        v277(v399, v278, v194);
        v411 = v393;
        v410 = v394;
        v413 = v395;
        v412 = v396;
        v415 = v397;
        v414 = v398;
        v417 = *&v400[8];
        v416 = v401;
        v418 = v408;
        v419 = v409;
        v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
        goto LABEL_63;
      }

      (*(v378 + 8))(v183, v404);
    }

    else
    {
      v240 = v384;
      (v157)(v384, v407, v159);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v241 = v379;
        v242 = *(v379 + 32);
        v243 = v351;
        v244 = v240;
        v245 = v405;
        v242(v351, v244, v405);
        v246 = v352;
        v242(v352, v158, v245);
        v247 = v356;
        (*(v354 + 40))(v246, v390, v245);
        v248 = *(v241 + 8);
        v248(v246, v245);
        v248(v243, v245);
        v249 = v355;
        v250 = v359;
        if ((*(v355 + 48))(v247, 1, v359) == 1)
        {
          (*(v308 + 8))(v247, v309);
          goto LABEL_39;
        }

        v283 = *(v249 + 32);
        v284 = v307;
        v283(v307, v247, v250);
        v267 = v399;
        v283(v399, v284, v250);
        v411 = v393;
        v410 = v394;
        v413 = v395;
        v412 = v396;
        v415 = v397;
        v414 = v398;
        v417 = *&v400[8];
        v416 = v401;
        v418 = v408;
        v419 = v409;
        v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
        goto LABEL_63;
      }

      (*(v379 + 8))(v240, v405);
    }
  }

  else
  {
    v161 = v407;
    if (EnumCaseMultiPayload == 7)
    {
      v204 = v385;
      (v157)(v385, v407, v159);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v205 = v380;
        v206 = *(v380 + 32);
        v207 = v357;
        v208 = v204;
        v209 = *(&v405 + 1);
        v206(v357, v208, *(&v405 + 1));
        v210 = v358;
        v206(v358, v158, v209);
        v211 = v362;
        (*(v360 + 40))(v210, v390, v209);
        v212 = *(v205 + 8);
        v212(v210, v209);
        v212(v207, v209);
        v213 = v361;
        v214 = v365;
        if ((*(v361 + 48))(v211, 1, v365) == 1)
        {
          (*(v311 + 8))(v211, v312);
          goto LABEL_39;
        }

        v269 = *(v213 + 32);
        v270 = v310;
        v269(v310, v211, v214);
        v267 = v399;
        v269(v399, v270, v214);
        v411 = v393;
        v410 = v394;
        v413 = v395;
        v412 = v396;
        v415 = v397;
        v414 = v398;
        v417 = *&v400[8];
        v416 = v401;
        v418 = v408;
        v419 = v409;
        v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
        goto LABEL_63;
      }

      (*(v380 + 8))(v204, *(&v405 + 1));
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v171 = v387;
      (v157)(v387, v407, v159);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v172 = v381;
        v173 = *(v381 + 32);
        v174 = v363;
        v175 = v171;
        v176 = v406;
        v173(v363, v175, v406);
        v177 = v364;
        v173(v364, v158, v176);
        v178 = v368;
        (*(v367 + 40))(v177, v390, v176);
        v179 = *(v172 + 8);
        v179(v177, v176);
        v179(v174, v176);
        v180 = v366;
        v181 = v369;
        if ((*(v366 + 48))(v178, 1, v369) == 1)
        {
          (*(v314 + 8))(v178, v315);
          goto LABEL_39;
        }

        v273 = *(v180 + 32);
        v274 = v313;
        v273(v313, v178, v181);
        v267 = v399;
        v273(v399, v274, v181);
        v411 = v393;
        v410 = v394;
        v413 = v395;
        v412 = v396;
        v415 = v397;
        v414 = v398;
        v417 = *&v400[8];
        v416 = v401;
        v418 = v408;
        v419 = v409;
        v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
LABEL_63:
        swift_storeEnumTagMultiPayload();
        (*(*(v268 - 8) + 56))(v267, 0, 1, v268);
        goto LABEL_64;
      }

      (*(v381 + 8))(v171, v406);
    }

    else
    {
      v226 = v386;
      (v157)(v386, v407, v124);
      v227 = v226[1];
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v228 = *v226;
        v230 = *v158;
        v229 = *(v158 + 1);

        if (v228 == v230)
        {
          v410 = v394;
          v411 = v393;
          v412 = v396;
          v413 = v395;
          v414 = v398;
          v415 = v397;
          v416 = v401;
          v417 = *&v400[8];
LABEL_40:
          v418 = v408;
          v419 = v409;
          v251 = type metadata accessor for TaggedValue_9.ObservableDifference();
          (*(*(v251 - 8) + 56))(v399, 1, 1, v251);
LABEL_64:
          v254 = &v411 + 8;
          goto LABEL_65;
        }

        v410 = v394;
        v411 = v393;
        v412 = v396;
        v413 = v395;
        v414 = v398;
        v415 = v397;
        v416 = v401;
        v417 = *&v400[8];
        v418 = v408;
        v419 = v409;
        v268 = type metadata accessor for TaggedValue_9.ObservableDifference();
        v267 = v399;
        goto LABEL_63;
      }
    }
  }

LABEL_50:
  v410 = v394;
  v411 = v393;
  v412 = v396;
  v413 = v395;
  v414 = v398;
  v415 = v397;
  v416 = v401;
  v417 = *&v400[8];
  v418 = v408;
  v419 = v409;
  v252 = type metadata accessor for TaggedValue_9.ObservableDifference();
  v253 = v399;
  swift_storeEnumTagMultiPayload();
  (*(*(v252 - 8) + 56))(v253, 0, 1, v252);
  v159 = v392;
  v254 = &v420;
LABEL_65:
  v285 = *(v254 - 32);
  return (*(v285 + 8))(v161, v159);
}

uint64_t static TaggedValue_1<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v7 = *(a3 - 8);
  v36 = a5;
  v37 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v33 - v11;
  v12 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v33 - v21;
  v24 = *(v23 + 48);
  v33 = v13;
  v25 = *(v13 + 16);
  v25(&v33 - v21, a1, v12, v20);
  (v25)(&v22[v24], v38, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v25)(v16, v22, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v37;
      v28 = *(v37 + 32);
      v29 = v34;
      v28(v34, v16, a3);
      v30 = v35;
      v28(v35, &v22[v24], a3);
      v26 = sub_1AE23CCBC();
      v31 = *(v27 + 8);
      v31(v30, a3);
      v31(v29, a3);
      v18 = v33;
      TupleTypeMetadata2 = v12;
      goto LABEL_6;
    }

    (*(v37 + 8))(v16, a3);
  }

  v26 = 0;
LABEL_6:
  (*(v18 + 8))(v22, TupleTypeMetadata2);
  return v26 & 1;
}

uint64_t static TaggedValue_2<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v55[1] = a6;
  v64 = a1;
  v65 = a2;
  v61 = *(a4 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = v55 - v12;
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v55[0] = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = v55 - v18;
  v66 = v19;
  v67 = v20;
  v62 = v20;
  v68 = v21;
  v69 = v22;
  v23 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v55 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = v55 - v35;
  v38 = *(v37 + 48);
  v60 = v24;
  v39 = *(v24 + 16);
  v39(v55 - v35, v64, v23, v34);
  (v39)(&v36[v38], v65, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v39)(v27, v36, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v61;
        v41 = v62;
        v43 = *(v61 + 32);
        v44 = v56;
        v43(v56, v27, v62);
        v45 = v57;
        v43(v57, &v36[v38], v41);
        v46 = v44;
        v47 = sub_1AE23CCBC();
        v48 = *(v42 + 8);
        v48(v45, v41);
        v48(v46, v41);
LABEL_10:
        v32 = v60;
        TupleTypeMetadata2 = v23;
        goto LABEL_11;
      }

      (*(v61 + 8))(v27, v62);
    }
  }

  else
  {
    v49 = v63;
    (v39)(v30, v36, v23);
    if (!swift_getEnumCaseMultiPayload())
    {
      v50 = *(v49 + 32);
      v50(v59, v30, a3);
      v51 = v55[0];
      v50(v55[0], &v36[v38], a3);
      v52 = v59;
      v47 = sub_1AE23CCBC();
      v53 = *(v49 + 8);
      v53(v51, a3);
      v53(v52, a3);
      goto LABEL_10;
    }

    (*(v49 + 8))(v30, a3);
  }

  v47 = 0;
LABEL_11:
  (*(v32 + 8))(v36, TupleTypeMetadata2);
  return v47 & 1;
}

uint64_t static TaggedValue_3<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v87 = a1;
  v88 = a2;
  v82 = *(a5 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v79 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v72 - v10;
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v72 - v16;
  v80 = *(v17 - 8);
  v18 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v72 - v22;
  v83 = v23;
  v84 = v24;
  v89 = v23;
  v90 = v25;
  v85 = v25;
  v91 = v24;
  v92 = v26;
  v93 = v27;
  v94 = v28;
  v29 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v72 - v38;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v42 = *(v41 + 64);
  v43 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v45 = &v72 - v44;
  v47 = *(v46 + 48);
  v86 = v30;
  v48 = *(v30 + 16);
  v48(&v72 - v44, v87, v29, v43);
  (v48)(&v45[v47], v88, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_13;
    }

    (v48)(v33, v45, v29);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v82 + 8))(v33, v84);
      goto LABEL_13;
    }

    v50 = v82;
    v51 = *(v82 + 32);
    v52 = v78;
    v53 = v84;
    v51(v78, v33, v84);
    v54 = &v45[v47];
    v55 = v79;
    v51(v79, v54, v53);
    v56 = sub_1AE23CCBC();
    v57 = *(v50 + 8);
    v57(v55, v53);
    v58 = v52;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    (v48)(v36, v45, v29);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v81 + 8))(v36, v85);
      goto LABEL_13;
    }

    v59 = v81;
    v60 = *(v81 + 32);
    v61 = v76;
    v53 = v85;
    v60(v76, v36, v85);
    v62 = &v45[v47];
    v63 = v77;
    v60(v77, v62, v53);
    v56 = sub_1AE23CCBC();
    v57 = *(v59 + 8);
    v57(v63, v53);
    v58 = v61;
LABEL_10:
    v57(v58, v53);
LABEL_15:
    v41 = v86;
    TupleTypeMetadata2 = v29;
    goto LABEL_16;
  }

  (v48)(v39, v45, v29);
  if (!swift_getEnumCaseMultiPayload())
  {
    v64 = v80;
    v65 = *(v80 + 32);
    v66 = v73;
    v67 = v83;
    v65(v73, v39, v83);
    v68 = &v45[v47];
    v69 = v74;
    v65(v74, v68, v67);
    v56 = sub_1AE23CCBC();
    v70 = *(v64 + 8);
    v70(v69, v67);
    v70(v66, v67);
    goto LABEL_15;
  }

  (*(v80 + 8))(v39, v83);
LABEL_13:
  v56 = 0;
LABEL_16:
  (*(v41 + 8))(v45, TupleTypeMetadata2);
  return v56 & 1;
}

uint64_t sub_1ADFDFFF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[6];
  v7 = a3[7];
  v8 = *(a4 - 24);
  v6 = *(a4 - 16);
  return static TaggedValue_3<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], *(a4 - 8)) & 1;
}

uint64_t static TaggedValue_4<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v96 = a8;
  v114 = a1;
  v115 = a2;
  v109 = *(a6 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v93 - v13;
  v108 = *(v14 - 8);
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v93 - v19;
  v105 = *(v20 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v93 - v25;
  v113 = *(v26 - 8);
  v27 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v95 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v93 - v31;
  v106 = v32;
  v107 = v33;
  v116 = v32;
  v117 = v33;
  v110 = v34;
  v111 = v35;
  v118 = v34;
  v119 = v35;
  v120 = v36;
  v121 = v37;
  v122 = v39;
  v123 = v38;
  v40 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v104 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v103 = &v93 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v93 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v93 - v50;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v57 = &v93 - v56;
  v59 = *(v58 + 48);
  v112 = v41;
  v60 = *(v41 + 16);
  v60(&v93 - v56, v114, v40, v55);
  v61 = v59;
  (v60)(&v57[v59], v115, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v72 = v113;
    if (EnumCaseMultiPayload)
    {
      (v60)(v48, v57, v40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = a10;
        v81 = v105;
        v82 = *(v105 + 32);
        v83 = v97;
        v84 = v107;
        v82(v97, v48, v107);
        v85 = v98;
        v82(v98, &v57[v61], v84);
        v70 = sub_1AE23CCBC();
        v86 = *(v81 + 8);
        v86(v85, v84);
        v86(v83, v84);
        goto LABEL_20;
      }

      (*(v105 + 8))(v48, v107);
    }

    else
    {
      (v60)(v51, v57, v40);
      if (!swift_getEnumCaseMultiPayload())
      {
        v87 = *(v72 + 32);
        v88 = v94;
        v89 = v106;
        v87(v94, v51, v106);
        v90 = v95;
        v87(v95, &v57[v61], v89);
        v70 = sub_1AE23CCBC();
        v91 = *(v72 + 8);
        v91(v90, v89);
        v91(v88, v89);
        goto LABEL_20;
      }

      (*(v72 + 8))(v51, v106);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v73 = v103;
    (v60)(v103, v57, v40);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v74 = v73;
      v75 = v108;
      v76 = *(v108 + 32);
      v77 = v99;
      v78 = v110;
      v76(v99, v74, v110);
      v79 = v100;
      v76(v100, &v57[v61], v78);
      v70 = sub_1AE23CCBC();
      v80 = *(v75 + 8);
      v80(v79, v78);
      v80(v77, v78);
      goto LABEL_20;
    }

    (*(v108 + 8))(v73, v110);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v63 = v104;
    (v60)(v104, v57, v40);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v64 = v109;
      v65 = *(v109 + 32);
      v66 = v101;
      v67 = v111;
      v65(v101, v63, v111);
      v68 = &v57[v59];
      v69 = v102;
      v65(v102, v68, v67);
      v70 = sub_1AE23CCBC();
      v71 = *(v64 + 8);
      v71(v69, v67);
      v71(v66, v67);
LABEL_20:
      v53 = v112;
      TupleTypeMetadata2 = v40;
      goto LABEL_21;
    }

    (*(v109 + 8))(v63, v111);
  }

  v70 = 0;
LABEL_21:
  (*(v53 + 8))(v57, TupleTypeMetadata2);
  return v70 & 1;
}

uint64_t sub_1ADFE08A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[9];
  v8 = *(a4 - 32);
  v5 = a3[8];
  v6 = *(a4 - 24);
  return static TaggedValue_4<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], *(a4 - 8), a3[7], *(a4 - 16)) & 1;
}

uint64_t static TaggedValue_5<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v127 = a1;
  v128 = a2;
  v119 = *(a7 - 8);
  v7 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v102 - v10;
  v118 = *(v11 - 8);
  v12 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v102 - v15;
  v117 = *(v16 - 8);
  v17 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v108 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v102 - v20;
  v116 = *(v21 - 8);
  v22 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v24);
  v105 = &v102 - v25;
  v114 = *(v26 - 8);
  v27 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v102 - v29;
  MEMORY[0x1EEE9AC00](v29);
  v103 = &v102 - v30;
  v115 = v31;
  v129 = v31;
  v130 = v32;
  v121 = v32;
  v122 = v33;
  v131 = v33;
  v132 = v34;
  v120 = v34;
  v123 = v35;
  v133 = v35;
  v134 = v36;
  v135 = v38;
  v136 = v37;
  v137 = v40;
  v138 = v39;
  v41 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v113 = &v102 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v102 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v102 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v102 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v102 - v55;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v125 = *(TupleTypeMetadata2 - 8);
  v58 = *(v125 + 64);
  v59 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v61 = &v102 - v60;
  v126 = v62;
  v63 = *(v62 + 48);
  v124 = v42;
  v64 = *(v42 + 16);
  v64(&v102 - v60, v127, v41, v59);
  (v64)(&v61[v63], v128, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (v64)(v47, v61, v41);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v78 = v63;
        v79 = v118;
        v80 = *(v118 + 32);
        v81 = v109;
        v82 = v120;
        v80(v109, v47, v120);
        v83 = &v61[v78];
        v84 = v110;
        v80(v110, v83, v82);
        v76 = sub_1AE23CCBC();
        v85 = *(v79 + 8);
        v85(v84, v82);
        v85(v81, v82);
        goto LABEL_24;
      }

      (*(v118 + 8))(v47, v120);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v73 = v113;
      (v64)(v113, v61, v41);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v66 = v119;
        v67 = *(v119 + 32);
        v68 = v111;
        v74 = v73;
        v70 = v123;
        v67(v111, v74, v123);
        v71 = &v61[v63];
        v72 = &v139;
        goto LABEL_10;
      }

      (*(v119 + 8))(v73, v123);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v64)(v53, v61, v41);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v116;
        v67 = *(v116 + 32);
        v68 = v105;
        v69 = v53;
        v70 = v121;
        v67(v105, v69, v121);
        v71 = &v61[v63];
        v72 = &v138;
LABEL_10:
        v75 = *(v72 - 32);
        v67(v75, v71, v70);
        v76 = sub_1AE23CCBC();
        v77 = *(v66 + 8);
        v77(v75, v70);
        v77(v68, v70);
LABEL_24:
        v94 = v124;
        v93 = v41;
        goto LABEL_25;
      }

      (*(v116 + 8))(v53, v121);
    }

    else
    {
      (v64)(v50, v61, v41);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v86 = v117;
        v87 = *(v117 + 32);
        v88 = v107;
        v89 = v50;
        v90 = v122;
        v87(v107, v89, v122);
        v91 = v108;
        v87(v108, &v61[v63], v90);
        v76 = sub_1AE23CCBC();
        v92 = *(v86 + 8);
        v92(v91, v90);
        v92(v88, v90);
        goto LABEL_24;
      }

      (*(v117 + 8))(v50, v122);
    }
  }

  else
  {
    (v64)(v56, v61, v41);
    if (!swift_getEnumCaseMultiPayload())
    {
      v95 = v114;
      v96 = *(v114 + 32);
      v97 = v103;
      v98 = v115;
      v96(v103, v56, v115);
      v99 = v104;
      v96(v104, &v61[v63], v98);
      v76 = sub_1AE23CCBC();
      v100 = *(v95 + 8);
      v100(v99, v98);
      v100(v97, v98);
      goto LABEL_24;
    }

    (*(v114 + 8))(v56, v115);
  }

  v76 = 0;
  v94 = v125;
  v93 = v126;
LABEL_25:
  (*(v94 + 8))(v61, v93);
  return v76 & 1;
}

uint64_t sub_1ADFE12E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[7];
  v13 = a3[11];
  v14 = *(a4 - 40);
  v11 = a3[10];
  v12 = *(a4 - 32);
  v9 = a3[9];
  v10 = *(a4 - 24);
  v7 = a3[8];
  v8 = *(a4 - 16);
  v6 = *(a4 - 8);
  return static TaggedValue_5<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6]) & 1;
}

uint64_t static TaggedValue_6<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v167 = a1;
  v168 = a2;
  v154 = *(a8 - 8);
  v11 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](a11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = &v138 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v138 - v13;
  v153 = *(v15 - 8);
  v16 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = &v138 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v138 - v19;
  v152 = *(v21 - 8);
  v22 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v145 = &v138 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v144 = &v138 - v25;
  v164 = *(v27 - 8);
  v28 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v143 = &v138 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v142 = &v138 - v31;
  v163 = *(v33 - 8);
  v34 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v141 = &v138 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v140 = &v138 - v37;
  v162 = *(v39 - 8);
  v40 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = &v138 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v138 = &v138 - v43;
  v160 = v45;
  v169 = v45;
  v170 = v46;
  v150 = v46;
  v151 = v47;
  v171 = v47;
  v172 = v48;
  v155 = v48;
  v157 = v49;
  v173 = v49;
  v174 = v50;
  v156 = v50;
  v175 = v52;
  v176 = v51;
  v177 = v54;
  v178 = v53;
  v179 = v56;
  v180 = v55;
  v57 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v159 = &v138 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v158 = &v138 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v138 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v138 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v138 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v138 - v73;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v166 = *(TupleTypeMetadata2 - 8);
  v76 = *(v166 + 64);
  v77 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v79 = &v138 - v78;
  v165 = v80;
  v81 = *(v80 + 48);
  v161 = v58;
  v82 = *(v58 + 16);
  v82(&v138 - v78, v167, v57, v77);
  v83 = v81;
  (v82)(&v79[v81], v168, v57);
  v168 = v79;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v95 = v162;
    v96 = v163;
    v97 = v164;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v98 = v168;
        (v82)(v71, v168, v57);
        v86 = v98;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v99 = v96;
          v100 = *(v96 + 32);
          v101 = v140;
          v102 = v150;
          v100(v140, v71, v150);
          v103 = v141;
          v100(v141, &v86[v83], v102);
          v93 = sub_1AE23CCBC();
          v104 = *(v99 + 8);
          v104(v103, v102);
          goto LABEL_19;
        }

        (*(v96 + 8))(v71, v150);
      }

      else
      {
        v116 = v168;
        (v82)(v68, v168, v57);
        v86 = v116;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v117 = v97;
          v118 = *(v97 + 32);
          v119 = v142;
          v120 = v151;
          v118(v142, v68, v151);
          v121 = v143;
          v118(v143, &v116[v83], v120);
          v93 = sub_1AE23CCBC();
          v122 = *(v117 + 8);
          v122(v121, v120);
          v122(v119, v120);
          goto LABEL_20;
        }

        (*(v97 + 8))(v68, v151);
      }
    }

    else
    {
      v115 = v168;
      (v82)(v74, v168, v57);
      v86 = v115;
      if (!swift_getEnumCaseMultiPayload())
      {
        v167 = a10;
        v132 = v95;
        v133 = *(v95 + 32);
        v134 = v138;
        v135 = v160;
        v133(v138, v74, v160);
        v136 = v139;
        v133(v139, &v86[v83], v135);
        v93 = sub_1AE23CCBC();
        v137 = *(v132 + 8);
        v137(v136, v135);
        v137(v134, v135);
        goto LABEL_20;
      }

      (*(v95 + 8))(v74, v160);
    }

LABEL_27:
    v93 = 0;
    v130 = v165;
    v129 = v166;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v93 = 0;
      v130 = v165;
      v129 = v166;
      v86 = v168;
      goto LABEL_28;
    }

    v105 = v159;
    v106 = v168;
    (v82)(v159, v168, v57);
    v86 = v106;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v107 = v154;
      v108 = *(v154 + 32);
      v109 = v148;
      v110 = v105;
      v111 = v156;
      v108(v148, v110, v156);
      v112 = v149;
      v108(v149, &v168[v83], v111);
      v93 = sub_1AE23CCBC();
      v113 = *(v107 + 8);
      v113(v112, v111);
      v114 = v109;
      v86 = v168;
      v113(v114, v111);
      goto LABEL_20;
    }

    (*(v154 + 8))(v105, v156);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v123 = v158;
    v124 = v168;
    (v82)(v158, v168, v57);
    v86 = v124;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v153 + 8))(v123, v157);
      goto LABEL_27;
    }

    v125 = v153;
    v126 = *(v153 + 32);
    v101 = v146;
    v127 = v123;
    v102 = v157;
    v126(v146, v127, v157);
    v128 = v147;
    v126(v147, &v124[v83], v102);
    v93 = sub_1AE23CCBC();
    v104 = *(v125 + 8);
    v104(v128, v102);
LABEL_19:
    v104(v101, v102);
    goto LABEL_20;
  }

  v85 = v168;
  (v82)(v65, v168, v57);
  v86 = v85;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v152 + 8))(v65, v155);
    goto LABEL_27;
  }

  v87 = v152;
  v88 = *(v152 + 32);
  v89 = v144;
  v90 = v65;
  v91 = v155;
  v88(v144, v90, v155);
  v92 = v145;
  v88(v145, &v85[v83], v91);
  v93 = sub_1AE23CCBC();
  v94 = *(v87 + 8);
  v94(v92, v91);
  v94(v89, v91);
LABEL_20:
  v129 = v161;
  v130 = v57;
LABEL_28:
  (*(v129 + 8))(v86, v130);
  return v93 & 1;
}

uint64_t sub_1ADFE1FC4(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v12 = a3[13];
  v13 = *(a4 - 48);
  v10 = a3[12];
  v11 = *(a4 - 40);
  v8 = a3[11];
  v9 = *(a4 - 32);
  v6 = a3[10];
  v7 = *(a4 - 24);
  v5 = *(a4 - 16);
  return static TaggedValue_6<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], *(a4 - 8), a3[9]) & 1;
}

uint64_t static TaggedValue_7<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v180 = a1;
  v169 = *(a9 - 8);
  v15 = v169[8];
  MEMORY[0x1EEE9AC00](a14);
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v158 = &v144 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v144 - v17;
  v168 = *(v19 - 8);
  v20 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v156 = &v144 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v144 - v23;
  v167 = *(v25 - 8);
  v26 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v154 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v153 = &v144 - v29;
  v166 = *(v31 - 8);
  v32 = v166[8];
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = &v144 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v151 = &v144 - v35;
  v165 = *(v37 - 8);
  v38 = v165[8];
  MEMORY[0x1EEE9AC00](v39);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v149 = &v144 - v41;
  v164 = *(v43 - 8);
  v44 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v148 = &v144 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v147 = &v144 - v47;
  v163 = *(v49 - 8);
  v50 = v163[8];
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v146 = &v144 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v145 = &v144 - v53;
  v171 = v55;
  v181 = v55;
  v182[0] = v56;
  v172 = v56;
  v173 = v57;
  v182[1] = v57;
  v183[0] = v58;
  v174 = v58;
  v175 = v59;
  v183[1] = v59;
  v184[0] = v60;
  v176 = v60;
  v170 = a9;
  v184[1] = a9;
  v185[0] = v61;
  v185[1] = a12;
  v185[2] = v62;
  v185[3] = v64;
  v185[4] = v63;
  v185[5] = v66;
  v185[6] = v65;
  v67 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v162 = &v144 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v161 = &v144 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v160 = &v144 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v159 = &v144 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v144 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v144 - v81;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v144 - v84;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v179 = *(TupleTypeMetadata2 - 8);
  v87 = *(v179 + 64);
  v88 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v90 = &v144 - v89;
  v177 = v68;
  v178 = v91;
  v92 = *(v91 + 48);
  v93 = *(v68 + 16);
  v93(&v144 - v89, v180, v67, v88);
  v94 = v92;
  (v93)(&v90[v92], a2, v67);
  v95 = v90;
  v96 = v67;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v111 = v162;
        (v93)(v162, v95, v67);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          v98 = v169[1];
          v99 = v111;
          v100 = &v186;
          goto LABEL_26;
        }

        v112 = v169;
        v113 = v169[4];
        v114 = v157;
        v115 = v170;
        v113(v157, v111, v170);
        v116 = &v95[v92];
        v117 = v158;
        v113(v158, v116, v115);
        v103 = v96;
        v118 = sub_1AE23CCBC();
        v119 = v112[1];
        v119(v117, v115);
        v119(v114, v115);
        goto LABEL_35;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v101 = v160;
      (v93)(v160, v95, v67);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v102 = v167;
        v103 = v67;
        v104 = *(v167 + 32);
        v105 = v153;
        v106 = v101;
        v107 = v175;
        v104(v153, v106, v175);
        v108 = &v95[v94];
        v109 = v184;
LABEL_22:
        v134 = *(v109 - 32);
        v104(v134, v108, v107);
        v118 = sub_1AE23CCBC();
        v135 = v102[1];
        v135(v134, v107);
        v135(v105, v107);
        goto LABEL_35;
      }

      (*(v167 + 8))(v101, v175);
    }

    else
    {
      v130 = v161;
      (v93)(v161, v95, v67);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v102 = v168;
        v103 = v67;
        v104 = *(v168 + 32);
        v105 = v155;
        v131 = v130;
        v107 = v176;
        v104(v155, v131, v176);
        v108 = &v95[v94];
        v109 = v185;
        goto LABEL_22;
      }

      (*(v168 + 8))(v130, v176);
    }

LABEL_31:
    v118 = 0;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (v93)(v79, v95, v67);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v98 = v165[1];
        v99 = v79;
        v100 = &v188;
        goto LABEL_26;
      }

      v102 = v165;
      v103 = v67;
      v104 = v165[4];
      v105 = v149;
      v110 = v79;
      v107 = v173;
      v104(v149, v110, v173);
      v108 = &v95[v94];
      v109 = v182;
    }

    else
    {
      v132 = v159;
      (v93)(v159, v95, v67);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v98 = v166[1];
        v99 = v132;
        v136 = v174;
        goto LABEL_30;
      }

      v102 = v166;
      v103 = v67;
      v104 = v166[4];
      v105 = v151;
      v133 = v132;
      v107 = v174;
      v104(v151, v133, v174);
      v108 = &v95[v94];
      v109 = v183;
    }

    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    (v93)(v85, v95, v67);
    if (swift_getEnumCaseMultiPayload())
    {
      v98 = v163[1];
      v99 = v85;
      v100 = &v187;
LABEL_26:
      v136 = *(v100 - 32);
LABEL_30:
      v98(v99, v136);
      goto LABEL_31;
    }

    v137 = v163;
    v103 = v67;
    v138 = v163[4];
    v139 = v145;
    v140 = v171;
    v138(v145, v85, v171);
    v141 = v146;
    v138(v146, &v95[v92], v140);
    v118 = sub_1AE23CCBC();
    v142 = v137[1];
    v142(v141, v140);
    v142(v139, v140);
LABEL_35:
    v128 = v177;
    v129 = v103;
    goto LABEL_36;
  }

  v120 = v95;
  (v93)(v82, v95, v67);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v164 + 8))(v82, v172);
    v118 = 0;
LABEL_32:
    v129 = v178;
    v128 = v179;
    goto LABEL_36;
  }

  v121 = v164;
  v122 = v67;
  v123 = *(v164 + 32);
  v124 = v147;
  v125 = v172;
  v123(v147, v82, v172);
  v126 = v148;
  v123(v148, &v120[v92], v125);
  v118 = sub_1AE23CCBC();
  v127 = *(v121 + 8);
  v127(v126, v125);
  v127(v124, v125);
  v128 = v177;
  v129 = v122;
  v95 = v120;
LABEL_36:
  (*(v128 + 8))(v95, v129);
  return v118 & 1;
}

uint64_t sub_1ADFE2D78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12 = a3[15];
  v13 = *(a4 - 56);
  v10 = a3[14];
  v11 = *(a4 - 48);
  v8 = a3[13];
  v9 = *(a4 - 40);
  v6 = a3[12];
  v7 = *(a4 - 32);
  v5 = *(a4 - 24);
  return static TaggedValue_7<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], *(a4 - 8), a3[10], *(a4 - 16), a3[11]) & 1;
}

uint64_t static TaggedValue_8<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v226[0] = a1;
  v214 = *(a10 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](a17);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v202 = &v186 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v201 = &v186 - v20;
  v213 = *(a9 - 8);
  v22 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = &v186 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v199 = &v186 - v25;
  v212 = *(v27 - 8);
  v28 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v198 = &v186 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v197 = &v186 - v31;
  v210 = *(v33 - 8);
  v34 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  v196 = &v186 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v195 = &v186 - v37;
  v223 = *(v39 - 8);
  v40 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v194 = &v186 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v193 = &v186 - v43;
  v209 = *(v45 - 8);
  v46 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v192 = &v186 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v191 = &v186 - v49;
  v222 = *(v51 - 8);
  v52 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v190 = &v186 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v189 = &v186 - v55;
  v203 = *(v57 - 8);
  v58 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF0;
  v188 = &v186 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v187 = &v186 - v61;
  v204 = v63;
  v226[1] = v63;
  v226[2] = v64;
  v216 = v64;
  v218 = v65;
  v226[3] = v65;
  v226[4] = v66;
  v211 = v66;
  v219 = v67;
  v226[5] = v67;
  v227[0] = v68;
  v220 = v68;
  v215 = a9;
  v227[1] = a9;
  v227[2] = a10;
  v217 = a10;
  v227[3] = a11;
  v227[4] = a13;
  v227[5] = v70;
  v227[6] = v69;
  v227[7] = v72;
  v227[8] = v71;
  v227[9] = v74;
  v227[10] = v73;
  v75 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v208 = &v186 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v207 = &v186 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v206 = &v186 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v205 = &v186 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v186 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v186 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v186 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v186 - v95;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v225 = *(TupleTypeMetadata2 - 8);
  v98 = *(v225 + 64);
  v99 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v101 = &v186 - v100;
  v224 = v102;
  v103 = *(v102 + 48);
  v221 = v76;
  v104 = *(v76 + 16);
  (v104)(&v186 - v100, v226[0], v75, v99);
  v226[0] = v103;
  v104(&v101[v103], a2, v75);
  v105 = v101;
  v106 = v75;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v120 = v222;
    v121 = v223;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v164 = v87;
        v104(v87, v105, v106);
        v165 = v226[0];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v148 = v121;
          v166 = v164;
          v149 = *(v121 + 32);
          v150 = v193;
          v152 = v211;
          v149(v193, v166, v211);
          v153 = &v105[v165];
          v154 = v226;
          goto LABEL_23;
        }

        (*(v121 + 8))(v164, v211);
LABEL_35:
        v118 = 0;
        goto LABEL_36;
      }

      v124 = v90;
      v104(v90, v105, v106);
      v125 = v226[0];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v209 + 8))(v90, v218);
        goto LABEL_35;
      }

      v126 = v209;
      v127 = *(v209 + 32);
      v128 = v191;
      v129 = v218;
      v127(v191, v124, v218);
      v130 = &v105[v125];
      v131 = v192;
      v127(v192, v130, v129);
      v118 = sub_1AE23CCBC();
      v132 = *(v126 + 8);
      v132(v131, v129);
      v132(v128, v129);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v122 = v96;
        v104(v96, v105, v106);
        v123 = v226[0];
        if (!swift_getEnumCaseMultiPayload())
        {
          v178 = v203;
          v179 = *(v203 + 32);
          v180 = v187;
          v181 = v122;
          v182 = v204;
          v179(v187, v181, v204);
          v183 = v188;
          v179(v188, &v105[v123], v182);
          v118 = sub_1AE23CCBC();
          v184 = *(v178 + 8);
          v184(v183, v182);
          v184(v180, v182);
          goto LABEL_39;
        }

        (*(v203 + 8))(v122, v204);
        goto LABEL_35;
      }

      v155 = v93;
      v104(v93, v105, v106);
      v156 = v226[0];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v120 + 8))(v155, v216);
        goto LABEL_35;
      }

      v157 = v120;
      v158 = *(v120 + 32);
      v159 = v189;
      v160 = v216;
      v158(v189, v155, v216);
      v161 = &v105[v156];
      v162 = v190;
      v158(v190, v161, v160);
      v118 = sub_1AE23CCBC();
      v163 = *(v157 + 8);
      v163(v162, v160);
      v163(v159, v160);
    }

LABEL_39:
    v145 = v221;
    v146 = v106;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v108 = v226[0];
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v109 = v208;
        v104(v208, v105, v75);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v110 = v75;
          v111 = v214;
          v112 = *(v214 + 32);
          v113 = v108;
          v114 = v201;
          v115 = v109;
          v116 = v217;
          v112(v201, v115, v217);
          v117 = v202;
          v112(v202, &v105[v113], v116);
          v118 = sub_1AE23CCBC();
          v119 = *(v111 + 8);
          v119(v117, v116);
          v119(v114, v116);
LABEL_26:
          v145 = v221;
          v146 = v110;
          goto LABEL_40;
        }

        (*(v214 + 8))(v109, v217);
      }

      goto LABEL_35;
    }

    v147 = v207;
    v104(v207, v105, v75);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v148 = v213;
      v149 = *(v213 + 32);
      v150 = v199;
      v151 = v147;
      v152 = v215;
      v149(v199, v151, v215);
      v153 = &v105[v108];
      v154 = v227;
LABEL_23:
      v167 = *(v154 - 32);
      v149(v167, v153, v152);
      v118 = sub_1AE23CCBC();
      v168 = *(v148 + 8);
      v168(v167, v152);
      v168(v150, v152);
      goto LABEL_39;
    }

    (*(v213 + 8))(v147, v215);
    goto LABEL_35;
  }

  v133 = v226[0];
  if (EnumCaseMultiPayload != 4)
  {
    v169 = v206;
    v104(v206, v105, v106);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v170 = v212;
      v110 = v106;
      v171 = *(v212 + 32);
      v172 = v197;
      v173 = v169;
      v174 = v220;
      v171(v197, v173, v220);
      v175 = &v105[v133];
      v176 = v198;
      v171(v198, v175, v174);
      v118 = sub_1AE23CCBC();
      v177 = *(v170 + 8);
      v177(v176, v174);
      v177(v172, v174);
      goto LABEL_26;
    }

    (*(v212 + 8))(v169, v220);
    goto LABEL_35;
  }

  v134 = v205;
  v135 = v75;
  v136 = v105;
  v104(v205, v105, v75);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    (*(v210 + 8))(v134, v219);
    v118 = 0;
LABEL_36:
    v146 = v224;
    v145 = v225;
    goto LABEL_40;
  }

  v137 = v210;
  v138 = *(v210 + 32);
  v139 = v195;
  v140 = v134;
  v141 = v219;
  v138(v195, v140, v219);
  v142 = &v136[v133];
  v143 = v196;
  v138(v196, v142, v141);
  v118 = sub_1AE23CCBC();
  v144 = *(v137 + 8);
  v144(v143, v141);
  v144(v139, v141);
  v145 = v221;
  v146 = v135;
  v105 = v136;
LABEL_40:
  (*(v145 + 8))(v105, v146);
  return v118 & 1;
}

uint64_t sub_1ADFE3E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12 = a3[17];
  v13 = *(a4 - 64);
  v10 = a3[16];
  v11 = *(a4 - 56);
  v8 = a3[15];
  v9 = *(a4 - 48);
  v6 = a3[14];
  v7 = *(a4 - 40);
  v5 = *(a4 - 32);
  return static TaggedValue_8<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], *(a4 - 8), a3[11], *(a4 - 16), a3[12], *(a4 - 24), a3[13]) & 1;
}

uint64_t static TaggedValue_9<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v207 = a1;
  v208 = a2;
  v188 = *(a11 - 8);
  v20 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](a20);
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v180 = &v162 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v179 = &v162 - v22;
  v187 = *(a10 - 8);
  v24 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v162 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v177 = &v162 - v27;
  v186 = *(a9 - 8);
  v29 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v162 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v175 = &v162 - v32;
  v185 = *(v34 - 8);
  v35 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v174 = &v162 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v173 = &v162 - v38;
  v184 = *(v40 - 8);
  v41 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = &v162 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v171 = &v162 - v44;
  v183 = *(v46 - 8);
  v47 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = &v162 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v169 = &v162 - v50;
  v182 = *(v52 - 8);
  v53 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v168 = &v162 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v167 = &v162 - v56;
  v181 = *(v58 - 8);
  v59 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = &v162 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v165 = &v162 - v62;
  v202 = *(v64 - 8);
  v65 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v164 = &v162 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v163 = &v162 - v68;
  v203 = v70;
  v209 = v70;
  v210[0] = v71;
  v192 = v71;
  v193 = v72;
  v210[1] = v72;
  v211[0] = v73;
  v195 = v73;
  v196 = v74;
  v211[1] = v74;
  v211[2] = v75;
  v194 = v75;
  v190 = a9;
  v211[3] = a9;
  v211[4] = a10;
  v191 = a10;
  v189 = a11;
  v211[5] = a11;
  v211[6] = a12;
  v211[7] = a14;
  v211[8] = a16;
  v211[9] = v77;
  v211[10] = v76;
  v211[11] = v79;
  v211[12] = v78;
  v211[13] = v81;
  v211[14] = v80;
  v82 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v83 = *(v82 - 8);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v201 = &v162 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v200 = &v162 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v199 = &v162 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v198 = &v162 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v197 = &v162 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v162 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v162 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v162 - v101;
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v162 - v104;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v206 = *(TupleTypeMetadata2 - 8);
  v107 = *(v206 + 64);
  v108 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v110 = &v162 - v109;
  v205 = v111;
  v112 = *(v111 + 48);
  v204 = v83;
  v113 = *(v83 + 16);
  v113(&v162 - v109, v207, v82, v108);
  v114 = v112;
  (v113)(&v110[v112], v208, v82);
  v115 = v110;
  v116 = v82;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v145 = v199;
        v146 = v115;
        (v113)(v199, v115, v82);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v147 = v186;
          v148 = *(v186 + 32);
          v149 = v175;
          v150 = v190;
          v148(v175, v145, v190);
          v151 = &v146[v114];
          v152 = v176;
          v148(v176, v151, v150);
          v134 = sub_1AE23CCBC();
          v153 = *(v147 + 8);
          v153(v152, v150);
          v153(v149, v150);
          v143 = v204;
          v144 = v116;
          v115 = v146;
          goto LABEL_40;
        }

        (*(v186 + 8))(v145, v190);
        v134 = 0;
LABEL_39:
        v143 = v206;
        v144 = v205;
        goto LABEL_40;
      }

      v126 = v198;
      (v113)(v198, v115, v82);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v118 = v185;
        v119 = *(v185 + 32);
        v120 = v173;
        v127 = v126;
        v121 = v194;
        v119(v173, v127, v194);
        v122 = &v115[v114];
        v123 = &v206;
        goto LABEL_26;
      }

      (*(v185 + 8))(v126, v194);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v136 = v200;
      (v113)(v200, v115, v82);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v118 = v187;
        v119 = *(v187 + 32);
        v120 = v177;
        v137 = v136;
        v121 = v191;
        v119(v177, v137, v191);
        v122 = &v115[v114];
        v123 = v210;
        goto LABEL_26;
      }

      (*(v187 + 8))(v136, v191);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v124 = v201;
      (v113)(v201, v115, v82);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v118 = v188;
        v119 = *(v188 + 32);
        v120 = v179;
        v125 = v124;
        v121 = v189;
        v119(v179, v125, v189);
        v122 = &v115[v114];
        v123 = v211;
        goto LABEL_26;
      }

      (*(v188 + 8))(v124, v189);
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (v113)(v102, v115, v82);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v118 = v181;
        v119 = *(v181 + 32);
        v120 = v165;
        v140 = v102;
        v121 = v192;
        v119(v165, v140, v192);
        v122 = &v115[v114];
        v123 = &v198;
LABEL_26:
        v141 = *(v123 - 32);
        v119(v141, v122, v121);
        v134 = sub_1AE23CCBC();
        v142 = *(v118 + 8);
        v142(v141, v121);
        v142(v120, v121);
        goto LABEL_28;
      }

      (*(v181 + 8))(v102, v192);
LABEL_38:
      v134 = 0;
      goto LABEL_39;
    }

    (v113)(v105, v115, v82);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v202 + 8))(v105, v203);
      goto LABEL_38;
    }

    v155 = v202;
    v156 = *(v202 + 32);
    v157 = v163;
    v158 = v203;
    v156(v163, v105, v203);
    v159 = &v115[v114];
    v160 = v164;
    v156(v164, v159, v158);
    v134 = sub_1AE23CCBC();
    v161 = *(v155 + 8);
    v161(v160, v158);
    v161(v157, v158);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        (v113)(v96, v115, v82);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v118 = v183;
          v119 = *(v183 + 32);
          v120 = v169;
          v121 = v195;
          v119(v169, v96, v195);
          v122 = &v115[v114];
          v123 = &v202;
          goto LABEL_26;
        }

        (*(v183 + 8))(v96, v195);
        goto LABEL_38;
      }

      v138 = v197;
      (v113)(v197, v115, v82);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v118 = v184;
        v119 = *(v184 + 32);
        v120 = v171;
        v139 = v138;
        v121 = v196;
        v119(v171, v139, v196);
        v122 = &v115[v114];
        v123 = &v204;
        goto LABEL_26;
      }

      (*(v184 + 8))(v138, v196);
      goto LABEL_38;
    }

    (v113)(v99, v115, v82);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v182 + 8))(v99, v193);
      goto LABEL_38;
    }

    v128 = v182;
    v129 = *(v182 + 32);
    v130 = v167;
    v131 = v193;
    v129(v167, v99, v193);
    v132 = &v115[v114];
    v133 = v168;
    v129(v168, v132, v131);
    v134 = sub_1AE23CCBC();
    v135 = *(v128 + 8);
    v135(v133, v131);
    v135(v130, v131);
  }

LABEL_28:
  v143 = v204;
  v144 = v116;
LABEL_40:
  (*(v143 + 8))(v115, v144);
  return v134 & 1;
}

uint64_t sub_1ADFE4ED4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v12 = a3[19];
  v13 = *(a4 - 72);
  v10 = a3[18];
  v11 = *(a4 - 64);
  v8 = a3[17];
  v9 = *(a4 - 56);
  v6 = a3[16];
  v7 = *(a4 - 48);
  v5 = *(a4 - 40);
  return static TaggedValue_9<>.== infix(_:_:)(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], *(a4 - 8), a3[12], *(a4 - 16), a3[13], *(a4 - 24), a3[14], *(a4 - 32), a3[15]) & 1;
}

uint64_t TaggedValue_1.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&inited - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = &inited - v15;
  v17 = *(a1 + 72);
  if (!v17)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v23 = 0xD000000000000017;
    *(v23 + 8) = 0x80000001AE25FB70;
    *(v23 + 16) = 0;
    swift_willThrow();
  }

  v36 = v14;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v18 = *(v17 + 16);
  v37 = a4;
  if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 0xB)
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v19 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v20 = v19[2];
  if (v20)
  {
    v21 = *(v17 + 16);
    if ((~v21 & 0xF000000000000007) != 0 && ((v21 >> 59) & 0x1E | (v21 >> 2) & 1) == 0xB)
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v22 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v24 = v22[3];
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v25 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v29 = sub_1ADE0262C(v25, a1);
    AnyCRValue.init(from:)(v29, &v38);

    if (!v4)
    {

      v30 = v38;
      *v12 = v20;
      v12[1] = v30;
      swift_storeEnumTagMultiPayload();
      return (*(v36 + 32))(v37, v12, v9);
    }
  }

  v26 = *(v17 + 16);
  if ((~v26 & 0xF000000000000007) != 0)
  {
    v28 = v37;
    if (((v26 >> 59) & 0x1E | (v26 >> 2) & 1) == 0xB)
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v27 = &unk_1EB5B9140;
    }
  }

  else
  {
    v27 = &unk_1EB5B9140;
    v28 = v37;
  }

  swift_beginAccess();
  v32 = v27[3];
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v33 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v34 = sub_1ADE0262C(v33, a1);
  (*(*(*(a3 + 8) + 8) + 8))(v34, a2);

  if (v4)
  {
  }

  swift_storeEnumTagMultiPayload();
  return (*(v36 + 32))(v28, v16, v9);
}

uint64_t TaggedValue_1.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v48 - v14);
  result = sub_1ADE71C08();
  if (!v2)
  {
    v17 = result;
    v49 = v10;
    v50 = v8;
    v51 = 0;
    (*(v12 + 16))(v15, v52, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v15;
      v18 = v15[1];
      swift_beginAccess();
      v20 = *(*(v17 + 24) + 16);
      v21 = (~v20 & 0xF000000000000007) != 0 && ((v20 >> 59) & 0x1E | (v20 >> 2) & 1) == 11;
      v22 = a1;
      if (v21)
      {
        inited = *((v20 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE5178(inited);
      }

      swift_beginAccess();
      *(inited + 16) = v19;
      sub_1AE1B7530(inited);
      swift_endAccess();
      v30 = *(a1 + 112);
      v29 = *(a1 + 120);
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v31 = v51;
      (*(*v18 + 152))(a1);
      if (v31)
      {
      }

      else
      {
        v41 = sub_1ADE71C08();
        swift_beginAccess();
        v42 = *(v41 + 24);
        v43 = *(v22 + 112);
        *(v22 + 112) = v30;

        v44 = *(v22 + 120);
        *(v22 + 120) = v29;

        swift_beginAccess();
        v45 = *(*(v17 + 24) + 16);
        if ((~v45 & 0xF000000000000007) != 0 && ((v45 >> 59) & 0x1E | (v45 >> 2) & 1) == 0xB)
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v46 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v46 = sub_1ADDE5178(v46);
        }

        swift_beginAccess();
        v47 = *(v46 + 24);
        *(v46 + 24) = v42;

        sub_1AE1B7530(v46);
        swift_endAccess();
      }
    }

    else
    {
      v24 = v5;
      v25 = v4;
      (*(v5 + 32))(v50, v15, v4);
      swift_beginAccess();
      v26 = *(*(v17 + 24) + 16);
      if ((~v26 & 0xF000000000000007) != 0 && ((v26 >> 59) & 0x1E | (v26 >> 2) & 1) == 11)
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v28 = swift_initStaticObject();
      }

      v32 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v28 = sub_1ADDE5178(v28);
      }

      swift_beginAccess();
      *(v28 + 16) = 0;
      sub_1AE1B7530(v28);
      v33 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v33);
      *(&v48 - 4) = v25;
      *(&v48 - 3) = v32;
      v35 = v50;
      v34 = v51;
      *(&v48 - 2) = v50;
      *(&v48 - 1) = a1;
      v36 = sub_1ADE6B938(sub_1ADE74060);
      if (v34)
      {
      }

      else
      {
        v37 = v36;
        swift_beginAccess();
        v38 = *(*(v17 + 24) + 16);
        if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v39 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v39 = sub_1ADDE5178(v39);
        }

        swift_beginAccess();
        v40 = *(v39 + 24);
        *(v39 + 24) = v37;

        sub_1AE1B7530(v39);
        swift_endAccess();
      }

      return (*(v24 + 8))(v35, v25);
    }
  }

  return result;
}

uint64_t TaggedValue_1<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-1] - v14;
  (*(v16 + 16))(&v19[-1] - v14, v3, v11, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(**(v15 + 1) + 80))(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    (*(v5 + 32))(v8, v15, v4);
    sub_1AE23CBAC();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t TaggedValue_2.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a4;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v11 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&inited - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &inited - v16;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &inited - v21;
  v23 = *(a1 + 72);
  if (!v23)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v32 = 0xD000000000000017;
    *(v32 + 8) = 0x80000001AE25FB70;
    *(v32 + 16) = 0;
    swift_willThrow();
  }

  v55 = v20;
  v56 = v19;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  v24 = *(v23 + 16);
  v57 = a6;
  if ((~v24 & 0xF000000000000007) != 0 && ((v24 >> 59) & 0x1E | (v24 >> 2) & 1) == 0xB)
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v25 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v26 = v25[2];
  if (v26 != 1)
  {
    if (v26)
    {
      v37 = *(v23 + 16);
      if ((~v37 & 0xF000000000000007) != 0 && ((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v38 = &unk_1EB5B9140;
      }

      swift_beginAccess();
      v39 = v38[3];
      if (v39)
      {
        v40 = v39;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v40 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v41 = sub_1ADE0262C(v40, a1);
      v42 = v59;
      AnyCRValue.init(from:)(v41, &v64);

      if (!v42)
      {

        v43 = v64;
        *v14 = v26;
        v14[1] = v43;
        v44 = v56;
        swift_storeEnumTagMultiPayload();
        return (*(v55 + 32))(v57, v14, v44);
      }
    }

    else
    {
      v27 = *(v23 + 16);
      if ((~v27 & 0xF000000000000007) != 0)
      {
        v29 = v57;
        v30 = v58;
        v31 = v59;
        if (((v27 >> 59) & 0x1E | (v27 >> 2) & 1) == 0xB)
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v28 = &unk_1EB5B9140;
        }
      }

      else
      {
        v28 = &unk_1EB5B9140;
        v29 = v57;
        v30 = v58;
        v31 = v59;
      }

      swift_beginAccess();
      v46 = v28[3];
      if (v46)
      {
        v47 = v46;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v47 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v48 = sub_1ADE0262C(v47, a1);
      (*(*(*(v30 + 8) + 8) + 8))(v48, a2);

      if (!v31)
      {

        v49 = v56;
        swift_storeEnumTagMultiPayload();
        return (*(v55 + 32))(v29, v22, v49);
      }
    }
  }

  v33 = *(v23 + 16);
  if ((~v33 & 0xF000000000000007) != 0)
  {
    v35 = v57;
    v36 = v59;
    if (((v33 >> 59) & 0x1E | (v33 >> 2) & 1) == 0xB)
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v34 = &unk_1EB5B9140;
    }
  }

  else
  {
    v34 = &unk_1EB5B9140;
    v35 = v57;
    v36 = v59;
  }

  swift_beginAccess();
  v50 = v34[3];
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v51 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v52 = sub_1ADE0262C(v51, a1);
  (*(*(*(a5 + 8) + 8) + 8))(v52, a3);

  if (v36)
  {
  }

  v53 = v56;
  swift_storeEnumTagMultiPayload();
  return (*(v55 + 32))(v35, v17, v53);
}

uint64_t TaggedValue_2.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v74 = *(v4 - 1);
  v5 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v72 = *(v9 - 1);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  v75 = v9;
  v76 = v4;
  v73 = v15;
  v77 = v15;
  v16 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v69 - v19);
  result = sub_1ADE71C08();
  if (!v2)
  {
    v22 = result;
    v69 = v13;
    v70 = a1;
    v23 = v74;
    v71 = 0;
    (*(v17 + 16))(v20, v78, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v25 = v23;
        v26 = *(v23 + 32);
        v78 = v7;
        v27 = v7;
        v28 = v4;
        v26(v27, v20, v4);
        swift_beginAccess();
        v29 = *(*(v22 + 24) + 16);
        v30 = v70;
        if ((~v29 & 0xF000000000000007) != 0 && ((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xB)
        {
          inited = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 1;
        sub_1AE1B7530(inited);
        v40 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v40);
        *(&v69 - 6) = v9;
        *(&v69 - 5) = v4;
        *(&v69 - 2) = v73;
        v41 = v78;
        *(&v69 - 2) = v78;
        *(&v69 - 1) = v30;
        v42 = v71;
        v43 = sub_1ADE6B938(sub_1ADFFA7A0);
        if (v42)
        {
        }

        else
        {
          v54 = v43;
          swift_beginAccess();
          v55 = *(*(v22 + 24) + 16);
          if ((~v55 & 0xF000000000000007) != 0 && ((v55 >> 59) & 0x1E | (v55 >> 2) & 1) == 0xB)
          {
            v56 = *((v55 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v56 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v56 = sub_1ADDE5178(v56);
          }

          swift_beginAccess();
          v60 = *(v56 + 24);
          *(v56 + 24) = v54;

          sub_1AE1B7530(v56);
          swift_endAccess();
        }

        return (*(v25 + 8))(v41, v28);
      }

      else
      {
        v36 = *v20;
        v37 = v20[1];
        swift_beginAccess();
        v38 = *(*(v22 + 24) + 16);
        if ((~v38 & 0xF000000000000007) != 0 && ((v38 >> 59) & 0x1E | (v38 >> 2) & 1) == 0xB)
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v39 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v39 = sub_1ADDE5178(v39);
        }

        swift_beginAccess();
        *(v39 + 16) = v36;
        sub_1AE1B7530(v39);
        swift_endAccess();
        v51 = v70;
        v50 = v71;
        v53 = *(v70 + 112);
        v52 = *(v70 + 120);
        *(v70 + 112) = 0;
        *(v51 + 120) = 0;
        (*(*v37 + 152))(v51);
        if (v50)
        {
        }

        else
        {
          v62 = sub_1ADE71C08();
          swift_beginAccess();
          v63 = *(v62 + 24);
          v64 = *(v51 + 112);
          *(v51 + 112) = v53;

          v65 = *(v51 + 120);
          *(v51 + 120) = v52;

          swift_beginAccess();
          v66 = *(*(v22 + 24) + 16);
          if ((~v66 & 0xF000000000000007) != 0 && ((v66 >> 59) & 0x1E | (v66 >> 2) & 1) == 0xB)
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v67 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v67 = sub_1ADDE5178(v67);
          }

          swift_beginAccess();
          v68 = *(v67 + 24);
          *(v67 + 24) = v63;

          sub_1AE1B7530(v67);
          swift_endAccess();
        }
      }
    }

    else
    {
      v32 = v72;
      (*(v72 + 32))(v69, v20, v9);
      swift_beginAccess();
      v33 = *(*(v22 + 24) + 16);
      v34 = v70;
      if ((~v33 & 0xF000000000000007) != 0 && ((v33 >> 59) & 0x1E | (v33 >> 2) & 1) == 0xB)
      {
        v35 = *((v33 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v35 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v35 = sub_1ADDE5178(v35);
      }

      swift_beginAccess();
      *(v35 + 16) = 0;
      sub_1AE1B7530(v35);
      v44 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v44);
      *&v45 = v9;
      *(&v45 + 1) = v4;
      v46 = v73;
      *(&v69 - 3) = v45;
      *(&v69 - 2) = v46;
      v47 = v69;
      *(&v69 - 2) = v69;
      *(&v69 - 1) = v34;
      v48 = v71;
      v49 = sub_1ADE6B938(sub_1ADFFA7E8);
      if (v48)
      {

        return (*(v32 + 8))(v47, v9);
      }

      else
      {
        v57 = v49;
        swift_beginAccess();
        v58 = *(*(v22 + 24) + 16);
        if ((~v58 & 0xF000000000000007) != 0 && ((v58 >> 59) & 0x1E | (v58 >> 2) & 1) == 0xB)
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v59 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v59 = sub_1ADDE5178(v59);
        }

        swift_beginAccess();
        v61 = *(v59 + 24);
        *(v59 + 24) = v57;

        sub_1AE1B7530(v59);
        swift_endAccess();

        return (*(v72 + 8))(v47, v9);
      }
    }
  }

  return result;
}

uint64_t TaggedValue_2<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a1;
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = v12;
  v28[1] = v6;
  v29 = *(v18 + 32);
  v19 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v27 - v22;
  (*(v24 + 16))(v27 - v22, v5, v19, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v10, v23, v6);
      sub_1AE23CBAC();
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(**(v23 + 1) + 80))(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v28, *(&v29 + 1));
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v23, v12);
    sub_1AE23CBAC();
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t TaggedValue_3.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v75 = a6;
  v76 = a5;
  v83 = a6;
  v84 = a7;
  v74 = a7;
  v13 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v70 - v25;
  v27 = *(a1 + 72);
  if (!v27)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v35 = 0xD000000000000017;
    *(v35 + 8) = 0x80000001AE25FB70;
    *(v35 + 16) = 0;
    swift_willThrow();
  }

  v70 = v24;
  v71 = v23;
  v72 = v22;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v77 = a1;
  *(inited + 16) = a1;
  v29 = *(v27 + 16);
  v73 = a8;
  if ((~v29 & 0xF000000000000007) != 0 && ((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xB)
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v30 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v31 = v30[2];
  if (v31 == 2)
  {
    v40 = *(v27 + 16);
    if ((~v40 & 0xF000000000000007) != 0)
    {
      v42 = v73;
      v43 = v77;
      if (((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
      {
        v41 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v41 = &unk_1EB5B9140;
      }
    }

    else
    {
      v41 = &unk_1EB5B9140;
      v42 = v73;
      v43 = v77;
    }

    swift_beginAccess();
    v52 = v41[3];
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v53 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v54 = sub_1ADE0262C(v53, v43);
    v55 = v78;
    (*(*(*(v74 + 8) + 8) + 8))(v54, a4);
    if (v55)
    {
    }

    v56 = v72;
    swift_storeEnumTagMultiPayload();
    v57 = *(v71 + 32);
    v58 = v42;
    goto LABEL_52;
  }

  if (v31 == 1)
  {
    v37 = *(v27 + 16);
    if ((~v37 & 0xF000000000000007) != 0)
    {
      v39 = v77;
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v38 = &unk_1EB5B9140;
      }
    }

    else
    {
      v38 = &unk_1EB5B9140;
      v39 = v77;
    }

    swift_beginAccess();
    v47 = v38[3];
    if (v47)
    {
      v48 = v47;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v48 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v49 = sub_1ADE0262C(v48, v39);
    v50 = v78;
    (*(*(*(v75 + 8) + 8) + 8))(v49, a3);

    if (!v50)
    {

      v51 = v72;
      swift_storeEnumTagMultiPayload();
      return (*(v71 + 32))(v73, v20, v51);
    }
  }

  if (v31)
  {
    v44 = *(v27 + 16);
    if ((~v44 & 0xF000000000000007) != 0)
    {
      v46 = v77;
      if (((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 0xB)
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v45 = &unk_1EB5B9140;
      }
    }

    else
    {
      v45 = &unk_1EB5B9140;
      v46 = v77;
    }

    swift_beginAccess();
    v65 = v45[3];
    if (v65)
    {
      v66 = v65;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v66 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v67 = sub_1ADE0262C(v66, v46);
    v68 = v78;
    AnyCRValue.init(from:)(v67, &v85);

    if (v68)
    {
    }

    v69 = v85;
    v17 = v70;
    *v70 = v31;
    *(v17 + 1) = v69;
    v56 = v72;
    swift_storeEnumTagMultiPayload();
    v57 = *(v71 + 32);
    v58 = v73;
LABEL_52:
    v64 = v17;
    return v57(v58, v64, v56);
  }

  v32 = *(v27 + 16);
  if ((~v32 & 0xF000000000000007) != 0)
  {
    v34 = v73;
    if (((v32 >> 59) & 0x1E | (v32 >> 2) & 1) == 0xB)
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v33 = &unk_1EB5B9140;
    }
  }

  else
  {
    v33 = &unk_1EB5B9140;
    v34 = v73;
  }

  swift_beginAccess();
  v59 = v33[3];
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v60 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v61 = v77;

  v62 = sub_1ADE0262C(v60, v61);
  v63 = v78;
  (*(*(*(v76 + 8) + 8) + 8))(v62, a2);

  if (v63)
  {
  }

  v56 = v72;
  swift_storeEnumTagMultiPayload();
  v57 = *(v71 + 32);
  v58 = v34;
  v64 = v26;
  return v57(v58, v64, v56);
}

uint64_t TaggedValue_3.encode(to:)(uint64_t a1, uint64_t a2)
{
  v97 = *(*(a2 + 32) - 8);
  v3 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v94 = *(v11 - 8);
  v12 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v16 + 48);
  v17 = *(v16 + 56);
  v93 = v19;
  *&v20 = v19;
  *(&v20 + 1) = *v21;
  *&v22 = v11;
  *(&v22 + 1) = v6;
  v98 = v20;
  v99 = v22;
  v103 = v20;
  v102 = v22;
  v104 = v18;
  v105 = v17;
  v23 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v90 - v26);
  v28 = v106;
  result = sub_1ADE71C08();
  if (!v28)
  {
    v91 = v11;
    v30 = v100;
    v92 = a1;
    v31 = result;
    v106 = 0;
    (*(v24 + 16))(v27, v101, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v39 = v93;
        (*(v97 + 32))(v96, v27, v93);
        swift_beginAccess();
        v40 = *(*(v31 + 24) + 16);
        v41 = v92;
        if ((~v40 & 0xF000000000000007) != 0 && ((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
        {
          inited = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 2;
        sub_1AE1B7530(inited);
        v58 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v58);
        v59 = v98;
        *(&v90 - 4) = v99;
        *(&v90 - 3) = v59;
        *(&v90 - 4) = v18;
        *(&v90 - 3) = v17;
        v60 = v96;
        *(&v90 - 2) = v96;
        *(&v90 - 1) = v41;
        v61 = v106;
        v62 = sub_1ADE6B938(sub_1ADFFA830);
        if (v61)
        {
        }

        else
        {
          v74 = v62;
          swift_beginAccess();
          v75 = *(*(v31 + 24) + 16);
          if ((~v75 & 0xF000000000000007) != 0 && ((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
          {
            v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v76 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v76 = sub_1ADDE5178(v76);
          }

          swift_beginAccess();
          v81 = *(v76 + 24);
          *(v76 + 24) = v74;

          sub_1AE1B7530(v76);
          swift_endAccess();
        }

        return (*(v97 + 8))(v60, v39);
      }

      else
      {
        v48 = *v27;
        v49 = v27[1];
        swift_beginAccess();
        v50 = *(*(v31 + 24) + 16);
        v51 = v92;
        if ((~v50 & 0xF000000000000007) != 0 && ((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
        {
          v52 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v52 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v52 = sub_1ADDE5178(v52);
        }

        swift_beginAccess();
        *(v52 + 16) = v48;
        sub_1AE1B7530(v52);
        swift_endAccess();
        v69 = *(v51 + 112);
        v68 = *(v51 + 120);
        *(v51 + 112) = 0;
        *(v51 + 120) = 0;
        v70 = v106;
        (*(*v49 + 152))(v51);
        if (v70)
        {
        }

        else
        {
          v83 = sub_1ADE71C08();
          swift_beginAccess();
          v84 = *(v83 + 24);
          v85 = *(v51 + 112);
          *(v51 + 112) = v69;

          v86 = *(v51 + 120);
          *(v51 + 120) = v68;

          swift_beginAccess();
          v87 = *(*(v31 + 24) + 16);
          if ((~v87 & 0xF000000000000007) != 0 && ((v87 >> 59) & 0x1E | (v87 >> 2) & 1) == 0xB)
          {
            v88 = *((v87 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v88 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v88 = sub_1ADDE5178(v88);
          }

          swift_beginAccess();
          v89 = *(v88 + 24);
          *(v88 + 24) = v84;

          sub_1AE1B7530(v88);
          swift_endAccess();
        }
      }
    }

    else
    {
      v33 = v31;
      if (EnumCaseMultiPayload)
      {
        v43 = v95;
        v44 = v27;
        v45 = v6;
        (*(v95 + 32))(v30, v44, v6);
        swift_beginAccess();
        v46 = *(*(v31 + 24) + 16);
        if ((~v46 & 0xF000000000000007) != 0 && ((v46 >> 59) & 0x1E | (v46 >> 2) & 1) == 0xB)
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v47 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v47 = sub_1ADDE5178(v47);
        }

        swift_beginAccess();
        *(v47 + 16) = 1;
        sub_1AE1B7530(v47);
        v63 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v63);
        v64 = v98;
        *(&v90 - 4) = v99;
        *(&v90 - 3) = v64;
        *(&v90 - 4) = v18;
        *(&v90 - 3) = v17;
        v65 = v92;
        *(&v90 - 2) = v30;
        *(&v90 - 1) = v65;
        v66 = v106;
        v67 = sub_1ADE6B938(sub_1ADFB0048);
        if (v66)
        {
        }

        else
        {
          v77 = v67;
          swift_beginAccess();
          v78 = *(*(v33 + 24) + 16);
          if ((~v78 & 0xF000000000000007) != 0 && ((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
          {
            v79 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v79 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v79 = sub_1ADDE5178(v79);
          }

          swift_beginAccess();
          v82 = *(v79 + 24);
          *(v79 + 24) = v77;

          sub_1AE1B7530(v79);
          swift_endAccess();
        }

        return (*(v43 + 8))(v30, v45);
      }

      else
      {
        v34 = v94;
        v35 = v27;
        v36 = v91;
        (*(v94 + 32))(v15, v35, v91);
        swift_beginAccess();
        v37 = *(*(v31 + 24) + 16);
        if ((~v37 & 0xF000000000000007) != 0 && ((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v38 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v38 = sub_1ADDE5178(v38);
        }

        swift_beginAccess();
        *(v38 + 16) = 0;
        sub_1AE1B7530(v38);
        v53 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v53);
        v54 = v98;
        *(&v90 - 4) = v99;
        *(&v90 - 3) = v54;
        *(&v90 - 4) = v18;
        *(&v90 - 3) = v17;
        v55 = v92;
        *(&v90 - 2) = v15;
        *(&v90 - 1) = v55;
        v56 = v106;
        v57 = sub_1ADE6B938(sub_1ADFFA878);
        if (v56)
        {
        }

        else
        {
          v71 = v57;
          swift_beginAccess();
          v72 = *(*(v33 + 24) + 16);
          if ((~v72 & 0xF000000000000007) != 0 && ((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
          {
            v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v73 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v73 = sub_1ADDE5178(v73);
          }

          swift_beginAccess();
          v80 = *(v73 + 24);
          *(v73 + 24) = v71;

          sub_1AE1B7530(v73);
          swift_endAccess();
        }

        return (*(v34 + 8))(v15, v36);
      }
    }
  }

  return result;
}

uint64_t TaggedValue_3<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v36 = a3;
  v41 = a1;
  v5 = *(a2 + 32);
  v37 = *(v5 - 8);
  v38 = a4;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 56);
  v43[0] = v16;
  v43[1] = v10;
  v43[2] = v5;
  v44 = *(v22 + 40);
  v45 = v23;
  v24 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v34 - v27;
  (*(v29 + 16))(&v34 - v27, v40, v24, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v37;
      (*(v37 + 32))(v8, v28, v5);
      sub_1AE23CBAC();
      return (*(v32 + 8))(v8, v5);
    }

    else
    {
      (*(**(v28 + 1) + 80))(v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v43, v44);
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(v43);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v33 = v35;
    (*(v35 + 32))(v14, v28, v10);
    sub_1AE23CBAC();
    return (*(v33 + 8))(v14, v10);
  }

  else
  {
    (*(v17 + 32))(v21, v28, v16);
    sub_1AE23CBAC();
    return (*(v17 + 8))(v21, v16);
  }
}

uint64_t TaggedValue_4.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v101 = a2;
  v102 = a3;
  v96 = a3;
  v97 = a5;
  v103 = a4;
  v104 = a5;
  v93 = a6;
  v105 = a6;
  v106 = a7;
  v94 = a8;
  v95 = a7;
  v107 = a8;
  v108 = a10;
  v92 = a10;
  v14 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v88 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v88 - v29;
  v31 = *(a1 + 72);
  if (!v31)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v42 = 0xD000000000000017;
    *(v42 + 8) = 0x80000001AE25FB70;
    *(v42 + 16) = 0;
    swift_willThrow();
  }

  v89 = v28;
  v90 = v27;
  v91 = v26;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v98 = a9;
  v99 = a1;
  *(inited + 16) = a1;
  v33 = *(v31 + 16);
  if ((~v33 & 0xF000000000000007) != 0 && ((v33 >> 59) & 0x1E | (v33 >> 2) & 1) == 0xB)
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v34 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v35 = v34[2];
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      v59 = *(v31 + 16);
      if ((~v59 & 0xF000000000000007) != 0)
      {
        v61 = v98;
        v62 = v99;
        v63 = v100;
        if (((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v60 = &unk_1EB5B9140;
        }
      }

      else
      {
        v60 = &unk_1EB5B9140;
        v61 = v98;
        v62 = v99;
        v63 = v100;
      }

      swift_beginAccess();
      v85 = v60[3];
      if (v85)
      {
        v86 = v85;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v86 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v87 = sub_1ADE0262C(v86, v62);
      (*(*(*(v94 + 8) + 8) + 8))(v87, a4);
      if (!v63)
      {

        v68 = v91;
        swift_storeEnumTagMultiPayload();
        v69 = *(v90 + 32);
        v70 = v61;
        return v69(v70, v21, v68);
      }
    }

    else
    {
      if (v35 != 3)
      {
LABEL_16:
        v50 = *(v31 + 16);
        if ((~v50 & 0xF000000000000007) != 0)
        {
          v52 = v99;
          v53 = v100;
          if (((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v51 = &unk_1EB5B9140;
          }
        }

        else
        {
          v51 = &unk_1EB5B9140;
          v52 = v99;
          v53 = v100;
        }

        swift_beginAccess();
        v64 = v51[3];
        if (v64)
        {
          v65 = v64;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v65 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v66 = sub_1ADE0262C(v65, v52);
        AnyCRValue.init(from:)(v66, &v109);

        if (v53)
        {
        }

        v67 = v109;
        v21 = v89;
        *v89 = v35;
        v21[1] = v67;
        v68 = v91;
        swift_storeEnumTagMultiPayload();
        v69 = *(v90 + 32);
        v70 = v98;
        return v69(v70, v21, v68);
      }

      v44 = *(v31 + 16);
      if ((~v44 & 0xF000000000000007) != 0)
      {
        v46 = v98;
        v47 = v99;
        v48 = v97;
        v49 = v92;
        if (((v44 >> 59) & 0x1E | (v44 >> 2) & 1) == 0xB)
        {
          v45 = *((v44 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v45 = &unk_1EB5B9140;
        }
      }

      else
      {
        v45 = &unk_1EB5B9140;
        v46 = v98;
        v47 = v99;
        v48 = v97;
        v49 = v92;
      }

      swift_beginAccess();
      v76 = v45[3];
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v77 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v78 = sub_1ADE0262C(v77, v47);
      v79 = v100;
      (*(*(*(v49 + 8) + 8) + 8))(v78, v48);
      if (!v79)
      {

        v80 = v91;
        swift_storeEnumTagMultiPayload();
        return (*(v90 + 32))(v46, v18, v80);
      }
    }
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v36 = *(v31 + 16);
      if ((~v36 & 0xF000000000000007) != 0)
      {
        v38 = v98;
        v39 = v100;
        v41 = v95;
        v40 = v96;
        if (((v36 >> 59) & 0x1E | (v36 >> 2) & 1) == 0xB)
        {
          v37 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v37 = &unk_1EB5B9140;
        }
      }

      else
      {
        v37 = &unk_1EB5B9140;
        v38 = v98;
        v39 = v100;
        v41 = v95;
        v40 = v96;
      }

      swift_beginAccess();
      v71 = v37[3];
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v72 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();
      v73 = v99;

      v74 = sub_1ADE0262C(v72, v73);
      (*(*(*(v41 + 8) + 8) + 8))(v74, v40);

      if (!v39)
      {

        v75 = v91;
        swift_storeEnumTagMultiPayload();
        return (*(v90 + 32))(v38, v24, v75);
      }
    }

    goto LABEL_16;
  }

  v54 = *(v31 + 16);
  if ((~v54 & 0xF000000000000007) != 0)
  {
    v56 = v98;
    v57 = v99;
    v58 = v100;
    if (((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v55 = &unk_1EB5B9140;
    }
  }

  else
  {
    v55 = &unk_1EB5B9140;
    v56 = v98;
    v57 = v99;
    v58 = v100;
  }

  swift_beginAccess();
  v81 = v55[3];
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v82 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v83 = sub_1ADE0262C(v82, v57);
  (*(*(*(v93 + 8) + 8) + 8))(v83, a2);

  if (v58)
  {
  }

  v84 = v91;
  swift_storeEnumTagMultiPayload();
  return (*(v90 + 32))(v56, v30, v84);
}

uint64_t TaggedValue_4.encode(to:)(uint64_t a1, uint64_t a2)
{
  v132 = *(*(a2 + 40) - 8);
  v3 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v131 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = *(*(v5 + 32) - 8);
  v6 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(*(v9 + 24) - 8);
  v10 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v123 = *(v14 - 8);
  v15 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v18[6];
  v19 = v18[7];
  v22 = v18[8];
  v21 = v18[9];
  *&v23 = v14;
  v124 = v24;
  *(&v23 + 1) = v24;
  v135 = v25;
  *&v26 = v25;
  v126 = v27;
  *(&v26 + 1) = v27;
  v133 = v26;
  v138 = v26;
  v134 = v23;
  v137 = v23;
  v139 = v20;
  v140 = v19;
  v141 = v22;
  v142 = v21;
  v28 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v117 - v31);
  v33 = v143;
  result = sub_1ADE71C08();
  if (!v33)
  {
    v117 = v14;
    v35 = v135;
    v118 = v20;
    v119 = v19;
    v121 = v22;
    v120 = v21;
    v143 = result;
    v36 = a1;
    v122 = 0;
    (*(v29 + 16))(v32, v136, v28);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v42 = v143;
      if (EnumCaseMultiPayload)
      {
        v39 = v124;
        (*(v129 + 32))(v128, v32, v124);
        swift_beginAccess();
        v56 = *(*(v42 + 24) + 16);
        v57 = v120;
        if ((~v56 & 0xF000000000000007) != 0 && ((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 0xB)
        {
          inited = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v87 = v121;
        v88 = v119;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 1;
        sub_1AE1B7530(inited);
        v89 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v89);
        v90 = v133;
        *(&v117 - 5) = v134;
        *(&v117 - 4) = v90;
        *(&v117 - 6) = v118;
        *(&v117 - 5) = v88;
        *(&v117 - 4) = v87;
        *(&v117 - 3) = v57;
        v73 = v128;
        *(&v117 - 2) = v128;
        *(&v117 - 1) = a1;
        v91 = v122;
        v92 = sub_1ADE6B938(sub_1ADFFA950);
        if (v91)
        {
        }

        else
        {
          v102 = v92;
          swift_beginAccess();
          v103 = *(*(v42 + 24) + 16);
          if ((~v103 & 0xF000000000000007) != 0 && ((v103 >> 59) & 0x1E | (v103 >> 2) & 1) == 0xB)
          {
            v104 = *((v103 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v104 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v104 = sub_1ADDE5178(v104);
          }

          swift_beginAccess();
          v108 = *(v104 + 24);
          *(v104 + 24) = v102;

          sub_1AE1B7530(v104);
          swift_endAccess();
        }

        v76 = &v144;
        return (*(*(v76 - 32) + 8))(v73, v39);
      }

      v43 = v123;
      v44 = v117;
      (*(v123 + 32))(v127, v32, v117);
      swift_beginAccess();
      v45 = *(*(v42 + 24) + 16);
      v46 = v120;
      if ((~v45 & 0xF000000000000007) != 0 && ((v45 >> 59) & 0x1E | (v45 >> 2) & 1) == 0xB)
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v47 = swift_initStaticObject();
      }

      v80 = v121;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v47 = sub_1ADDE5178(v47);
      }

      swift_beginAccess();
      *(v47 + 16) = 0;
      sub_1AE1B7530(v47);
      v81 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v81);
      v82 = v133;
      *(&v117 - 5) = v134;
      *(&v117 - 4) = v82;
      v83 = v119;
      *(&v117 - 6) = v118;
      *(&v117 - 5) = v83;
      *(&v117 - 4) = v80;
      *(&v117 - 3) = v46;
      v84 = v127;
      *(&v117 - 2) = v127;
      *(&v117 - 1) = a1;
      v85 = v122;
      v86 = sub_1ADE6B938(sub_1ADFFA998);
      if (v85)
      {
      }

      else
      {
        v99 = v86;
        swift_beginAccess();
        v100 = *(*(v42 + 24) + 16);
        if ((~v100 & 0xF000000000000007) != 0 && ((v100 >> 59) & 0x1E | (v100 >> 2) & 1) == 0xB)
        {
          v101 = *((v100 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v101 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v101 = sub_1ADDE5178(v101);
        }

        swift_beginAccess();
        v107 = *(v101 + 24);
        *(v101 + 24) = v99;

        sub_1AE1B7530(v101);
        swift_endAccess();
      }

      return (*(v43 + 8))(v84, v44);
    }

    else
    {
      v38 = v143;
      if (EnumCaseMultiPayload == 2)
      {
        v48 = v125;
        v49 = v35;
        (*(v125 + 32))(v130, v32, v35);
        swift_beginAccess();
        v50 = *(*(v38 + 24) + 16);
        if ((~v50 & 0xF000000000000007) != 0 && ((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
        {
          v51 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v51 = swift_initStaticObject();
        }

        v59 = v118;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v51 = sub_1ADDE5178(v51);
        }

        swift_beginAccess();
        *(v51 + 16) = 2;
        sub_1AE1B7530(v51);
        v62 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v62);
        v63 = v133;
        *(&v117 - 5) = v134;
        *(&v117 - 4) = v63;
        v64 = v119;
        *(&v117 - 6) = v59;
        *(&v117 - 5) = v64;
        v65 = v120;
        *(&v117 - 4) = v121;
        *(&v117 - 3) = v65;
        *(&v117 - 2) = v61;
        *(&v117 - 1) = a1;
        v66 = v122;
        v67 = sub_1ADE6B938(sub_1ADFFA908);
        if (v66)
        {
        }

        else
        {
          v93 = v67;
          swift_beginAccess();
          v94 = *(*(v38 + 24) + 16);
          if ((~v94 & 0xF000000000000007) != 0 && ((v94 >> 59) & 0x1E | (v94 >> 2) & 1) == 0xB)
          {
            v95 = *((v94 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v95 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v95 = sub_1ADDE5178(v95);
          }

          swift_beginAccess();
          v105 = *(v95 + 24);
          *(v95 + 24) = v93;

          sub_1AE1B7530(v95);
          swift_endAccess();
        }

        return (*(v48 + 8))(v61, v49);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v39 = v126;
          (*(v132 + 32))(v131, v32, v126);
          swift_beginAccess();
          v40 = *(*(v38 + 24) + 16);
          if ((~v40 & 0xF000000000000007) != 0 && ((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
          {
            v41 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v41 = swift_initStaticObject();
          }

          v68 = v120;
          v69 = v121;
          v70 = v119;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v41 = sub_1ADDE5178(v41);
          }

          swift_beginAccess();
          *(v41 + 16) = 3;
          sub_1AE1B7530(v41);
          v71 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v71);
          v72 = v133;
          *(&v117 - 5) = v134;
          *(&v117 - 4) = v72;
          *(&v117 - 6) = v118;
          *(&v117 - 5) = v70;
          *(&v117 - 4) = v69;
          *(&v117 - 3) = v68;
          v73 = v131;
          *(&v117 - 2) = v131;
          *(&v117 - 1) = a1;
          v74 = v122;
          v75 = sub_1ADE6B938(sub_1ADFFA8C0);
          if (v74)
          {

            v76 = &v145;
          }

          else
          {
            v96 = v75;
            swift_beginAccess();
            v97 = *(*(v38 + 24) + 16);
            if ((~v97 & 0xF000000000000007) != 0 && ((v97 >> 59) & 0x1E | (v97 >> 2) & 1) == 0xB)
            {
              v98 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v98 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v98 = sub_1ADDE5178(v98);
            }

            swift_beginAccess();
            v106 = *(v98 + 24);
            *(v98 + 24) = v96;

            sub_1AE1B7530(v98);
            swift_endAccess();

            v76 = &v145;
          }

          return (*(*(v76 - 32) + 8))(v73, v39);
        }

        v53 = *v32;
        v52 = v32[1];
        swift_beginAccess();
        v54 = *(*(v38 + 24) + 16);
        if ((~v54 & 0xF000000000000007) != 0 && ((v54 >> 59) & 0x1E | (v54 >> 2) & 1) == 0xB)
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v55 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v55 = sub_1ADDE5178(v55);
        }

        swift_beginAccess();
        *(v55 + 16) = v53;
        sub_1AE1B7530(v55);
        swift_endAccess();
        v78 = *(a1 + 112);
        v77 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v79 = v122;
        (*(*v52 + 152))(a1);
        if (v79)
        {
        }

        else
        {
          v109 = sub_1ADE71C08();
          swift_beginAccess();
          v110 = *(v109 + 24);
          v111 = *(v36 + 112);
          *(v36 + 112) = v78;

          v112 = *(v36 + 120);
          *(v36 + 120) = v77;

          v113 = v143;
          swift_beginAccess();
          v114 = *(*(v113 + 24) + 16);
          if ((~v114 & 0xF000000000000007) != 0 && ((v114 >> 59) & 0x1E | (v114 >> 2) & 1) == 0xB)
          {
            v115 = *((v114 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v115 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v115 = sub_1ADDE5178(v115);
          }

          swift_beginAccess();
          v116 = *(v115 + 24);
          *(v115 + 24) = v110;

          sub_1AE1B7530(v115);
          swift_endAccess();
        }
      }
    }
  }

  return result;
}

uint64_t TaggedValue_4<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v46 = a5;
  v51 = a3;
  v54 = a1;
  v6 = *(a2 + 40);
  v47 = *(v6 - 8);
  v48 = a6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 16);
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = v22;
  *(&v27 + 1) = v16;
  *&v28 = v10;
  *(&v28 + 1) = v6;
  v57 = v28;
  v56 = v27;
  v30 = *(v29 + 64);
  v58 = *(v29 + 48);
  v59 = v30;
  v31 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v44 - v34;
  (*(v36 + 16))(&v44 - v34, v53, v31, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v43 = v50;
      (*(v50 + 32))(v20, v35, v16);
      sub_1AE23CBAC();
      return (*(v43 + 8))(v20, v16);
    }

    else
    {
      v41 = v49;
      (*(v49 + 32))(v26, v35, v22);
      sub_1AE23CBAC();
      return (*(v41 + 8))(v26, v22);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v42 = v44;
    (*(v44 + 32))(v14, v35, v10);
    sub_1AE23CBAC();
    return (*(v42 + 8))(v14, v10);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v38 = v47;
    v39 = v45;
    (*(v47 + 32))(v45, v35, v6);
    sub_1AE23CBAC();
    return (*(v38 + 8))(v39, v6);
  }

  else
  {
    (*(**(v35 + 1) + 80))(v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v56);
  }
}

uint64_t TaggedValue_5.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v117 = a2;
  v118 = a3;
  v109 = a3;
  v108 = a4;
  v119 = a4;
  v120 = a5;
  v112 = a5;
  v113 = a6;
  v121 = a6;
  v122 = a7;
  v106 = a7;
  v107 = a8;
  v123 = a8;
  v124 = a10;
  v105 = a10;
  v110 = a11;
  v125 = a11;
  v126 = a12;
  v111 = a12;
  v15 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v100 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v100 - v33;
  v35 = *(a1 + 72);
  if (!v35)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v46 = 0xD000000000000017;
    *(v46 + 8) = 0x80000001AE25FB70;
    *(v46 + 16) = 0;
    swift_willThrow();
  }

  v101 = v32;
  v103 = v31;
  v104 = v30;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v115 = a1;
  v102 = inited;
  *(inited + 16) = a1;
  v37 = *(v35 + 16);
  v114 = a9;
  if ((~v37 & 0xF000000000000007) != 0 && ((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v38 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v39 = v38[2];
  if (v39 <= 1)
  {
    if (!v39)
    {
      v63 = *(v35 + 16);
      if ((~v63 & 0xF000000000000007) != 0)
      {
        v65 = v114;
        v66 = v115;
        if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
        {
          v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v64 = &unk_1EB5B9140;
        }
      }

      else
      {
        v64 = &unk_1EB5B9140;
        v65 = v114;
        v66 = v115;
      }

      swift_beginAccess();
      if (v64[3])
      {
        v80 = v64[3];
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v80 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v81 = sub_1ADE0262C(v80, v66);
      v82 = v116;
      (*(*(*(v106 + 8) + 8) + 8))(v81, a2);

      if (!v82)
      {

        v83 = v104;
        swift_storeEnumTagMultiPayload();
        return (*(v103 + 32))(v65, v34, v83);
      }
    }

    if (v39 == 1)
    {
      v47 = *(v35 + 16);
      if ((~v47 & 0xF000000000000007) != 0)
      {
        v49 = v114;
        v50 = v115;
        v51 = v116;
        if (((v47 >> 59) & 0x1E | (v47 >> 2) & 1) == 0xB)
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v48 = &unk_1EB5B9140;
        }
      }

      else
      {
        v48 = &unk_1EB5B9140;
        v49 = v114;
        v50 = v115;
        v51 = v116;
      }

      swift_beginAccess();
      v89 = v48[3];
      if (v89)
      {
        v90 = v89;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v90 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v91 = sub_1ADE0262C(v90, v50);
      (*(*(*(v107 + 8) + 8) + 8))(v91);

      if (!v51)
      {

        v92 = v104;
        swift_storeEnumTagMultiPayload();
        return (*(v103 + 32))(v49, v28, v92);
      }
    }

    goto LABEL_24;
  }

  if (v39 == 2)
  {
    v52 = *(v35 + 16);
    if ((~v52 & 0xF000000000000007) != 0)
    {
      v54 = v114;
      v55 = v115;
      if (((v52 >> 59) & 0x1E | (v52 >> 2) & 1) == 0xB)
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v53 = &unk_1EB5B9140;
      }
    }

    else
    {
      v53 = &unk_1EB5B9140;
      v54 = v114;
      v55 = v115;
    }

    swift_beginAccess();
    v70 = v53[3];
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v71 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v72 = sub_1ADE0262C(v71, v55);
    v73 = v116;
    (*(*(*(v105 + 8) + 8) + 8))(v72);
    if (!v73)
    {

      v74 = v104;
      swift_storeEnumTagMultiPayload();
      return (*(v103 + 32))(v54, v25, v74);
    }
  }

  if (v39 == 3)
  {
    v56 = *(v35 + 16);
    if ((~v56 & 0xF000000000000007) != 0)
    {
      v58 = v114;
      v59 = v115;
      v60 = v116;
      v61 = v112;
      v62 = v110;
      if (((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 0xB)
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v57 = &unk_1EB5B9140;
      }
    }

    else
    {
      v57 = &unk_1EB5B9140;
      v58 = v114;
      v59 = v115;
      v60 = v116;
      v61 = v112;
      v62 = v110;
    }

    swift_beginAccess();
    v76 = v57[3];
    if (v76)
    {
      v77 = v76;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v77 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v78 = sub_1ADE0262C(v77, v59);
    (*(*(*(v62 + 8) + 8) + 8))(v78, v61);
    if (!v60)
    {

      v79 = v104;
      swift_storeEnumTagMultiPayload();
      return (*(v103 + 32))(v58, v22, v79);
    }
  }

  if (v39 != 4)
  {
LABEL_24:
    v67 = *(v35 + 16);
    if ((~v67 & 0xF000000000000007) != 0)
    {
      v69 = v116;
      if (((v67 >> 59) & 0x1E | (v67 >> 2) & 1) == 0xB)
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v68 = &unk_1EB5B9140;
      }
    }

    else
    {
      v68 = &unk_1EB5B9140;
      v69 = v116;
    }

    swift_beginAccess();
    v93 = v68[3];
    if (v93)
    {
      v94 = v93;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v94 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v95 = v115;

    v96 = sub_1ADE0262C(v94, v95);
    AnyCRValue.init(from:)(v96, &v127);

    if (!v69)
    {

      v97 = v127;
      v98 = v101;
      *v101 = v39;
      v98[1] = v97;
      v99 = v104;
      swift_storeEnumTagMultiPayload();
      return (*(v103 + 32))(v114, v98, v99);
    }
  }

  v40 = *(v35 + 16);
  if ((~v40 & 0xF000000000000007) != 0)
  {
    v42 = v114;
    v43 = v115;
    v44 = v113;
    v45 = v111;
    if (((v40 >> 59) & 0x1E | (v40 >> 2) & 1) == 0xB)
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v41 = &unk_1EB5B9140;
    }
  }

  else
  {
    v41 = &unk_1EB5B9140;
    v42 = v114;
    v43 = v115;
    v44 = v113;
    v45 = v111;
  }

  swift_beginAccess();
  v84 = v41[3];
  if (v84)
  {
    v85 = v84;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v85 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v86 = sub_1ADE0262C(v85, v43);
  v87 = v116;
  (*(*(*(v45 + 8) + 8) + 8))(v86, v44);
  if (v87)
  {
  }

  v88 = v104;
  swift_storeEnumTagMultiPayload();
  return (*(v103 + 32))(v42, v19, v88);
}

uint64_t TaggedValue_5.encode(to:)(char *a1, uint64_t a2)
{
  v160 = *(*(a2 + 48) - 8);
  v3 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v150 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *(*(v5 + 40) - 8);
  v6 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v155 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = *(*(v9 + 32) - 8);
  v10 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = *(*(v13 + 24) - 8);
  v14 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 16);
  v151 = *(v18 - 8);
  v19 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 56);
  v25 = *(v23 + 64);
  v27 = *(v23 + 80);
  v26 = *(v23 + 88);
  *&v28 = v18;
  v147 = v29;
  *(&v28 + 1) = v29;
  v145 = v30;
  *&v31 = v30;
  v149 = v32;
  *(&v31 + 1) = v32;
  v156 = v31;
  v163 = v31;
  v157 = v28;
  v162 = v28;
  v159 = v33;
  v164 = v33;
  v165 = v24;
  v158 = v25;
  v166 = v25;
  v167 = v27;
  v168 = v26;
  v34 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = (&v140 - v37);
  v39 = v169;
  result = sub_1ADE71C08();
  if (!v39)
  {
    v140 = v22;
    v41 = v160;
    v141 = v24;
    v142 = v27;
    v143 = v26;
    v42 = result;
    v144 = a1;
    v169 = 0;
    (*(v35 + 16))(v38, v161, v34);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v50 = v144;
      if (EnumCaseMultiPayload == 3)
      {
        v62 = v148;
        v63 = v149;
        (*(v148 + 32))(v155, v38, v149);
        v64 = v42;
        swift_beginAccess();
        v65 = *(*(v42 + 24) + 16);
        if ((~v65 & 0xF000000000000007) != 0 && ((v65 >> 59) & 0x1E | (v65 >> 2) & 1) == 0xB)
        {
          inited = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v83 = v143;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v155;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 3;
        sub_1AE1B7530(inited);
        v86 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v86);
        v87 = v156;
        *(&v140 - 6) = v157;
        *(&v140 - 5) = v87;
        v88 = v141;
        *(&v140 - 8) = v159;
        *(&v140 - 7) = v88;
        *(&v140 - 3) = v158;
        *(&v140 - 4) = v142;
        *(&v140 - 3) = v83;
        *(&v140 - 2) = v85;
        *(&v140 - 1) = v50;
        v89 = v169;
        v90 = sub_1ADE6B938(sub_1ADFFAA28);
        if (v89)
        {
        }

        else
        {
          v116 = v90;
          swift_beginAccess();
          v117 = *(*(v64 + 24) + 16);
          if ((~v117 & 0xF000000000000007) != 0 && ((v117 >> 59) & 0x1E | (v117 >> 2) & 1) == 0xB)
          {
            v118 = *((v117 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v118 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v118 = sub_1ADDE5178(v118);
          }

          swift_beginAccess();
          v129 = *(v118 + 24);
          *(v118 + 24) = v116;

          sub_1AE1B7530(v118);
          swift_endAccess();
        }

        return (*(v62 + 8))(v85, v63);
      }

      else
      {
        v51 = v42;
        if (EnumCaseMultiPayload == 4)
        {
          v52 = v41;
          v53 = v150;
          v54 = v38;
          v55 = v159;
          (*(v41 + 32))(v150, v54, v159);
          swift_beginAccess();
          v56 = *(*(v51 + 24) + 16);
          if ((~v56 & 0xF000000000000007) != 0 && ((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 0xB)
          {
            v57 = *((v56 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v57 = swift_initStaticObject();
          }

          v97 = v142;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v57 = sub_1ADDE5178(v57);
          }

          swift_beginAccess();
          *(v57 + 16) = 4;
          sub_1AE1B7530(v57);
          v98 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v98);
          v99 = v156;
          *(&v140 - 6) = v157;
          *(&v140 - 5) = v99;
          v100 = v141;
          *(&v140 - 8) = v55;
          *(&v140 - 7) = v100;
          *(&v140 - 3) = v158;
          v101 = v143;
          *(&v140 - 4) = v97;
          *(&v140 - 3) = v101;
          *(&v140 - 2) = v53;
          *(&v140 - 1) = v50;
          v102 = v169;
          v103 = sub_1ADE6B938(sub_1ADFFA9E0);
          if (v102)
          {
          }

          else
          {
            v122 = v103;
            swift_beginAccess();
            v123 = *(*(v51 + 24) + 16);
            if ((~v123 & 0xF000000000000007) != 0 && ((v123 >> 59) & 0x1E | (v123 >> 2) & 1) == 0xB)
            {
              v124 = *((v123 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v124 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v124 = sub_1ADDE5178(v124);
            }

            swift_beginAccess();
            v131 = *(v124 + 24);
            *(v124 + 24) = v122;

            sub_1AE1B7530(v124);
            swift_endAccess();
          }

          return (*(v52 + 8))(v53, v55);
        }

        else
        {
          v72 = *v38;
          v71 = v38[1];
          swift_beginAccess();
          v73 = *(*(v42 + 24) + 16);
          if ((~v73 & 0xF000000000000007) != 0 && ((v73 >> 59) & 0x1E | (v73 >> 2) & 1) == 0xB)
          {
            v74 = *((v73 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v74 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v74 = sub_1ADDE5178(v74);
          }

          swift_beginAccess();
          *(v74 + 16) = v72;
          sub_1AE1B7530(v74);
          swift_endAccess();
          v111 = *(v50 + 14);
          v110 = *(v50 + 15);
          *(v50 + 14) = 0;
          *(v50 + 15) = 0;
          v112 = v169;
          (*(*v71 + 152))(v50);
          if (v112)
          {
          }

          else
          {
            v133 = sub_1ADE71C08();
            swift_beginAccess();
            v134 = *(v133 + 24);
            v135 = *(v50 + 14);
            *(v50 + 14) = v111;

            v136 = *(v50 + 15);
            *(v50 + 15) = v110;

            swift_beginAccess();
            v137 = *(*(v42 + 24) + 16);
            if ((~v137 & 0xF000000000000007) != 0 && ((v137 >> 59) & 0x1E | (v137 >> 2) & 1) == 0xB)
            {
              v138 = *((v137 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v138 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v138 = sub_1ADDE5178(v138);
            }

            swift_beginAccess();
            v139 = *(v138 + 24);
            *(v138 + 24) = v134;

            sub_1AE1B7530(v138);
            swift_endAccess();
          }
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v44 = v143;
      v45 = v141;
      if (EnumCaseMultiPayload == 1)
      {
        v46 = v146;
        v47 = v147;
        (*(v146 + 32))(v152, v38, v147);
        swift_beginAccess();
        v48 = *(*(v42 + 24) + 16);
        if ((~v48 & 0xF000000000000007) != 0 && ((v48 >> 59) & 0x1E | (v48 >> 2) & 1) == 0xB)
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v49 = swift_initStaticObject();
        }

        v91 = v144;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v49 = sub_1ADDE5178(v49);
        }

        swift_beginAccess();
        *(v49 + 16) = 1;
        sub_1AE1B7530(v49);
        v92 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v92);
        v93 = v156;
        *(&v140 - 6) = v157;
        *(&v140 - 5) = v93;
        *(&v140 - 8) = v159;
        *(&v140 - 7) = v45;
        *(&v140 - 3) = v158;
        *(&v140 - 4) = v142;
        *(&v140 - 3) = v44;
        v94 = v152;
        *(&v140 - 2) = v152;
        *(&v140 - 1) = v91;
        v95 = v169;
        v96 = sub_1ADE6B938(sub_1ADFFAAB8);
        if (v95)
        {
        }

        else
        {
          v119 = v96;
          swift_beginAccess();
          v120 = *(*(v42 + 24) + 16);
          if ((~v120 & 0xF000000000000007) != 0 && ((v120 >> 59) & 0x1E | (v120 >> 2) & 1) == 0xB)
          {
            v121 = *((v120 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v121 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v121 = sub_1ADDE5178(v121);
          }

          swift_beginAccess();
          v130 = *(v121 + 24);
          *(v121 + 24) = v119;

          sub_1AE1B7530(v121);
          swift_endAccess();
        }

        return (*(v46 + 8))(v94, v47);
      }

      else
      {
        v67 = v145;
        (*(v154 + 32))(v153, v38, v145);
        swift_beginAccess();
        v68 = *(*(v42 + 24) + 16);
        v69 = v142;
        if ((~v68 & 0xF000000000000007) != 0 && ((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          v70 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v70 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v70 = sub_1ADDE5178(v70);
        }

        swift_beginAccess();
        *(v70 + 16) = 2;
        sub_1AE1B7530(v70);
        v104 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v104);
        v105 = v156;
        *(&v140 - 6) = v157;
        *(&v140 - 5) = v105;
        *(&v140 - 8) = v159;
        *(&v140 - 7) = v45;
        *(&v140 - 3) = v158;
        *(&v140 - 4) = v69;
        *(&v140 - 3) = v44;
        v106 = v153;
        v107 = v144;
        *(&v140 - 2) = v153;
        *(&v140 - 1) = v107;
        v108 = v169;
        v109 = sub_1ADE6B938(sub_1ADFFAA70);
        if (v108)
        {
        }

        else
        {
          v125 = v109;
          swift_beginAccess();
          v126 = *(*(v42 + 24) + 16);
          if ((~v126 & 0xF000000000000007) != 0 && ((v126 >> 59) & 0x1E | (v126 >> 2) & 1) == 0xB)
          {
            v127 = *((v126 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v127 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v127 = sub_1ADDE5178(v127);
          }

          swift_beginAccess();
          v132 = *(v127 + 24);
          *(v127 + 24) = v125;

          sub_1AE1B7530(v127);
          swift_endAccess();
        }

        return (*(v154 + 8))(v106, v67);
      }
    }

    else
    {
      (*(v151 + 32))(v140, v38, v18);
      swift_beginAccess();
      v58 = *(*(v42 + 24) + 16);
      v59 = v143;
      v60 = v141;
      if ((~v58 & 0xF000000000000007) != 0 && ((v58 >> 59) & 0x1E | (v58 >> 2) & 1) == 0xB)
      {
        v61 = *((v58 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v61 = swift_initStaticObject();
      }

      v75 = v144;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v61 = sub_1ADDE5178(v61);
      }

      swift_beginAccess();
      *(v61 + 16) = 0;
      sub_1AE1B7530(v61);
      v76 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v76);
      v77 = v156;
      *(&v140 - 6) = v157;
      *(&v140 - 5) = v77;
      *&v78 = v159;
      *(&v78 + 1) = v60;
      v79 = v158;
      *(&v140 - 4) = v78;
      *(&v140 - 3) = v79;
      *(&v140 - 4) = v142;
      *(&v140 - 3) = v59;
      v80 = v140;
      *(&v140 - 2) = v140;
      *(&v140 - 1) = v75;
      v81 = v169;
      v82 = sub_1ADE6B938(sub_1ADFFAB00);
      if (v81)
      {
      }

      else
      {
        v113 = v82;
        swift_beginAccess();
        v114 = *(*(v42 + 24) + 16);
        if ((~v114 & 0xF000000000000007) != 0 && ((v114 >> 59) & 0x1E | (v114 >> 2) & 1) == 0xB)
        {
          v115 = *((v114 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v115 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v115 = sub_1ADDE5178(v115);
        }

        swift_beginAccess();
        v128 = *(v115 + 24);
        *(v115 + 24) = v113;

        sub_1AE1B7530(v115);
        swift_endAccess();
      }

      return (*(v151 + 8))(v80, v18);
    }
  }

  return result;
}

uint64_t TaggedValue_5<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a5;
  v65 = a7;
  v61 = a6;
  v63 = a4;
  v60 = a3;
  v66 = a1;
  v7 = *(a2 + 48);
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 40);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 24);
  v54 = *(v21 - 8);
  v22 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v53 = *(v27 - 8);
  v28 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = v27;
  *(&v32 + 1) = v21;
  v34 = *(v33 + 88);
  *&v35 = v16;
  *(&v35 + 1) = v11;
  v69 = v35;
  v68 = v32;
  v70 = v7;
  v36 = *(v33 + 72);
  v71 = *(v33 + 56);
  v72 = v36;
  v73 = v34;
  v37 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v53 - v40;
  (*(v42 + 16))(&v53 - v40, v74, v37, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v49 = v58;
      v50 = v57;
      (*(v58 + 32))(v57, v41, v11);
      sub_1AE23CBAC();
      return (*(v49 + 8))(v50, v11);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v46 = v62;
      v47 = v59;
      (*(v62 + 32))(v59, v41, v7);
      sub_1AE23CBAC();
      return (*(v46 + 8))(v47, v7);
    }

    else
    {
      (*(**(v41 + 1) + 80))(v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
      sub_1AE23CBAC();
      __swift_destroy_boxed_opaque_existential_1(&v68);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v54;
      (*(v54 + 32))(v25, v41, v21);
      sub_1AE23CBAC();
      return (*(v44 + 8))(v25, v21);
    }

    else
    {
      v51 = v56;
      v52 = v55;
      (*(v56 + 32))(v55, v41, v16);
      sub_1AE23CBAC();
      return (*(v51 + 8))(v52, v16);
    }
  }

  else
  {
    v48 = v53;
    (*(v53 + 32))(v31, v41, v27);
    sub_1AE23CBAC();
    return (*(v48 + 8))(v31, v27);
  }
}

uint64_t TaggedValue_6.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v119 = a2;
  v126 = a2;
  v127 = a3;
  v121 = a3;
  v113 = a4;
  v128 = a4;
  v129 = a5;
  v120 = a5;
  v122 = a6;
  v130 = a6;
  v131 = a7;
  v114 = a7;
  v118 = a8;
  v132 = a8;
  v133 = a10;
  v116 = a10;
  v111 = a11;
  v134 = a11;
  v135 = a12;
  v115 = a12;
  v117 = a13;
  v136 = a13;
  v137 = a14;
  v112 = a14;
  v16 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v108 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v108 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v108 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v108 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v108 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v38 = v108 - v37;
  v39 = *(a1 + 72);
  if (!v39)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v50 = 0xD000000000000017;
    *(v50 + 8) = 0x80000001AE25FB70;
    *(v50 + 16) = 0;
    swift_willThrow();
  }

  v108[0] = v36;
  v109 = v34;
  v110 = v35;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v124 = a1;
  v108[1] = inited;
  *(inited + 16) = a1;
  v41 = *(v39 + 16);
  v123 = a9;
  if ((~v41 & 0xF000000000000007) != 0 && ((v41 >> 59) & 0x1E | (v41 >> 2) & 1) == 0xB)
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v42 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v43 = v42[2];
  if (v43 <= 2)
  {
    if (!v43)
    {
      v58 = *(v39 + 16);
      if ((~v58 & 0xF000000000000007) != 0)
      {
        v60 = v123;
        if (((v58 >> 59) & 0x1E | (v58 >> 2) & 1) == 0xB)
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v59 = &unk_1EB5B9140;
        }
      }

      else
      {
        v59 = &unk_1EB5B9140;
        v60 = v123;
      }

      swift_beginAccess();
      v76 = v59[3];
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v77 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();
      v78 = v124;

      v79 = sub_1ADE0262C(v77, v78);
      v80 = v125;
      (*(*(*(v118 + 8) + 8) + 8))(v79);

      if (!v80)
      {

        v81 = v109;
        swift_storeEnumTagMultiPayload();
        return (*(v110 + 32))(v60, v38, v81);
      }
    }

    if (v43 == 1)
    {
      v68 = *(v39 + 16);
      v69 = v124;
      if ((~v68 & 0xF000000000000007) != 0)
      {
        v71 = v123;
        if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
        {
          v70 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v70 = &unk_1EB5B9140;
        }
      }

      else
      {
        v70 = &unk_1EB5B9140;
        v71 = v123;
      }

      swift_beginAccess();
      v101 = v70[3];
      if (v101)
      {
        v102 = v101;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v102 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v103 = sub_1ADE0262C(v102, v69);
      v104 = v125;
      (*(*(*(v116 + 8) + 8) + 8))(v103);

      if (!v104)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v71;
        goto LABEL_79;
      }
    }

    v44 = v124;
    if (v43 == 2)
    {
      v45 = *(v39 + 16);
      if ((~v45 & 0xF000000000000007) != 0)
      {
        v47 = v123;
        v48 = v113;
        v49 = v111;
        if (((v45 >> 59) & 0x1E | (v45 >> 2) & 1) == 0xB)
        {
          v46 = *((v45 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v46 = &unk_1EB5B9140;
        }
      }

      else
      {
        v46 = &unk_1EB5B9140;
        v47 = v123;
        v48 = v113;
        v49 = v111;
      }

      swift_beginAccess();
      v94 = v46[3];
      if (v94)
      {
        v95 = v94;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v95 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v96 = sub_1ADE0262C(v95, v44);
      v97 = v125;
      (*(*(*(v49 + 8) + 8) + 8))(v96, v48);
      if (!v97)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v47;
        v89 = v29;
        return v87(v88, v89, v86);
      }
    }

LABEL_23:
    v65 = *(v39 + 16);
    if ((~v65 & 0xF000000000000007) != 0)
    {
      v67 = v125;
      if (((v65 >> 59) & 0x1E | (v65 >> 2) & 1) == 0xB)
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v66 = &unk_1EB5B9140;
      }
    }

    else
    {
      v66 = &unk_1EB5B9140;
      v67 = v125;
    }

    swift_beginAccess();
    v90 = v66[3];
    if (v90)
    {
      v91 = v90;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v91 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v92 = sub_1ADE0262C(v91, v44);
    AnyCRValue.init(from:)(v92, &v138);

    if (!v67)
    {

      v93 = v138;
      v32 = v108[0];
      *v108[0] = v43;
      *(v32 + 1) = v93;
      v86 = v109;
      swift_storeEnumTagMultiPayload();
      v87 = *(v110 + 32);
      v88 = v123;
LABEL_79:
      v89 = v32;
      return v87(v88, v89, v86);
    }
  }

  if (v43 != 3)
  {
    v44 = v124;
    if (v43 == 4)
    {
      v72 = *(v39 + 16);
      if ((~v72 & 0xF000000000000007) != 0)
      {
        v74 = v123;
        v75 = v125;
        if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v73 = &unk_1EB5B9140;
        }
      }

      else
      {
        v73 = &unk_1EB5B9140;
        v74 = v123;
        v75 = v125;
      }

      swift_beginAccess();
      v105 = v73[3];
      if (v105)
      {
        v106 = v105;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v106 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v107 = sub_1ADE0262C(v106, v44);
      (*(*(*(v117 + 8) + 8) + 8))(v107);
      if (!v75)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v74;
        v89 = v23;
        return v87(v88, v89, v86);
      }
    }

    if (v43 == 5)
    {
      v52 = *(v39 + 16);
      if ((~v52 & 0xF000000000000007) != 0)
      {
        v54 = v123;
        v55 = v125;
        v56 = v114;
        v57 = v112;
        if (((v52 >> 59) & 0x1E | (v52 >> 2) & 1) == 0xB)
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v53 = &unk_1EB5B9140;
        }
      }

      else
      {
        v53 = &unk_1EB5B9140;
        v54 = v123;
        v55 = v125;
        v56 = v114;
        v57 = v112;
      }

      swift_beginAccess();
      v98 = v53[3];
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v99 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v100 = sub_1ADE0262C(v99, v44);
      (*(*(*(v57 + 8) + 8) + 8))(v100, v56);
      if (!v55)
      {

        v86 = v109;
        swift_storeEnumTagMultiPayload();
        v87 = *(v110 + 32);
        v88 = v54;
        v89 = v20;
        return v87(v88, v89, v86);
      }
    }

    goto LABEL_23;
  }

  v61 = *(v39 + 16);
  v62 = v124;
  if ((~v61 & 0xF000000000000007) != 0)
  {
    v64 = v123;
    if (((v61 >> 59) & 0x1E | (v61 >> 2) & 1) == 0xB)
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v63 = &unk_1EB5B9140;
    }
  }

  else
  {
    v63 = &unk_1EB5B9140;
    v64 = v123;
  }

  swift_beginAccess();
  v82 = v63[3];
  if (v82)
  {
    v83 = v82;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v83 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v84 = sub_1ADE0262C(v83, v62);
  v85 = v125;
  (*(*(*(v115 + 8) + 8) + 8))(v84);
  if (v85)
  {
  }

  v86 = v109;
  swift_storeEnumTagMultiPayload();
  v87 = *(v110 + 32);
  v88 = v64;
  v89 = v26;
  return v87(v88, v89, v86);
}

uint64_t TaggedValue_6.encode(to:)(uint64_t a1, uint64_t a2)
{
  v168 = *(*(a2 + 56) - 8);
  v3 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v179 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = *(*(v5 + 48) - 8);
  v6 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = *(*(v9 + 40) - 8);
  v10 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v177 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = *(*(v13 + 32) - 8);
  v14 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v173 = *(v18 - 8);
  v19 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v172 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 16);
  v171 = *(v23 - 8);
  v24 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 64);
  v30 = *(v27 + 80);
  v29 = *(v27 + 88);
  v32 = *(v27 + 96);
  v31 = *(v27 + 104);
  *&v33 = v23;
  v166 = v18;
  *(&v33 + 1) = v18;
  v176 = v34;
  *&v35 = v34;
  v184 = v36;
  *(&v35 + 1) = v36;
  v181 = v35;
  v188 = v35;
  v182 = v33;
  v187 = v33;
  v180 = v37;
  v189 = v37;
  v190 = v38;
  v185 = v38;
  v183 = v28;
  v191 = v28;
  v192 = v30;
  v193 = v29;
  v194 = v32;
  v195 = v31;
  v39 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = (&v161 - v42);
  v44 = v196;
  result = sub_1ADE71C08();
  if (!v44)
  {
    v161 = v23;
    v46 = v184;
    v162 = v30;
    v163 = v29;
    v164 = v32;
    v165 = v31;
    v47 = v185;
    v48 = result;
    v196 = 0;
    (*(v40 + 16))(v43, v186, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      v54 = v48;
      if (EnumCaseMultiPayload)
      {
        v55 = v162;
        if (EnumCaseMultiPayload == 1)
        {
          v56 = v166;
          (*(v173 + 32))(v172, v43, v166);
          swift_beginAccess();
          v57 = *(*(v54 + 24) + 16);
          if ((~v57 & 0xF000000000000007) != 0 && ((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xB)
          {
            inited = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            inited = swift_initStaticObject();
          }

          v89 = v180;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            inited = sub_1ADDE5178(inited);
          }

          swift_beginAccess();
          *(inited + 16) = 1;
          sub_1AE1B7530(inited);
          v90 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v90);
          v91 = v181;
          *(&v161 - 7) = v182;
          *(&v161 - 6) = v91;
          *(&v161 - 10) = v89;
          *(&v161 - 9) = v47;
          *(&v161 - 4) = v183;
          v92 = v163;
          *(&v161 - 6) = v55;
          *(&v161 - 5) = v92;
          v93 = v165;
          *(&v161 - 4) = v164;
          *(&v161 - 3) = v93;
          v94 = v172;
          *(&v161 - 2) = v172;
          *(&v161 - 1) = a1;
          v95 = v196;
          v96 = sub_1ADE6B938(sub_1ADFFAC68);
          if (v95)
          {
          }

          else
          {
            v133 = v96;
            swift_beginAccess();
            v134 = *(*(v54 + 24) + 16);
            if ((~v134 & 0xF000000000000007) != 0 && ((v134 >> 59) & 0x1E | (v134 >> 2) & 1) == 0xB)
            {
              v135 = *((v134 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v135 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v135 = sub_1ADDE5178(v135);
            }

            swift_beginAccess();
            v149 = *(v135 + 24);
            *(v135 + 24) = v133;

            sub_1AE1B7530(v135);
            swift_endAccess();
          }

          return (*(v173 + 8))(v94, v56);
        }

        else
        {
          (*(v175 + 32))(v174, v43, v176);
          swift_beginAccess();
          v67 = *(*(v54 + 24) + 16);
          if ((~v67 & 0xF000000000000007) != 0 && ((v67 >> 59) & 0x1E | (v67 >> 2) & 1) == 0xB)
          {
            v68 = *((v67 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v68 = swift_initStaticObject();
          }

          v97 = v180;
          v98 = v165;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v68 = sub_1ADDE5178(v68);
          }

          swift_beginAccess();
          *(v68 + 16) = 2;
          sub_1AE1B7530(v68);
          v99 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v99);
          v100 = v181;
          *(&v161 - 7) = v182;
          *(&v161 - 6) = v100;
          *(&v161 - 10) = v97;
          *(&v161 - 9) = v47;
          *(&v161 - 4) = v183;
          v101 = v163;
          *(&v161 - 6) = v55;
          *(&v161 - 5) = v101;
          *(&v161 - 4) = v164;
          *(&v161 - 3) = v98;
          v102 = v174;
          *(&v161 - 2) = v174;
          *(&v161 - 1) = a1;
          v103 = v196;
          v104 = sub_1ADE6B938(sub_1ADFFAC20);
          if (v103)
          {
          }

          else
          {
            v136 = v104;
            swift_beginAccess();
            v137 = *(*(v54 + 24) + 16);
            if ((~v137 & 0xF000000000000007) != 0 && ((v137 >> 59) & 0x1E | (v137 >> 2) & 1) == 0xB)
            {
              v138 = *((v137 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v138 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v138 = sub_1ADDE5178(v138);
            }

            swift_beginAccess();
            v150 = *(v138 + 24);
            *(v138 + 24) = v136;

            sub_1AE1B7530(v138);
            swift_endAccess();
          }

          return (*(v175 + 8))(v102, v176);
        }
      }

      else
      {
        (*(v171 + 32))(v170, v43, v161);
        swift_beginAccess();
        v64 = *(*(v48 + 24) + 16);
        v65 = v162;
        if ((~v64 & 0xF000000000000007) != 0 && ((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
        {
          v66 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v66 = swift_initStaticObject();
        }

        v79 = v180;
        v80 = v165;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v66 = sub_1ADDE5178(v66);
        }

        swift_beginAccess();
        *(v66 + 16) = 0;
        sub_1AE1B7530(v66);
        v81 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v81);
        v82 = v181;
        *(&v161 - 7) = v182;
        *(&v161 - 6) = v82;
        *&v83 = v79;
        *(&v83 + 1) = v47;
        v84 = v183;
        *(&v161 - 5) = v83;
        *(&v161 - 4) = v84;
        v85 = v163;
        *(&v161 - 6) = v65;
        *(&v161 - 5) = v85;
        *(&v161 - 4) = v164;
        *(&v161 - 3) = v80;
        v86 = v170;
        *(&v161 - 2) = v170;
        *(&v161 - 1) = a1;
        v87 = v196;
        v88 = sub_1ADE6B938(sub_1ADFFACB0);
        if (v87)
        {
        }

        else
        {
          v130 = v88;
          swift_beginAccess();
          v131 = *(*(v54 + 24) + 16);
          if ((~v131 & 0xF000000000000007) != 0 && ((v131 >> 59) & 0x1E | (v131 >> 2) & 1) == 0xB)
          {
            v132 = *((v131 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v132 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v132 = sub_1ADDE5178(v132);
          }

          swift_beginAccess();
          v148 = *(v132 + 24);
          *(v132 + 24) = v130;

          sub_1AE1B7530(v132);
          swift_endAccess();
        }

        return (*(v171 + 8))(v86, v161);
      }
    }

    else
    {
      v50 = a1;
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v59 = v168;
          v60 = v43;
          v61 = v47;
          (*(v168 + 32))(v179, v60, v47);
          swift_beginAccess();
          v62 = *(*(v48 + 24) + 16);
          if ((~v62 & 0xF000000000000007) != 0 && ((v62 >> 59) & 0x1E | (v62 >> 2) & 1) == 0xB)
          {
            v63 = *((v62 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v63 = swift_initStaticObject();
          }

          v113 = v164;
          v114 = v163;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v63 = sub_1ADDE5178(v63);
          }

          swift_beginAccess();
          *(v63 + 16) = 5;
          sub_1AE1B7530(v63);
          v115 = swift_endAccess();
          MEMORY[0x1EEE9AC00](v115);
          v116 = v181;
          *(&v161 - 7) = v182;
          *(&v161 - 6) = v116;
          *(&v161 - 10) = v180;
          *(&v161 - 9) = v61;
          *(&v161 - 4) = v183;
          *(&v161 - 6) = v162;
          *(&v161 - 5) = v114;
          v117 = v165;
          *(&v161 - 4) = v113;
          *(&v161 - 3) = v117;
          v118 = v179;
          *(&v161 - 2) = v179;
          *(&v161 - 1) = a1;
          v119 = v196;
          v120 = sub_1ADE6B938(sub_1ADFFAB48);
          if (v119)
          {
          }

          else
          {
            v142 = v120;
            swift_beginAccess();
            v143 = *(*(v48 + 24) + 16);
            if ((~v143 & 0xF000000000000007) != 0 && ((v143 >> 59) & 0x1E | (v143 >> 2) & 1) == 0xB)
            {
              v144 = *((v143 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v144 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v144 = sub_1ADDE5178(v144);
            }

            swift_beginAccess();
            v152 = *(v144 + 24);
            *(v144 + 24) = v142;

            sub_1AE1B7530(v144);
            swift_endAccess();
          }

          return (*(v59 + 8))(v118, v61);
        }

        else
        {
          v76 = *v43;
          v75 = v43[1];
          swift_beginAccess();
          v77 = *(*(v48 + 24) + 16);
          if ((~v77 & 0xF000000000000007) != 0 && ((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0xB)
          {
            v78 = *((v77 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v78 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v78 = sub_1ADDE5178(v78);
          }

          swift_beginAccess();
          *(v78 + 16) = v76;
          sub_1AE1B7530(v78);
          swift_endAccess();
          v128 = *(a1 + 112);
          v127 = *(a1 + 120);
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          v129 = v196;
          (*(*v75 + 152))(a1);
          if (v129)
          {
          }

          else
          {
            v154 = sub_1ADE71C08();
            swift_beginAccess();
            v155 = *(v154 + 24);
            v156 = *(v50 + 112);
            *(v50 + 112) = v128;

            v157 = *(v50 + 120);
            *(v50 + 120) = v127;

            swift_beginAccess();
            v158 = *(*(v48 + 24) + 16);
            if ((~v158 & 0xF000000000000007) != 0 && ((v158 >> 59) & 0x1E | (v158 >> 2) & 1) == 0xB)
            {
              v159 = *((v158 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              v159 = swift_initStaticObject();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              type metadata accessor for Proto_TaggedValue._StorageClass();
              swift_allocObject();
              v159 = sub_1ADDE5178(v159);
            }

            swift_beginAccess();
            v160 = *(v159 + 24);
            *(v159 + 24) = v155;

            sub_1AE1B7530(v159);
            swift_endAccess();
          }
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v51 = v46;
        (*(v178 + 32))(v177, v43, v46);
        swift_beginAccess();
        v52 = *(*(v48 + 24) + 16);
        if ((~v52 & 0xF000000000000007) != 0 && ((v52 >> 59) & 0x1E | (v52 >> 2) & 1) == 0xB)
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v53 = swift_initStaticObject();
        }

        v105 = v180;
        v106 = v165;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v53 = sub_1ADDE5178(v53);
        }

        swift_beginAccess();
        *(v53 + 16) = 3;
        sub_1AE1B7530(v53);
        v107 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v107);
        v108 = v181;
        *(&v161 - 7) = v182;
        *(&v161 - 6) = v108;
        *(&v161 - 10) = v105;
        *(&v161 - 9) = v47;
        *(&v161 - 4) = v183;
        v109 = v163;
        *(&v161 - 6) = v162;
        *(&v161 - 5) = v109;
        *(&v161 - 4) = v164;
        *(&v161 - 3) = v106;
        v110 = v177;
        *(&v161 - 2) = v177;
        *(&v161 - 1) = a1;
        v111 = v196;
        v112 = sub_1ADE6B938(sub_1ADFFABD8);
        if (v111)
        {
        }

        else
        {
          v139 = v112;
          swift_beginAccess();
          v140 = *(*(v48 + 24) + 16);
          if ((~v140 & 0xF000000000000007) != 0 && ((v140 >> 59) & 0x1E | (v140 >> 2) & 1) == 0xB)
          {
            v141 = *((v140 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v141 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v141 = sub_1ADDE5178(v141);
          }

          swift_beginAccess();
          v151 = *(v141 + 24);
          *(v141 + 24) = v139;

          sub_1AE1B7530(v141);
          swift_endAccess();
        }

        return (*(v178 + 8))(v110, v51);
      }

      else
      {
        v69 = v167;
        v70 = v169;
        v71 = v43;
        v72 = v180;
        (*(v167 + 32))(v169, v71, v180);
        swift_beginAccess();
        v73 = *(*(v48 + 24) + 16);
        if ((~v73 & 0xF000000000000007) != 0 && ((v73 >> 59) & 0x1E | (v73 >> 2) & 1) == 0xB)
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v74 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v74 = sub_1ADDE5178(v74);
        }

        swift_beginAccess();
        *(v74 + 16) = 4;
        sub_1AE1B7530(v74);
        v121 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v121);
        v122 = v181;
        *(&v161 - 7) = v182;
        *(&v161 - 6) = v122;
        *(&v161 - 10) = v72;
        *(&v161 - 9) = v47;
        *(&v161 - 4) = v183;
        v123 = v163;
        *(&v161 - 6) = v162;
        *(&v161 - 5) = v123;
        v124 = v165;
        *(&v161 - 4) = v164;
        *(&v161 - 3) = v124;
        *(&v161 - 2) = v70;
        *(&v161 - 1) = a1;
        v125 = v196;
        v126 = sub_1ADE6B938(sub_1ADFFAB90);
        if (v125)
        {

          return (*(v69 + 8))(v70, v72);
        }

        else
        {
          v145 = v126;
          swift_beginAccess();
          v146 = *(*(v48 + 24) + 16);
          if ((~v146 & 0xF000000000000007) != 0 && ((v146 >> 59) & 0x1E | (v146 >> 2) & 1) == 0xB)
          {
            v147 = *((v146 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v147 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v147 = sub_1ADDE5178(v147);
          }

          swift_beginAccess();
          v153 = *(v147 + 24);
          *(v147 + 24) = v145;

          sub_1AE1B7530(v147);
          swift_endAccess();

          return (*(v69 + 8))(v169, v72);
        }
      }
    }
  }

  return result;
}

uint64_t TaggedValue_6<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v71 = a7;
  v70 = a6;
  v78 = a4;
  v79 = a5;
  v77 = a3;
  v81 = a1;
  v69 = *(*(a2 + 56) - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(*(v10 + 48) - 8);
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 40);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 32);
  v76 = *(v20 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 24);
  v75 = *(v26 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 + 16);
  v74 = *(v32 - 8);
  v33 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = v32;
  *(&v37 + 1) = v26;
  *&v38 = v20;
  *(&v38 + 1) = v15;
  v84 = v38;
  v83 = v37;
  v63 = v39;
  v85 = v39;
  v86 = v40;
  v73 = v40;
  v42 = v41[5];
  v87 = v41[4];
  v88 = v42;
  v89 = v41[6];
  v43 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v63 - v46;
  (*(v48 + 16))(&v63 - v46, v80, v43, v45);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v53 = v75;
        (*(v75 + 32))(v30, v47, v26);
        sub_1AE23CBAC();
        return (*(v53 + 8))(v30, v26);
      }

      else
      {
        v60 = v76;
        (*(v76 + 32))(v24, v47, v20);
        sub_1AE23CBAC();
        return (*(v60 + 8))(v24, v20);
      }
    }

    else
    {
      v59 = v74;
      (*(v74 + 32))(v36, v47, v32);
      sub_1AE23CBAC();
      return (*(v59 + 8))(v36, v32);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        (*(**(v47 + 1) + 80))(v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        sub_1AE23CBAC();
        __swift_destroy_boxed_opaque_existential_1(&v83);
      }

      v54 = v69;
      v55 = v68;
      v56 = v47;
      v57 = v73;
      (*(v69 + 32))(v68, v56, v73);
      v58 = &v91;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v50 = v65;
        v51 = v64;
        (*(v65 + 32))(v64, v47, v15);
        sub_1AE23CBAC();
        return (*(v50 + 8))(v51, v15);
      }

      v54 = v67;
      v55 = v66;
      v61 = v47;
      v57 = v63;
      (*(v67 + 32))(v66, v61, v63);
      v58 = &v90;
    }

    v62 = *(v58 - 32);
    sub_1AE23CBAC();
    return (*(v54 + 8))(v55, v57);
  }
}

uint64_t TaggedValue_7.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v133 = a2;
  v143 = a2;
  v144 = a3;
  v134 = a3;
  v137 = a4;
  v145 = a4;
  v146 = a5;
  v135 = a5;
  v138 = a6;
  v147 = a6;
  v148 = a7;
  v136 = a7;
  v139 = a8;
  v149 = a8;
  v150 = a10;
  v126 = a10;
  v127 = a11;
  v151 = a11;
  v152 = a12;
  v129 = a12;
  v128 = a13;
  v153 = a13;
  v154 = a14;
  v131 = a14;
  v130 = a15;
  v155 = a15;
  v156 = a16;
  v132 = a16;
  v18 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v122 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v122 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v42 = &v122 - v41;
  v43 = *(a1 + 72);
  if (!v43)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v52 = 0xD000000000000017;
    *(v52 + 8) = 0x80000001AE25FB70;
    *(v52 + 16) = 0;
    swift_willThrow();
  }

  v123 = v40;
  v122 = v39;
  v124 = v37;
  v125 = v38;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v141 = a1;
  *(inited + 16) = a1;
  v45 = *(v43 + 16);
  v140 = a9;
  if ((~v45 & 0xF000000000000007) != 0 && ((v45 >> 59) & 0x1E | (v45 >> 2) & 1) == 0xB)
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v46 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v47 = v46[2];
  if (v47 > 2)
  {
    if (v47 <= 4)
    {
      v48 = v141;
      if (v47 == 3)
      {
        v69 = *(v43 + 16);
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v71 = v140;
          if (((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 0xB)
          {
            v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v70 = &unk_1EB5B9140;
          }
        }

        else
        {
          v70 = &unk_1EB5B9140;
          v71 = v140;
        }

        swift_beginAccess();
        v91 = v70[3];
        if (v91)
        {
          v92 = v91;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v92 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v93 = sub_1ADE0262C(v92, v48);
        v94 = v142;
        (*(*(*(v128 + 8) + 8) + 8))(v93);
        if (!v94)
        {

          v95 = v124;
          swift_storeEnumTagMultiPayload();
          return (*(v125 + 32))(v71, v29, v95);
        }
      }

      else
      {
        v49 = *(v43 + 16);
        if ((~v49 & 0xF000000000000007) != 0)
        {
          v51 = v140;
          if (((v49 >> 59) & 0x1E | (v49 >> 2) & 1) == 0xB)
          {
            v50 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v50 = &unk_1EB5B9140;
          }
        }

        else
        {
          v50 = &unk_1EB5B9140;
          v51 = v140;
        }

        swift_beginAccess();
        v101 = v50[3];
        if (v101)
        {
          v102 = v101;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v102 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v103 = sub_1ADE0262C(v102, v48);
        v104 = v142;
        (*(*(*(v131 + 8) + 8) + 8))(v103);
        if (!v104)
        {

          v105 = v124;
          swift_storeEnumTagMultiPayload();
          return (*(v125 + 32))(v51, v26, v105);
        }
      }
    }

    v54 = v141;
    if (v47 != 5)
    {
      if (v47 == 6)
      {
        v60 = *(v43 + 16);
        if ((~v60 & 0xF000000000000007) != 0)
        {
          v62 = v140;
          if (((v60 >> 59) & 0x1E | (v60 >> 2) & 1) == 0xB)
          {
            v61 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v61 = &unk_1EB5B9140;
          }
        }

        else
        {
          v61 = &unk_1EB5B9140;
          v62 = v140;
        }

        swift_beginAccess();
        v106 = v61[3];
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v107 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v108 = sub_1ADE0262C(v107, v54);
        v109 = v123;
        v110 = v142;
        (*(*(*(v132 + 8) + 8) + 8))(v108);
        if (!v110)
        {

          v111 = v124;
          swift_storeEnumTagMultiPayload();
          return (*(v125 + 32))(v62, v109, v111);
        }
      }

      goto LABEL_23;
    }

    v72 = *(v43 + 16);
    if ((~v72 & 0xF000000000000007) != 0)
    {
      v74 = v140;
      if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v73 = &unk_1EB5B9140;
      }
    }

    else
    {
      v73 = &unk_1EB5B9140;
      v74 = v140;
    }

    swift_beginAccess();
    v96 = v73[3];
    if (v96)
    {
      v97 = v96;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v97 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v98 = sub_1ADE0262C(v97, v54);
    v99 = v142;
    (*(*(*(v130 + 8) + 8) + 8))(v98);
    if (!v99)
    {

      v100 = v124;
      swift_storeEnumTagMultiPayload();
      return (*(v125 + 32))(v74, v23, v100);
    }
  }

  if (!v47)
  {
    v63 = *(v43 + 16);
    if ((~v63 & 0xF000000000000007) != 0)
    {
      v65 = v140;
      v66 = v141;
      if (((v63 >> 59) & 0x1E | (v63 >> 2) & 1) == 0xB)
      {
        v64 = *((v63 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v64 = &unk_1EB5B9140;
      }
    }

    else
    {
      v64 = &unk_1EB5B9140;
      v65 = v140;
      v66 = v141;
    }

    swift_beginAccess();
    v86 = v64[3];
    if (v86)
    {
      v87 = v86;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v87 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v88 = sub_1ADE0262C(v87, v66);
    v89 = v142;
    (*(*(*(v126 + 8) + 8) + 8))(v88);

    if (!v89)
    {

      v90 = v124;
      swift_storeEnumTagMultiPayload();
      return (*(v125 + 32))(v65, v42, v90);
    }
  }

  if (v47 == 1)
  {
    v75 = *(v43 + 16);
    if ((~v75 & 0xF000000000000007) != 0)
    {
      v77 = v140;
      if (((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v76 = &unk_1EB5B9140;
      }
    }

    else
    {
      v76 = &unk_1EB5B9140;
      v77 = v140;
    }

    swift_beginAccess();
    v117 = v76[3];
    if (v117)
    {
      v118 = v117;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v118 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();
    v119 = v141;

    v120 = sub_1ADE0262C(v118, v119);
    v121 = v142;
    (*(*(*(v127 + 8) + 8) + 8))(v120);

    if (!v121)
    {

      v83 = v124;
      swift_storeEnumTagMultiPayload();
      v84 = *(v125 + 32);
      v85 = v77;
      v116 = v35;
      return v84(v85, v116, v83);
    }
  }

  v54 = v141;
  if (v47 != 2)
  {
LABEL_23:
    v67 = *(v43 + 16);
    if ((~v67 & 0xF000000000000007) != 0 && ((v67 >> 59) & 0x1E | (v67 >> 2) & 1) == 0xB)
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v68 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v78 = v68[3];
    if (v78)
    {
      v79 = v78;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v79 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v80 = sub_1ADE0262C(v79, v54);
    v81 = v142;
    AnyCRValue.init(from:)(v80, &v157);

    if (v81)
    {
    }

    v82 = v157;
    v32 = v122;
    *v122 = v47;
    v32[1] = v82;
    v83 = v124;
    swift_storeEnumTagMultiPayload();
    v84 = *(v125 + 32);
    v85 = v140;
    goto LABEL_91;
  }

  v55 = *(v43 + 16);
  if ((~v55 & 0xF000000000000007) != 0)
  {
    v57 = v140;
    v58 = v137;
    v59 = v129;
    if (((v55 >> 59) & 0x1E | (v55 >> 2) & 1) == 0xB)
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v56 = &unk_1EB5B9140;
    }
  }

  else
  {
    v56 = &unk_1EB5B9140;
    v57 = v140;
    v58 = v137;
    v59 = v129;
  }

  swift_beginAccess();
  v112 = v56[3];
  if (v112)
  {
    v113 = v112;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v113 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v114 = sub_1ADE0262C(v113, v54);
  v115 = v142;
  (*(*(*(v59 + 8) + 8) + 8))(v114, v58);
  if (v115)
  {
  }

  v83 = v124;
  swift_storeEnumTagMultiPayload();
  v84 = *(v125 + 32);
  v85 = v57;
LABEL_91:
  v116 = v32;
  return v84(v85, v116, v83);
}

uint64_t TaggedValue_7.encode(to:)(uint64_t a1, uint64_t a2)
{
  v225 = *(*(a2 + 64) - 8);
  v3 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v224 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = *(*(v5 + 56) - 8);
  v6 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v221 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = *(*(v9 + 48) - 8);
  v10 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v218 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 40);
  v216 = *(v14 - 8);
  v15 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v215 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 32);
  v214 = *(v19 - 8);
  v20 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = *(*(v22 + 24) - 8);
  v23 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v210 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 + 16);
  v208 = *(v27 - 8);
  v28 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v209 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v31[10];
  v32 = v31[11];
  v35 = v31[12];
  v34 = v31[13];
  v37 = v31[14];
  v36 = v31[15];
  v226 = v38;
  *&v39 = v38;
  *(&v39 + 1) = *v40;
  *&v41 = v27;
  v212 = v42;
  *(&v41 + 1) = v42;
  v207 = v43;
  *&v44 = v43;
  v217 = v14;
  *(&v44 + 1) = v14;
  v227 = v44;
  v235[1] = v44;
  v228 = v41;
  v235[0] = v41;
  v220 = v45;
  *&v41 = v45;
  v223 = v46;
  *(&v41 + 1) = v46;
  v230 = v39;
  v235[3] = v39;
  v229 = v41;
  v235[2] = v41;
  v232 = v33;
  v236 = v33;
  v237 = v32;
  v231 = v32;
  v238 = v35;
  v239 = v34;
  v240 = v37;
  v241 = v36;
  v47 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = (&v201 - v50);
  v52 = v242;
  result = sub_1ADE71C08();
  if (v52)
  {
    return result;
  }

  v201 = v27;
  v54 = v232;
  v202 = v35;
  v203 = v34;
  v204 = v37;
  v205 = v36;
  v242 = result;
  v55 = a1;
  v206 = 0;
  (*(v48 + 16))(v51, v233, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v62 = v54;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        (*(v225 + 32))(v224, v51, v226);
        v71 = v242;
        swift_beginAccess();
        v72 = *(*(v71 + 24) + 16);
        if ((~v72 & 0xF000000000000007) != 0 && ((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
        {
          inited = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          inited = swift_initStaticObject();
        }

        v120 = v205;
        v121 = v204;
        v122 = v203;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE5178(inited);
        }

        swift_beginAccess();
        *(inited + 16) = 6;
        sub_1AE1B7530(inited);
        v123 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v123);
        v124 = v227;
        *(&v201 - 8) = v228;
        *(&v201 - 7) = v124;
        v125 = v230;
        *(&v201 - 6) = v229;
        *(&v201 - 5) = v125;
        v126 = v231;
        *(&v201 - 8) = v62;
        *(&v201 - 7) = v126;
        *(&v201 - 6) = v202;
        *(&v201 - 5) = v122;
        *(&v201 - 4) = v121;
        *(&v201 - 3) = v120;
        v127 = v224;
        *(&v201 - 2) = v224;
        *(&v201 - 1) = a1;
        v128 = v206;
        v129 = sub_1ADE6B938(sub_1ADFFACF8);
        if (v128)
        {
        }

        else
        {
          v176 = v129;
          swift_beginAccess();
          v177 = *(*(v71 + 24) + 16);
          if ((~v177 & 0xF000000000000007) != 0 && ((v177 >> 59) & 0x1E | (v177 >> 2) & 1) == 0xB)
          {
            v178 = *((v177 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v178 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v178 = sub_1ADDE5178(v178);
          }

          swift_beginAccess();
          v190 = *(v178 + 24);
          *(v178 + 24) = v176;

          sub_1AE1B7530(v178);
          swift_endAccess();
        }

        return (*(v225 + 8))(v127, v226);
      }

      else
      {
        v85 = *v51;
        v84 = v51[1];
        v86 = v242;
        swift_beginAccess();
        v87 = *(*(v86 + 24) + 16);
        if ((~v87 & 0xF000000000000007) != 0 && ((v87 >> 59) & 0x1E | (v87 >> 2) & 1) == 0xB)
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v88 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v88 = sub_1ADDE5178(v88);
        }

        swift_beginAccess();
        *(v88 + 16) = v85;
        sub_1AE1B7530(v88);
        swift_endAccess();
        v165 = *(a1 + 112);
        v164 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        v166 = v206;
        (*(*v84 + 152))(a1);
        if (v166)
        {
        }

        else
        {
          v194 = sub_1ADE71C08();
          swift_beginAccess();
          v195 = *(v194 + 24);
          v196 = *(v55 + 112);
          *(v55 + 112) = v165;

          v197 = *(v55 + 120);
          *(v55 + 120) = v164;

          swift_beginAccess();
          v198 = *(*(v86 + 24) + 16);
          if ((~v198 & 0xF000000000000007) != 0 && ((v198 >> 59) & 0x1E | (v198 >> 2) & 1) == 0xB)
          {
            v199 = *((v198 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v199 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v199 = sub_1ADDE5178(v199);
          }

          swift_beginAccess();
          v200 = *(v199 + 24);
          *(v199 + 24) = v195;

          sub_1AE1B7530(v199);
          swift_endAccess();
        }
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v219 + 32))(v218, v51, v220);
      v63 = v242;
      swift_beginAccess();
      v64 = *(*(v63 + 24) + 16);
      v65 = v202;
      if ((~v64 & 0xF000000000000007) != 0 && ((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
      {
        v66 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v66 = swift_initStaticObject();
      }

      v100 = v205;
      v101 = v204;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v66 = sub_1ADDE5178(v66);
      }

      swift_beginAccess();
      *(v66 + 16) = 4;
      sub_1AE1B7530(v66);
      v102 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v102);
      v103 = v227;
      *(&v201 - 8) = v228;
      *(&v201 - 7) = v103;
      v104 = v230;
      *(&v201 - 6) = v229;
      *(&v201 - 5) = v104;
      v105 = v231;
      *(&v201 - 8) = v62;
      *(&v201 - 7) = v105;
      v106 = v203;
      *(&v201 - 6) = v65;
      *(&v201 - 5) = v106;
      *(&v201 - 4) = v101;
      *(&v201 - 3) = v100;
      v107 = v218;
      *(&v201 - 2) = v218;
      *(&v201 - 1) = a1;
      v108 = v206;
      v109 = sub_1ADE6B938(sub_1ADFFAD88);
      if (v108)
      {
      }

      else
      {
        v170 = v109;
        swift_beginAccess();
        v171 = *(*(v63 + 24) + 16);
        if ((~v171 & 0xF000000000000007) != 0 && ((v171 >> 59) & 0x1E | (v171 >> 2) & 1) == 0xB)
        {
          v172 = *((v171 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v172 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v172 = sub_1ADDE5178(v172);
        }

        swift_beginAccess();
        v188 = *(v172 + 24);
        *(v172 + 24) = v170;

        sub_1AE1B7530(v172);
        swift_endAccess();
      }

      return (*(v219 + 8))(v107, v220);
    }

    else
    {
      (*(v222 + 32))(v221, v51, v223);
      v77 = v242;
      swift_beginAccess();
      v78 = *(*(v77 + 24) + 16);
      v79 = v202;
      if ((~v78 & 0xF000000000000007) != 0 && ((v78 >> 59) & 0x1E | (v78 >> 2) & 1) == 0xB)
      {
        v80 = *((v78 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v80 = swift_initStaticObject();
      }

      v141 = v205;
      v142 = v204;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v80 = sub_1ADDE5178(v80);
      }

      swift_beginAccess();
      *(v80 + 16) = 5;
      sub_1AE1B7530(v80);
      v143 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v143);
      v144 = v227;
      *(&v201 - 8) = v228;
      *(&v201 - 7) = v144;
      v145 = v230;
      *(&v201 - 6) = v229;
      *(&v201 - 5) = v145;
      v146 = v231;
      *(&v201 - 8) = v62;
      *(&v201 - 7) = v146;
      v147 = v203;
      *(&v201 - 6) = v79;
      *(&v201 - 5) = v147;
      *(&v201 - 4) = v142;
      *(&v201 - 3) = v141;
      v148 = v221;
      *(&v201 - 2) = v221;
      *(&v201 - 1) = a1;
      v149 = v206;
      v150 = sub_1ADE6B938(sub_1ADFFAD40);
      if (v149)
      {
      }

      else
      {
        v181 = v150;
        swift_beginAccess();
        v182 = *(*(v77 + 24) + 16);
        if ((~v182 & 0xF000000000000007) != 0 && ((v182 >> 59) & 0x1E | (v182 >> 2) & 1) == 0xB)
        {
          v183 = *((v182 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v183 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v183 = sub_1ADDE5178(v183);
        }

        swift_beginAccess();
        v192 = *(v183 + 24);
        *(v183 + 24) = v181;

        sub_1AE1B7530(v183);
        swift_endAccess();
      }

      return (*(v222 + 8))(v148, v223);
    }
  }

  else
  {
    v57 = v54;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v58 = v208;
        (*(v208 + 32))(v209, v51, v201);
        v59 = v242;
        swift_beginAccess();
        v60 = *(*(v59 + 24) + 16);
        if ((~v60 & 0xF000000000000007) != 0 && ((v60 >> 59) & 0x1E | (v60 >> 2) & 1) == 0xB)
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v61 = swift_initStaticObject();
        }

        v89 = v205;
        v90 = v204;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v61 = sub_1ADDE5178(v61);
        }

        swift_beginAccess();
        *(v61 + 16) = 0;
        v91 = v242;
        sub_1AE1B7530(v61);
        v92 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v92);
        v93 = v227;
        *(&v201 - 8) = v228;
        *(&v201 - 7) = v93;
        v94 = v230;
        *(&v201 - 6) = v229;
        *(&v201 - 5) = v94;
        v95 = v231;
        *(&v201 - 8) = v57;
        *(&v201 - 7) = v95;
        v96 = v203;
        *(&v201 - 6) = v202;
        *(&v201 - 5) = v96;
        *(&v201 - 4) = v90;
        *(&v201 - 3) = v89;
        v97 = v209;
        *(&v201 - 2) = v209;
        *(&v201 - 1) = a1;
        v98 = v206;
        v99 = sub_1ADE6B938(sub_1ADFFAEA8);
        if (v98)
        {

          return (*(v58 + 8))(v97, v201);
        }

        else
        {
          v167 = v99;
          swift_beginAccess();
          v168 = *(*(v91 + 24) + 16);
          if ((~v168 & 0xF000000000000007) != 0 && ((v168 >> 59) & 0x1E | (v168 >> 2) & 1) == 0xB)
          {
            v169 = *((v168 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            v169 = swift_initStaticObject();
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for Proto_TaggedValue._StorageClass();
            swift_allocObject();
            v169 = sub_1ADDE5178(v169);
          }

          swift_beginAccess();
          v187 = *(v169 + 24);
          *(v169 + 24) = v167;

          sub_1AE1B7530(v169);
          swift_endAccess();

          return (*(v208 + 8))(v97, v201);
        }
      }

      (*(v211 + 32))(v210, v51, v212);
      v74 = v242;
      swift_beginAccess();
      v75 = *(*(v74 + 24) + 16);
      if ((~v75 & 0xF000000000000007) != 0 && ((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0xB)
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v76 = swift_initStaticObject();
      }

      v130 = v205;
      v131 = v202;
      v132 = v242;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v76 = sub_1ADDE5178(v76);
      }

      swift_beginAccess();
      *(v76 + 16) = 1;
      sub_1AE1B7530(v76);
      v133 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v133);
      v134 = v227;
      *(&v201 - 8) = v228;
      *(&v201 - 7) = v134;
      v135 = v230;
      *(&v201 - 6) = v229;
      *(&v201 - 5) = v135;
      v136 = v231;
      *(&v201 - 8) = v57;
      *(&v201 - 7) = v136;
      v137 = v203;
      *(&v201 - 6) = v131;
      *(&v201 - 5) = v137;
      *(&v201 - 4) = v204;
      *(&v201 - 3) = v130;
      v138 = v210;
      *(&v201 - 2) = v210;
      *(&v201 - 1) = a1;
      v139 = v206;
      v140 = sub_1ADE6B938(sub_1ADFFAE60);
      if (v139)
      {
      }

      else
      {
        swift_beginAccess();
        v179 = *(*(v132 + 24) + 16);
        if ((~v179 & 0xF000000000000007) != 0 && ((v179 >> 59) & 0x1E | (v179 >> 2) & 1) == 0xB)
        {
          v180 = *((v179 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v180 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v180 = sub_1ADDE5178(v180);
        }

        swift_beginAccess();
        v191 = *(v180 + 24);
        *(v180 + 24) = v140;

        sub_1AE1B7530(v180);
        swift_endAccess();
      }

      v161 = *(v211 + 8);
      v162 = v138;
      v163 = &v234;
      return v161(v162, *(v163 - 32));
    }

    if (EnumCaseMultiPayload == 2)
    {
      v67 = v207;
      (*(v214 + 32))(v213, v51, v207);
      v68 = v242;
      swift_beginAccess();
      v69 = *(*(v68 + 24) + 16);
      if ((~v69 & 0xF000000000000007) != 0 && ((v69 >> 59) & 0x1E | (v69 >> 2) & 1) == 0xB)
      {
        v70 = *((v69 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v70 = swift_initStaticObject();
      }

      v110 = v205;
      v111 = v204;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v70 = sub_1ADDE5178(v70);
      }

      swift_beginAccess();
      *(v70 + 16) = 2;
      sub_1AE1B7530(v70);
      v112 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v112);
      v113 = v227;
      *(&v201 - 8) = v228;
      *(&v201 - 7) = v113;
      v114 = v230;
      *(&v201 - 6) = v229;
      *(&v201 - 5) = v114;
      v115 = v231;
      *(&v201 - 8) = v57;
      *(&v201 - 7) = v115;
      v116 = v203;
      *(&v201 - 6) = v202;
      *(&v201 - 5) = v116;
      *(&v201 - 4) = v111;
      *(&v201 - 3) = v110;
      v117 = v213;
      *(&v201 - 2) = v213;
      *(&v201 - 1) = a1;
      v118 = v206;
      v119 = sub_1ADE6B938(sub_1ADFFAE18);
      if (v118)
      {
      }

      else
      {
        v173 = v119;
        swift_beginAccess();
        v174 = *(*(v68 + 24) + 16);
        if ((~v174 & 0xF000000000000007) != 0 && ((v174 >> 59) & 0x1E | (v174 >> 2) & 1) == 0xB)
        {
          v175 = *((v174 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          v175 = swift_initStaticObject();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_TaggedValue._StorageClass();
          swift_allocObject();
          v175 = sub_1ADDE5178(v175);
        }

        swift_beginAccess();
        v189 = *(v175 + 24);
        *(v175 + 24) = v173;

        sub_1AE1B7530(v175);
        swift_endAccess();
      }

      return (*(v214 + 8))(v117, v67);
    }

    else
    {
      (*(v216 + 32))(v215, v51, v217);
      v81 = v242;
      swift_beginAccess();
      v82 = *(*(v81 + 24) + 16);
      if ((~v82 & 0xF000000000000007) != 0 && ((v82 >> 59) & 0x1E | (v82 >> 2) & 1) == 0xB)
      {
        v83 = *((v82 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v83 = swift_initStaticObject();
      }

      v151 = v205;
      v152 = v204;
      v153 = v203;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v83 = sub_1ADDE5178(v83);
      }

      swift_beginAccess();
      *(v83 + 16) = 3;
      sub_1AE1B7530(v83);
      v154 = swift_endAccess();
      MEMORY[0x1EEE9AC00](v154);
      v155 = v227;
      *(&v201 - 8) = v228;
      *(&v201 - 7) = v155;
      v156 = v230;
      *(&v201 - 6) = v229;
      *(&v201 - 5) = v156;
      v157 = v231;
      *(&v201 - 8) = v57;
      *(&v201 - 7) = v157;
      *(&v201 - 6) = v202;
      *(&v201 - 5) = v153;
      *(&v201 - 4) = v152;
      *(&v201 - 3) = v151;
      v158 = v215;
      *(&v201 - 2) = v215;
      *(&v201 - 1) = a1;
      v159 = v206;
      v160 = sub_1ADE6B938(sub_1ADFFADD0);
      if (v159)
      {

        v161 = *(v216 + 8);
        v162 = v158;
        v163 = v235 + 8;
        return v161(v162, *(v163 - 32));
      }

      swift_beginAccess();
      v184 = *(*(v81 + 24) + 16);
      v185 = v217;
      if ((~v184 & 0xF000000000000007) != 0 && ((v184 >> 59) & 0x1E | (v184 >> 2) & 1) == 0xB)
      {
        v186 = *((v184 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        v186 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_TaggedValue._StorageClass();
        swift_allocObject();
        v186 = sub_1ADDE5178(v186);
      }

      swift_beginAccess();
      v193 = *(v186 + 24);
      *(v186 + 24) = v160;

      sub_1AE1B7530(v186);
      swift_endAccess();

      return (*(v216 + 8))(v158, v185);
    }
  }
}

uint64_t TaggedValue_7<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a8;
  v87 = a7;
  v86 = a6;
  v84 = a5;
  v83 = a4;
  v82 = a3;
  v91 = a1;
  v85 = *(*(a2 + 64) - 8);
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(*(v10 + 56) - 8);
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 48);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 40);
  v75 = *(v20 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 32);
  v73 = *(v25 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 24);
  v71 = *(v30 - 8);
  v31 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v35 + 16);
  v70 = *(v36 - 8);
  v37 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v41 + 120);
  *&v43 = v36;
  *(&v43 + 1) = v30;
  *&v44 = v25;
  *(&v44 + 1) = v20;
  v94 = v44;
  v93 = v43;
  v95 = v15;
  v96 = v45;
  v80 = v45;
  v89 = v46;
  v97 = v46;
  v47 = *(v41 + 88);
  v98 = *(v41 + 72);
  v99 = v47;
  v100 = *(v41 + 104);
  v101 = v42;
  v48 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v69 - v51;
  (*(v53 + 16))(&v69 - v51, v90, v48, v50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v64 = v71;
        (*(v71 + 32))(v34, v52, v30);
        sub_1AE23CBAC();
        return (*(v64 + 8))(v34, v30);
      }

      else
      {
        v55 = v70;
        (*(v70 + 32))(v40, v52, v36);
        sub_1AE23CBAC();
        return (*(v55 + 8))(v40, v36);
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      v59 = v73;
      v60 = v72;
      (*(v73 + 32))(v72, v52, v25);
      sub_1AE23CBAC();
      return (*(v59 + 8))(v60, v25);
    }

    v65 = v75;
    v66 = v74;
    (*(v75 + 32))(v74, v52, v20);
    v67 = &v102;
LABEL_15:
    v68 = *(v67 - 32);
    sub_1AE23CBAC();
    return (*(v65 + 8))(v66, v20);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v57 = v77;
      v58 = v76;
      (*(v77 + 32))(v76, v52, v15);
      sub_1AE23CBAC();
      return (*(v57 + 8))(v58, v15);
    }

    v65 = v79;
    v66 = v78;
    v20 = v80;
    (*(v79 + 32))(v78, v52, v80);
    v67 = &v103;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v61 = v85;
    v62 = v81;
    v63 = v89;
    (*(v85 + 32))(v81, v52, v89);
    sub_1AE23CBAC();
    return (*(v61 + 8))(v62, v63);
  }

  else
  {
    (*(**(v52 + 1) + 80))(v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
    swift_dynamicCast();
    __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
    sub_1AE23CBAC();
    __swift_destroy_boxed_opaque_existential_1(&v93);
  }
}

uint64_t TaggedValue_8.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v147 = a2;
  v157 = a2;
  v158 = a3;
  v150 = a3;
  v148 = a4;
  v159 = a4;
  v160 = a5;
  v152 = a5;
  v149 = a6;
  v161 = a6;
  v162 = a7;
  v153 = a7;
  v151 = a8;
  v163 = a8;
  v164 = a10;
  v146 = a10;
  v138 = a11;
  v165 = a11;
  v166 = a12;
  v140 = a12;
  v139 = a13;
  v167 = a13;
  v168 = a14;
  v143 = a14;
  v141 = a15;
  v169 = a15;
  v170 = a16;
  v144 = a16;
  v142 = a17;
  v171 = a17;
  v172 = a18;
  v145 = a18;
  v20 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v132 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v132 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v132 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v132 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v132 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v47 = &v132 - v46;
  v48 = *(a1 + 72);
  if (!v48)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v57 = 0xD000000000000017;
    *(v57 + 8) = 0x80000001AE25FB70;
    *(v57 + 16) = 0;
    swift_willThrow();
  }

  v134 = v25;
  v135 = v45;
  v133 = v44;
  v136 = v42;
  v137 = v43;
  type metadata accessor for CRDecoder.CRValueContainer();
  inited = swift_initStackObject();
  v155 = a1;
  *(inited + 16) = a1;
  v50 = *(v48 + 16);
  v154 = a9;
  if ((~v50 & 0xF000000000000007) != 0 && ((v50 >> 59) & 0x1E | (v50 >> 2) & 1) == 0xB)
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  else
  {
    v51 = &unk_1EB5B9140;
  }

  swift_beginAccess();
  v52 = v51[2];
  if (v52 > 3)
  {
    if (v52 > 5)
    {
      if (v52 == 6)
      {
        v86 = *(v48 + 16);
        if ((~v86 & 0xF000000000000007) != 0)
        {
          v66 = v154;
          v88 = v155;
          v89 = v156;
          if (((v86 >> 59) & 0x1E | (v86 >> 2) & 1) == 0xB)
          {
            v87 = *((v86 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v87 = &unk_1EB5B9140;
          }
        }

        else
        {
          v87 = &unk_1EB5B9140;
          v66 = v154;
          v88 = v155;
          v89 = v156;
        }

        swift_beginAccess();
        v106 = v87[3];
        if (v106)
        {
          v107 = v106;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v107 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v108 = sub_1ADE0262C(v107, v88);
        v34 = v134;
        (*(*(*(v142 + 8) + 8) + 8))(v108);
        if (!v89)
        {
          goto LABEL_102;
        }
      }

      else
      {
        if (v52 != 7)
        {
LABEL_32:
          v90 = *(v48 + 16);
          if ((~v90 & 0xF000000000000007) != 0)
          {
            v92 = v155;
            v93 = v156;
            if (((v90 >> 59) & 0x1E | (v90 >> 2) & 1) == 0xB)
            {
              v91 = *((v90 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            }

            else
            {
              v91 = &unk_1EB5B9140;
            }
          }

          else
          {
            v91 = &unk_1EB5B9140;
            v92 = v155;
            v93 = v156;
          }

          swift_beginAccess();
          v126 = v91[3];
          if (v126)
          {
            v127 = v126;
          }

          else
          {
            type metadata accessor for Proto_Value._StorageClass();
            v127 = swift_initStaticObject();
          }

          type metadata accessor for CRDecoder();
          swift_allocObject();

          v128 = sub_1ADE0262C(v127, v92);
          AnyCRValue.init(from:)(v128, &v173);

          if (v93)
          {
          }

          v129 = v173;
          v130 = v133;
          *v133 = v52;
          v130[1] = v129;
          v131 = v136;
          swift_storeEnumTagMultiPayload();
          return (*(v137 + 32))(v154, v130, v131);
        }

        v68 = *(v48 + 16);
        if ((~v68 & 0xF000000000000007) != 0)
        {
          v66 = v154;
          v70 = v155;
          v71 = v156;
          if (((v68 >> 59) & 0x1E | (v68 >> 2) & 1) == 0xB)
          {
            v69 = *((v68 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          }

          else
          {
            v69 = &unk_1EB5B9140;
          }
        }

        else
        {
          v69 = &unk_1EB5B9140;
          v66 = v154;
          v70 = v155;
          v71 = v156;
        }

        swift_beginAccess();
        v122 = v69[3];
        if (v122)
        {
          v123 = v122;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          v123 = swift_initStaticObject();
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v124 = sub_1ADE0262C(v123, v70);
        v34 = v135;
        (*(*(*(v145 + 8) + 8) + 8))(v124);
        if (!v71)
        {
LABEL_102:

          v125 = v136;
          swift_storeEnumTagMultiPayload();
          return (*(v137 + 32))(v66, v34, v125);
        }
      }
    }

    else if (v52 == 4)
    {
      v77 = *(v48 + 16);
      if ((~v77 & 0xF000000000000007) != 0)
      {
        v79 = v155;
        v80 = v156;
        if (((v77 >> 59) & 0x1E | (v77 >> 2) & 1) == 0xB)
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v78 = &unk_1EB5B9140;
        }
      }

      else
      {
        v78 = &unk_1EB5B9140;
        v79 = v155;
        v80 = v156;
      }

      swift_beginAccess();
      v98 = v78[3];
      if (v98)
      {
        v99 = v98;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v99 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v100 = sub_1ADE0262C(v99, v79);
      (*(*(*(v141 + 8) + 8) + 8))(v100);
      if (!v80)
      {

        v101 = v136;
        swift_storeEnumTagMultiPayload();
        return (*(v137 + 32))(v154, v31, v101);
      }
    }

    else
    {
      v59 = *(v48 + 16);
      if ((~v59 & 0xF000000000000007) != 0)
      {
        v61 = v154;
        v62 = v155;
        v63 = v156;
        if (((v59 >> 59) & 0x1E | (v59 >> 2) & 1) == 0xB)
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v60 = &unk_1EB5B9140;
        }
      }

      else
      {
        v60 = &unk_1EB5B9140;
        v61 = v154;
        v62 = v155;
        v63 = v156;
      }

      swift_beginAccess();
      v114 = v60[3];
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v115 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v116 = sub_1ADE0262C(v115, v62);
      (*(*(*(v144 + 8) + 8) + 8))(v116);
      if (!v63)
      {

        v117 = v136;
        swift_storeEnumTagMultiPayload();
        return (*(v137 + 32))(v61, v28, v117);
      }
    }
  }

  if (v52 > 1)
  {
    if (v52 == 2)
    {
      v81 = *(v48 + 16);
      if ((~v81 & 0xF000000000000007) != 0)
      {
        v83 = v154;
        v84 = v155;
        v85 = v156;
        if (((v81 >> 59) & 0x1E | (v81 >> 2) & 1) == 0xB)
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v82 = &unk_1EB5B9140;
        }
      }

      else
      {
        v82 = &unk_1EB5B9140;
        v83 = v154;
        v84 = v155;
        v85 = v156;
      }

      swift_beginAccess();
      v102 = v82[3];
      if (v102)
      {
        v103 = v102;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v103 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v104 = sub_1ADE0262C(v103, v84);
      (*(*(*(v139 + 8) + 8) + 8))(v104);
      if (!v85)
      {

        v105 = v136;
        swift_storeEnumTagMultiPayload();
        return (*(v137 + 32))(v83, v37, v105);
      }
    }

    else
    {
      v64 = *(v48 + 16);
      if ((~v64 & 0xF000000000000007) != 0)
      {
        v66 = v154;
        v67 = v155;
        if (((v64 >> 59) & 0x1E | (v64 >> 2) & 1) == 0xB)
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        }

        else
        {
          v65 = &unk_1EB5B9140;
        }
      }

      else
      {
        v65 = &unk_1EB5B9140;
        v66 = v154;
        v67 = v155;
      }

      swift_beginAccess();
      v118 = v65[3];
      if (v118)
      {
        v119 = v118;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v119 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v120 = sub_1ADE0262C(v119, v67);
      v121 = v156;
      (*(*(*(v143 + 8) + 8) + 8))(v120);
      if (!v121)
      {
        goto LABEL_102;
      }
    }
  }

  if (!v52)
  {
    v72 = *(v48 + 16);
    if ((~v72 & 0xF000000000000007) != 0)
    {
      v74 = v154;
      v75 = v155;
      v76 = v156;
      if (((v72 >> 59) & 0x1E | (v72 >> 2) & 1) == 0xB)
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        v73 = &unk_1EB5B9140;
      }
    }

    else
    {
      v73 = &unk_1EB5B9140;
      v74 = v154;
      v75 = v155;
      v76 = v156;
    }

    swift_beginAccess();
    v94 = v73[3];
    if (v94)
    {
      v95 = v94;
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v95 = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v96 = sub_1ADE0262C(v95, v75);
    (*(*(*(v138 + 8) + 8) + 8))(v96);

    if (!v76)
    {

      v97 = v136;
      swift_storeEnumTagMultiPayload();
      return (*(v137 + 32))(v74, v47, v97);
    }
  }

  if (v52 != 1)
  {
    goto LABEL_32;
  }

  v53 = *(v48 + 16);
  if ((~v53 & 0xF000000000000007) != 0)
  {
    v55 = v154;
    v56 = v156;
    if (((v53 >> 59) & 0x1E | (v53 >> 2) & 1) == 0xB)
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v54 = &unk_1EB5B9140;
    }
  }

  else
  {
    v54 = &unk_1EB5B9140;
    v55 = v154;
    v56 = v156;
  }

  swift_beginAccess();
  v109 = v54[3];
  if (v109)
  {
    v110 = v109;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    v110 = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();
  v111 = v155;

  v112 = sub_1ADE0262C(v110, v111);
  (*(*(*(v140 + 8) + 8) + 8))(v112);

  if (v56)
  {
  }

  v113 = v136;
  swift_storeEnumTagMultiPayload();
  return (*(v137 + 32))(v55, v40, v113);
}