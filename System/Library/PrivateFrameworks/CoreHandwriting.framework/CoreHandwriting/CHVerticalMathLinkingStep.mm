@interface CHVerticalMathLinkingStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHVerticalMathLinkingStep

- (id)process:(id)process options:(id)options
{
  v608 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  v577 = processCopy;
  v14 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v6, qword_1EA84BB58, v7, v8, v9);
  if (v14)
  {
    v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v10, qword_1EA84BB58, v11, v12, v13);
    v21 = objc_msgSend_BOOLValue(v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = 1;
  }

  v27 = objc_msgSend_groupingManager(self, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_strokeProvider(v27, v28, v29, v30, v31, v32);
  sub_1838DD388(&v596, processCopy, v33, v21);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v34 = qword_1EA84DC68;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = (v597 - v596) >> 3;
    *&buf[12] = 2048;
    *&buf[14] = (v600 - v599) >> 3;
    _os_log_impl(&dword_18366B000, v34, OS_LOG_TYPE_DEBUG, "Got %lu stems and %lu entries", buf, 0x16u);
  }

  v564 = objc_msgSend_set(MEMORY[0x1E695DFA8], v35, v36, v37, v38, v39);
  while (1)
  {
    v40 = v577;
    if (v577)
    {
      v40 = v577[10];
    }

    v41 = v40;
    sub_1838E00B4(buf, &v596, &v599, &v601, v564, v41);

    if ((buf[16] & 1) == 0)
    {
      break;
    }

    v46 = v599;
    v47 = v600;
    v48 = v577;
    if (v599 == v600)
    {
      goto LABEL_18;
    }

    while (*v46 != *&buf[8])
    {
      if (++v46 == v600)
      {
        goto LABEL_25;
      }
    }

    if (v46 == v600 || (v49 = v46 + 1, v46 + 1 == v600))
    {
LABEL_18:
      if (v46 == v600)
      {
        goto LABEL_25;
      }

LABEL_19:
      while (v47 != v46)
      {
        v50 = *--v47;
      }

      v600 = v46;
      v48 = v577;
      goto LABEL_25;
    }

    do
    {
      v51 = *v49;
      if (*v49 != *&buf[8])
      {
        *v49 = 0;
        v52 = *v46;
        *v46 = v51;

        ++v46;
        v48 = v577;
      }

      ++v49;
    }

    while (v49 != v47);
    v47 = v600;
    if (v46 != v600)
    {
      goto LABEL_19;
    }

LABEL_25:
    v574 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v42, *&buf[8], v43, v44, v45);
    if (v48)
    {
      v53 = v48[10];
    }

    else
    {
      v53 = 0;
    }

    v54 = v53;
    v55 = MEMORY[0x1E696AD98];
    v61 = objc_msgSend_uniqueIdentifier(*buf, v56, v57, v58, v59, v60);
    v66 = objc_msgSend_numberWithInteger_(v55, v62, v61, v63, v64, v65);
    v71 = objc_msgSend_objectForKeyedSubscript_(v54, v67, v66, v68, v69, v70);
    v77 = objc_msgSend_mathResult(v71, v72, v73, v74, v75, v76);
    v78 = v77 == 0;

    if (v78)
    {
      objc_msgSend_bounds(*buf, v79, v80, v81, v82, v83);
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v91 = v90;
      objc_msgSend_bounds(*&buf[8], v92, v93, v94, v95, v96);
      v612.origin.x = v97;
      v612.origin.y = v98;
      v612.size.width = v99;
      v612.size.height = v100;
      v610.origin.x = v85;
      v610.origin.y = v87;
      v610.size.width = v89;
      v610.size.height = v91;
      v611 = CGRectUnion(v610, v612);
      x = v611.origin.x;
      y = v611.origin.y;
      width = v611.size.width;
      height = v611.size.height;
      v105 = [CHStrokeGroup alloc];
      v111 = objc_msgSend_strokeIdentifiers(*buf, v106, v107, v108, v109, v110);
      v117 = objc_msgSend_firstStrokeIdentifier(*buf, v112, v113, v114, v115, v116);
      v123 = objc_msgSend_lastStrokeIdentifier(*buf, v118, v119, v120, v121, v122);
      objc_msgSend_groupingConfidence(*buf, v124, v125, v126, v127, v128);
      v130 = v129;
      objc_msgSend_firstStrokeOrigin(*buf, v131, v132, v133, v134, v135);
      StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v105, v136, v111, v117, v123, 3, @"CHGroupingPostProcessingManager", x, y, width, height, v130, v137, v138);

      v140 = StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
      memset(__p, 0, sizeof(__p));
      v593[1] = __p;
      LOBYTE(v594) = 0;
      operator new();
    }

    v141 = objc_msgSend_reverseObjectEnumerator(v574, v79, v80, v81, v82, v83);
    v147 = objc_msgSend_allObjects(v141, v142, v143, v144, v145, v146);
    v148 = v577;
    if (v577)
    {
      v148 = v577[10];
    }

    v149 = *buf;
    v150 = v148;
    v592 = 0;
    v593[0] = 0;
    sub_1838E2AF0(self, v147, v149, 0, v603, v150, v593, &v592);
    v151 = v593[0];
    v152 = v592;

    v153 = v596;
    v154 = v597;
    if (v596 == v597)
    {
      v155 = v577;
      goto LABEL_48;
    }

    v155 = v577;
    while (*v153 != *buf)
    {
      if (++v153 == v597)
      {
        goto LABEL_48;
      }
    }

    if (v153 == v597 || (v156 = v153 + 1, v153 + 1 == v597))
    {
      if (v153 == v597)
      {
        goto LABEL_48;
      }

LABEL_42:
      while (v154 != v153)
      {
        v157 = *--v154;
      }

      v597 = v153;
      v155 = v577;
      goto LABEL_48;
    }

    do
    {
      v158 = *v156;
      if (*v156 != *buf)
      {
        *v156 = 0;
        v159 = *v153;
        *v153 = v158;

        ++v153;
        v155 = v577;
      }

      ++v156;
    }

    while (v156 != v154);
    v154 = v597;
    if (v153 != v597)
    {
      goto LABEL_42;
    }

LABEL_48:
    if (v155)
    {
      v160 = v155[9];
    }

    else
    {
      v160 = 0;
    }

    v161 = v160;
    objc_msgSend_removeObject_(v161, v162, *buf, v163, v164, v165);

    if (v155)
    {
      v166 = v577[10];
    }

    else
    {
      v166 = 0;
    }

    v167 = v166;
    v168 = MEMORY[0x1E696AD98];
    v174 = objc_msgSend_uniqueIdentifier(*buf, v169, v170, v171, v172, v173);
    v179 = objc_msgSend_numberWithInteger_(v168, v175, v174, v176, v177, v178);
    objc_msgSend_removeObjectForKey_(v167, v180, v179, v181, v182, v183);

    v590 = 0u;
    v591 = 0u;
    v588 = 0u;
    v589 = 0u;
    v184 = v574;
    v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v185, &v588, v606, 16, v186);
    v192 = v577;
    if (v191)
    {
      v193 = *v589;
      do
      {
        v194 = 0;
        if (v192)
        {
          do
          {
            if (*v589 != v193)
            {
              objc_enumerationMutation(v184);
            }

            v195 = *(*(&v588 + 1) + 8 * v194);
            v196 = v192[9];
            objc_msgSend_removeObject_(v196, v197, v195, v198, v199, v200);

            v201 = v577[10];
            v202 = MEMORY[0x1E696AD98];
            v208 = objc_msgSend_uniqueIdentifier(v195, v203, v204, v205, v206, v207);
            v213 = objc_msgSend_numberWithInteger_(v202, v209, v208, v210, v211, v212);
            objc_msgSend_removeObjectForKey_(v201, v214, v213, v215, v216, v217);

            ++v194;
            v192 = v577;
          }

          while (v191 != v194);
        }

        else
        {
          do
          {
            if (*v589 != v193)
            {
              objc_enumerationMutation(v184);
            }

            v218 = *(*(&v588 + 1) + 8 * v194);
            objc_msgSend_removeObject_(0, v187, v218, v188, v189, v190);
            v219 = MEMORY[0x1E696AD98];
            v225 = objc_msgSend_uniqueIdentifier(v218, v220, v221, v222, v223, v224);
            v230 = objc_msgSend_numberWithInteger_(v219, v226, v225, v227, v228, v229);
            objc_msgSend_removeObjectForKey_(0, v231, v230, v232, v233, v234);

            ++v194;
            v192 = v577;
          }

          while (v191 != v194);
        }

        v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v187, &v588, v606, 16, v190);
      }

      while (v191);
    }

    v235 = v597;
    if (v597 < v598)
    {
      *v235 = v151;
      v236 = (v235 + 8);
      goto LABEL_86;
    }

    v237 = v596;
    v238 = v597 - v596;
    v239 = (v597 - v596) >> 3;
    v240 = v239 + 1;
    if ((v239 + 1) >> 61)
    {
      sub_18368964C();
    }

    v241 = v598 - v596;
    if ((v598 - v596) >> 2 > v240)
    {
      v240 = v241 >> 2;
    }

    if (v241 >= 0x7FFFFFFFFFFFFFF8)
    {
      v242 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v242 = v240;
    }

    v571 = v152;
    if (v242)
    {
      if (!(v242 >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    v276 = (v597 - v596) >> 3;
    *(8 * v239) = v151;
    v236 = 8 * v239 + 8;
    if (v237 == v235)
    {
      v152 = v571;
      v596 = 0;
      v597 = (8 * v239 + 8);
      v598 = 0;
      if (v237)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v243 = v235 - v237 - 8;
      v244 = v237;
      v245 = 0;
      if (v243 < 0x38)
      {
        goto LABEL_236;
      }

      if (v237 < v238 + (v243 & 0xFFFFFFFFFFFFFFF8) - 8 * v276 + 8)
      {
        v244 = v237;
        v245 = 0;
        if ((v237 + (v243 & 0xFFFFFFFFFFFFFFF8)) != -8)
        {
          goto LABEL_236;
        }
      }

      v246 = (v243 >> 3) + 1;
      v245 = (8 * (v246 & 0x3FFFFFFFFFFFFFFCLL));
      v244 = (v245 + v237);
      v247 = (-8 * v276 + 8 * v239 + 16);
      v248 = (v237 + 2);
      v249 = v246 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v250 = *(v248 - 1);
        v251 = *v248;
        *(v248 - 1) = 0uLL;
        *v248 = 0uLL;
        *(v247 - 1) = v250;
        *v247 = v251;
        v247 += 2;
        v248 += 2;
        v249 -= 4;
      }

      while (v249);
      if (v246 != (v246 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_236:
        do
        {
          v252 = *v244;
          *v244++ = 0;
          *v245++ = v252;
        }

        while (v244 != v235);
      }

      v152 = v571;
      do
      {
      }

      while (v237 != v235);
      v237 = v596;
      v596 = 0;
      v597 = (8 * v239 + 8);
      v598 = 0;
      if (v237)
      {
LABEL_85:
        operator delete(v237);
      }
    }

LABEL_86:
    v597 = v236;
    if (v577)
    {
      v253 = v577[9];
    }

    else
    {
      v253 = 0;
    }

    v254 = v253;
    objc_msgSend_addObject_(v254, v255, v151, v256, v257, v258);

    if (v577)
    {
      v259 = v577[10];
    }

    else
    {
      v259 = 0;
    }

    v260 = v259;
    v261 = MEMORY[0x1E696AD98];
    v267 = objc_msgSend_uniqueIdentifier(v151, v262, v263, v264, v265, v266);
    v272 = objc_msgSend_numberWithInteger_(v261, v268, v267, v269, v270, v271);
    objc_msgSend_setObject_forKey_(v260, v273, v152, v272, v274, v275);

    if (buf[16])
    {
    }
  }

  v584 = 0u;
  v585 = 0u;
  v586 = 0u;
  v587 = 0u;
  obj = v564;
  v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v277, &v584, v605, 16, v278);
  if (!v279)
  {
    goto LABEL_134;
  }

  v280 = *v585;
  v572 = *v585;
  while (2)
  {
    v281 = 0;
    v575 = v279;
    while (2)
    {
      if (*v585 != v280)
      {
        objc_enumerationMutation(obj);
      }

      v285 = *(*(&v584 + 1) + 8 * v281);
      v286 = v597;
      if (v597 < v598)
      {
        *v286 = v285;
        v284 = (v286 + 8);
      }

      else
      {
        v287 = v596;
        v288 = v597 - v596;
        v289 = (v597 - v596) >> 3;
        v290 = v289 + 1;
        if ((v289 + 1) >> 61)
        {
          sub_18368964C();
        }

        v291 = v598 - v596;
        if ((v598 - v596) >> 2 > v290)
        {
          v290 = v291 >> 2;
        }

        if (v291 >= 0x7FFFFFFFFFFFFFF8)
        {
          v292 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v292 = v290;
        }

        if (v292)
        {
          if (!(v292 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v303 = (v597 - v596) >> 3;
        *(8 * v289) = v285;
        v284 = 8 * v289 + 8;
        if (v287 == v286)
        {
          v280 = v572;
          v279 = v575;
          v596 = 0;
          v597 = (8 * v289 + 8);
          v598 = 0;
          if (v287)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v293 = v286 - v287 - 8;
          v294 = v287;
          v295 = 0;
          if (v293 < 0x38)
          {
            goto LABEL_237;
          }

          if (v287 < v288 + (v293 & 0xFFFFFFFFFFFFFFF8) - 8 * v303 + 8)
          {
            v294 = v287;
            v295 = 0;
            if ((v287 + (v293 & 0xFFFFFFFFFFFFFFF8)) != -8)
            {
              goto LABEL_237;
            }
          }

          v296 = (v293 >> 3) + 1;
          v295 = (8 * (v296 & 0x3FFFFFFFFFFFFFFCLL));
          v294 = (v295 + v287);
          v297 = (-8 * v303 + 8 * v289 + 16);
          v298 = (v287 + 2);
          v299 = v296 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v300 = *(v298 - 1);
            v301 = *v298;
            *(v298 - 1) = 0uLL;
            *v298 = 0uLL;
            *(v297 - 1) = v300;
            *v297 = v301;
            v297 += 2;
            v298 += 2;
            v299 -= 4;
          }

          while (v299);
          if (v296 != (v296 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_237:
            do
            {
              v302 = *v294;
              *v294++ = 0;
              *v295++ = v302;
            }

            while (v294 != v286);
          }

          v280 = v572;
          v279 = v575;
          do
          {
          }

          while (v287 != v286);
          v287 = v596;
          v596 = 0;
          v597 = (8 * v289 + 8);
          v598 = 0;
          if (v287)
          {
LABEL_132:
            operator delete(v287);
          }
        }
      }

      v597 = v284;
      if (++v281 != v279)
      {
        continue;
      }

      break;
    }

    v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v282, &v584, v605, 16, v283);
    if (v279)
    {
      continue;
    }

    break;
  }

LABEL_134:

  v304 = v596;
  v305 = v597;
  if (v596 != v597)
  {
    while (2)
    {
      v306 = *v304;
      v307 = v577;
      if (v577)
      {
        v307 = v577[10];
      }

      v308 = v307;
      v309 = v306;
      v310 = v308;
      v311 = MEMORY[0x1E696AD98];
      v317 = objc_msgSend_uniqueIdentifier(v309, v312, v313, v314, v315, v316);
      v322 = objc_msgSend_numberWithInteger_(v311, v318, v317, v319, v320, v321);
      v327 = objc_msgSend_objectForKeyedSubscript_(v310, v323, v322, v324, v325, v326);
      v333 = objc_msgSend_mathResult(v327, v328, v329, v330, v331, v332);
      objc_msgSend_baseCharacterHeight(v333, v334, v335, v336, v337, v338);
      v340 = v339;

      v341 = v599;
      v342 = v600;
      if (v599 == v600)
      {
        v343 = 0;
        if (qword_1EA84DC48 == -1)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v343 = 0;
        v344 = 0.0;
        do
        {
          v345 = *v341;
          v346 = sub_1838DFCF8(v309, v345, 1, 0, v340);
          if (v346 > v344)
          {
            v347 = v345;

            v343 = v347;
            v344 = v346;
          }

          ++v341;
        }

        while (v341 != v342);
        if (qword_1EA84DC48 == -1)
        {
LABEL_143:
          v348 = qword_1EA84DC68;
          if (os_log_type_enabled(v348, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v343;
            _os_log_impl(&dword_18366B000, v348, OS_LOG_TYPE_DEBUG, "findBestResultForStem: %@", buf, 0xCu);
          }

          if (v343)
          {
            v349 = v577;
            if (v577)
            {
              v349 = v577[10];
            }

            v350 = v349;
            v582 = 0;
            v583 = 0;
            sub_1838E2AF0(self, MEMORY[0x1E695E0F0], v309, v343, v603, v350, &v583, &v582);
            v351 = v583;
            v352 = v582;

            if (v577)
            {
              v353 = v577[9];
            }

            else
            {
              v353 = 0;
            }

            v354 = v353;
            objc_msgSend_removeObject_(v354, v355, v309, v356, v357, v358);

            if (v577)
            {
              v359 = v577[10];
            }

            else
            {
              v359 = 0;
            }

            v360 = v359;
            v361 = MEMORY[0x1E696AD98];
            v367 = objc_msgSend_uniqueIdentifier(v309, v362, v363, v364, v365, v366);
            v372 = objc_msgSend_numberWithInteger_(v361, v368, v367, v369, v370, v371);
            objc_msgSend_removeObjectForKey_(v360, v373, v372, v374, v375, v376);

            v377 = v599;
            v378 = v600;
            if (v599 == v600)
            {
              goto LABEL_160;
            }

            while (*v377 != v343)
            {
              if (++v377 == v600)
              {
                goto LABEL_167;
              }
            }

            if (v377 == v600 || (v379 = v377 + 1, v377 + 1 == v600))
            {
LABEL_160:
              if (v377 != v600)
              {
                goto LABEL_161;
              }
            }

            else
            {
              do
              {
                v381 = *v379;
                if (*v379 != v343)
                {
                  *v379 = 0;
                  v382 = *v377;
                  *v377 = v381;

                  ++v377;
                }

                ++v379;
              }

              while (v379 != v378);
              v378 = v600;
              if (v377 != v600)
              {
LABEL_161:
                while (v378 != v377)
                {
                  v380 = *--v378;
                }

                v600 = v377;
              }
            }

LABEL_167:
            v383 = v577;
            if (v577)
            {
              v383 = v577[9];
            }

            v384 = v383;
            objc_msgSend_removeObject_(v384, v385, v343, v386, v387, v388);

            if (v577)
            {
              v389 = v577[10];
            }

            else
            {
              v389 = 0;
            }

            v390 = v389;
            v391 = MEMORY[0x1E696AD98];
            v397 = objc_msgSend_uniqueIdentifier(v343, v392, v393, v394, v395, v396);
            v402 = objc_msgSend_numberWithInteger_(v391, v398, v397, v399, v400, v401);
            objc_msgSend_removeObjectForKey_(v390, v403, v402, v404, v405, v406);

            if (v577)
            {
              v407 = v577[9];
            }

            else
            {
              v407 = 0;
            }

            v408 = v407;
            objc_msgSend_addObject_(v408, v409, v351, v410, v411, v412);

            if (v577)
            {
              v413 = v577[10];
            }

            else
            {
              v413 = 0;
            }

            v414 = v413;
            v415 = MEMORY[0x1E696AD98];
            v421 = objc_msgSend_uniqueIdentifier(v351, v416, v417, v418, v419, v420);
            v426 = objc_msgSend_numberWithInteger_(v415, v422, v421, v423, v424, v425);
            objc_msgSend_setObject_forKey_(v414, v427, v352, v426, v428, v429);
          }

          if (++v304 == v305)
          {
            goto LABEL_185;
          }

          continue;
        }
      }

      break;
    }

    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    goto LABEL_143;
  }

LABEL_185:
  v430 = optionsCopy;
  v431 = v577;
  objc_opt_self();
  v436 = v430;
  if (v430)
  {
    v437 = objc_msgSend_objectForKey_(v430, v432, CHGroupingPostProcessingManagerOptionExplicitOperators, v433, v434, v435);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v567 = objc_msgSend_BOOLValue(v437, v438, v439, v440, v441, v442);
    }

    else
    {
      v567 = 0;
    }

    v431 = v577;
    v436 = v430;
  }

  else
  {
    v567 = 0;
  }

  v562 = v436;

  v580 = 0u;
  v581 = 0u;
  v578 = 0u;
  v579 = 0u;
  if (v431)
  {
    v443 = v577;
    v444 = v577[9];
  }

  else
  {
    v444 = 0;
    v443 = v577;
  }

  v565 = v444;
  v447 = objc_msgSend_countByEnumeratingWithState_objects_count_(v565, v445, &v578, v604, 16, v446);
  if (v447)
  {
    v568 = *v579;
    do
    {
      v570 = v447;
      for (i = 0; i != v570; ++i)
      {
        if (*v579 != v568)
        {
          objc_enumerationMutation(v565);
        }

        if (v443)
        {
          v449 = v443[10];
        }

        else
        {
          v449 = 0;
        }

        v450 = *(*(&v578 + 1) + 8 * i);
        v451 = v449;
        v452 = MEMORY[0x1E696AD98];
        v458 = objc_msgSend_uniqueIdentifier(v450, v453, v454, v455, v456, v457);
        v463 = objc_msgSend_numberWithInteger_(v452, v459, v458, v460, v461, v462);
        v468 = objc_msgSend_objectForKeyedSubscript_(v451, v464, v463, v465, v466, v467);

        v474 = objc_msgSend_mathResult(v468, v469, v470, v471, v472, v473);
        LOBYTE(v451) = v474 == 0;

        if ((v451 & 1) == 0)
        {
          v480 = objc_msgSend_mathResult(v468, v475, v476, v477, v478, v479);
          v576 = objc_msgSend_resultTransformedToOfficialNotationWithExplicitOperators_(v480, v481, v567, v482, v483, v484);

          if (v576)
          {
            v485 = [CHStrokeGroupRecognitionResult alloc];
            v491 = objc_msgSend_orderedLocales(v468, v486, v487, v488, v489, v490);
            v573 = objc_msgSend_recognitionResultsByLocale(v468, v492, v493, v494, v495, v496);
            v502 = objc_msgSend_errorsByLocale(v468, v497, v498, v499, v500, v501);
            v508 = objc_msgSend_languageFitnessByLocale(v468, v503, v504, v505, v506, v507);
            v514 = objc_msgSend_inputStrokeIdentifiers(v468, v509, v510, v511, v512, v513);
            v520 = objc_msgSend_inputDrawing(v468, v515, v516, v517, v518, v519);
            v526 = objc_msgSend_inputDrawingCutPoints(v468, v521, v522, v523, v524, v525);
            v528 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_inputDrawing_inputDrawingCutPoints_(v485, v527, v491, v573, v502, v508, v576, v514, 1, v520, v526);

            if (v577)
            {
              v529 = v577[10];
            }

            else
            {
              v529 = 0;
            }

            v530 = v529;
            v531 = MEMORY[0x1E696AD98];
            v537 = objc_msgSend_uniqueIdentifier(v450, v532, v533, v534, v535, v536);
            v542 = objc_msgSend_numberWithInteger_(v531, v538, v537, v539, v540, v541);
            objc_msgSend_setObject_forKeyedSubscript_(v530, v543, v528, v542, v544, v545);
          }
        }

        v443 = v577;
      }

      v447 = objc_msgSend_countByEnumeratingWithState_objects_count_(v565, v546, &v578, v604, 16, v547);
    }

    while (v447);
  }

  v548 = v577;
  sub_1838EF034(v603[1]);
  v549 = v601;
  if (v601)
  {
    v550 = v602;
    v551 = v601;
    if (v602 != v601)
    {
      do
      {
        v552 = *(v550 - 1);
        v550 -= 8;
      }

      while (v550 != v549);
      v551 = v601;
    }

    v602 = v549;
    operator delete(v551);
  }

  v553 = v599;
  if (v599)
  {
    v554 = v600;
    v555 = v599;
    if (v600 != v599)
    {
      do
      {
        v556 = *--v554;
      }

      while (v554 != v553);
      v555 = v599;
    }

    v600 = v553;
    operator delete(v555);
  }

  v557 = v596;
  if (v596)
  {
    v558 = v597;
    v559 = v596;
    if (v597 != v596)
    {
      do
      {
        v560 = *--v558;
      }

      while (v558 != v557);
      v559 = v596;
    }

    v597 = v557;
    operator delete(v559);
  }

  return v548;
}

@end