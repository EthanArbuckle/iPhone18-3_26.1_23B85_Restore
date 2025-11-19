@interface CHTextToMathResultTransformationStep
- (CHTextToMathResultTransformationStep)initWithAdditionalRecognitionBlock:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHTextToMathResultTransformationStep

- (CHTextToMathResultTransformationStep)initWithAdditionalRecognitionBlock:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CHTextToMathResultTransformationStep;
  v5 = [(CHTextToMathResultTransformationStep *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1865E6810](v4);
    additionalRecognitionBlock = v5->_additionalRecognitionBlock;
    v5->_additionalRecognitionBlock = v6;

    v8 = MEMORY[0x1E695DFD8];
    v13 = objc_msgSend_componentsSeparatedByString_(@"0 1 2 3 4 5 6 7 8 9 . , '", v9, @" ", v10, v11, v12);
    v18 = objc_msgSend_setWithArray_(v8, v14, v13, v15, v16, v17);
    numericalSymbols = v5->_numericalSymbols;
    v5->_numericalSymbols = v18;

    textToMathTransliterations = v5->_textToMathTransliterations;
    v5->_textToMathTransliterations = &unk_1EF1EBC70;
  }

  return v5;
}

- (id)process:(id)a3 options:(id)a4
{
  v580 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v565 = 0u;
  v566 = 0u;
  v567 = 0u;
  v568 = 0u;
  if (v4)
  {
    v6 = v4[9];
  }

  else
  {
    v6 = 0;
  }

  obj = v6;
  v558 = v5;
  v555 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v565, v575, 16, v8);
  if (v555)
  {
    v554 = *v566;
    do
    {
      v560 = 0;
      do
      {
        if (*v566 != v554)
        {
          objc_enumerationMutation(obj);
        }

        if (v5)
        {
          v9 = v5[10];
        }

        else
        {
          v9 = 0;
        }

        v10 = *(*(&v565 + 1) + 8 * v560);
        v11 = v9;
        v12 = MEMORY[0x1E696AD98];
        v18 = objc_msgSend_uniqueIdentifier(v10, v13, v14, v15, v16, v17);
        v23 = objc_msgSend_numberWithInteger_(v12, v19, v18, v20, v21, v22);
        v561 = objc_msgSend_objectForKeyedSubscript_(v11, v24, v23, v25, v26, v27);
        v556 = v10;

        v28 = v561;
        v34 = objc_msgSend_mathResult(v561, v29, v30, v31, v32, v33);
        if (v34)
        {
          goto LABEL_62;
        }

        if (!objc_msgSend_hasTextResult(v561, v35, v36, v37, v38, v39))
        {
          goto LABEL_63;
        }

        v45 = objc_msgSend_recognitionResultsByLocale(v561, v40, v41, v42, v43, v44);
        v51 = objc_msgSend_preferredLocale(v561, v46, v47, v48, v49, v50);
        v553 = objc_msgSend_objectForKeyedSubscript_(v45, v52, v51, v53, v54, v55);

        v61 = objc_msgSend_topTranscription(v553, v56, v57, v58, v59, v60);
        v67 = objc_msgSend_orderedLocales(v561, v62, v63, v64, v65, v66);
        v551 = v61;
        LOBYTE(v51) = objc_msgSend_isTextTranscriptionUnitConversion_locales_(CHTokenizedTextResult, v68, v61, v67, v69, v70);

        if ((v51 & 1) != 0 || objc_msgSend_hasSuffix_(v61, v71, @"二", v73, v74, v75) && (v524 = MEMORY[0x1E696AEC0], v525 = objc_msgSend_length(v61, v519, v520, v521, v522, v523), objc_msgSend_substringToIndex_(v61, v526, v525 - 1, v527, v528, v529), v530 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithFormat_(v524, v531, @"%@=", v532, v533, v534, v530), v535 = objc_claimAutoreleasedReturnValue(), v530, objc_msgSend_orderedLocales(v561, v536, v537, v538, v539, v540), v541 = objc_claimAutoreleasedReturnValue(), isTextTranscriptionUnitConversion_locales = objc_msgSend_isTextTranscriptionUnitConversion_locales_(CHTokenizedTextResult, v542, v535, v541, v543, v544), v541, v535, isTextTranscriptionUnitConversion_locales))
        {
          v76 = objc_msgSend_inputStrokeIdentifiers(v561, v71, v72, v73, v74, v75);
          v550 = v553;
          v559 = v76;
          v557 = v558;
          if (!self)
          {
            v443 = 0;
LABEL_52:

            v444 = [CHStrokeGroupRecognitionResult alloc];
            v450 = objc_msgSend_orderedLocales(v561, v445, v446, v447, v448, v449);
            v456 = objc_msgSend_recognitionResultsByLocale(v561, v451, v452, v453, v454, v455);
            v462 = objc_msgSend_errorsByLocale(v561, v457, v458, v459, v460, v461);
            v468 = objc_msgSend_languageFitnessByLocale(v561, v463, v464, v465, v466, v467);
            v474 = objc_msgSend_inputStrokeIdentifiers(v561, v469, v470, v471, v472, v473);
            v480 = objc_msgSend_processing(v561, v475, v476, v477, v478, v479);
            v482 = objc_msgSend_initWithOrderedLocales_resultsByLocale_errorsByLocale_languageFitnessByLocale_mathResult_inputStrokeIdentifiers_processing_(v444, v481, v450, v456, v462, v468, v443, v474, v480);

            if (v558)
            {
              v483 = v558[10];
            }

            else
            {
              v483 = 0;
            }

            v484 = v483;
            v485 = MEMORY[0x1E696AD98];
            v491 = objc_msgSend_uniqueIdentifier(v556, v486, v487, v488, v489, v490);
            v496 = objc_msgSend_numberWithInteger_(v485, v492, v491, v493, v494, v495);
            objc_msgSend_setObject_forKeyedSubscript_(v484, v497, v482, v496, v498, v499);

            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v500 = qword_1EA84DC68;
            if (os_log_type_enabled(v500, OS_LOG_TYPE_DEBUG))
            {
              v506 = objc_msgSend_uniqueIdentifier(v556, v501, v502, v503, v504, v505);
              v512 = objc_msgSend_strokeIdentifiers(v556, v507, v508, v509, v510, v511);
              v518 = objc_msgSend_count(v512, v513, v514, v515, v516, v517);
              *buf = 134218240;
              *&buf[4] = v506;
              *&buf[12] = 2048;
              *&buf[14] = v518;
              _os_log_impl(&dword_18366B000, v500, OS_LOG_TYPE_DEBUG, "CHTextToMathResultTransformationStep transformed text stroke group %lu with %lu strokes into math.", buf, 0x16u);
            }

            goto LABEL_61;
          }

          v563 = objc_msgSend_array(MEMORY[0x1E695DF70], v77, v78, v79, v80, v81);
          v87 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
          v573[0] = MEMORY[0x1E69E9820];
          v573[1] = 3221225472;
          v573[2] = sub_1838EBBF8;
          v573[3] = &unk_1E6DDE720;
          v564 = v87;
          v574 = v564;
          objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v550, v88, v573, v89, v90, v91);
          v97 = 0;
          while (2)
          {
            if (v97 >= objc_msgSend_count(v564, v92, v93, v94, v95, v96))
            {
              v434 = [CHTokenizedMathResult alloc];
              *buf = v563;
              v438 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v435, buf, 1, v436, v437);
              v443 = objc_msgSend_initWithBestPathTokens_(v434, v439, v438, v440, v441, v442);

              goto LABEL_52;
            }

            v102 = objc_msgSend_objectAtIndexedSubscript_(v564, v98, v97, v99, v100, v101);
            v108 = objc_msgSend_array(MEMORY[0x1E695DF70], v103, v104, v105, v106, v107);
            v114 = objc_msgSend_properties(v102, v109, v110, v111, v112, v113);
            v115 = @"\\"";
            if ((v114 & 0x20) == 0)
            {
              v115 = &stru_1EF1C0318;
            }

            v116 = v115;
            v122 = objc_msgSend_lastObject(v563, v117, v118, v119, v120, v121);
            v128 = (objc_msgSend_properties(v122, v123, v124, v125, v126, v127) & 0x800000) == 0;

            if (!v128)
            {

              v116 = @"\\,";
            }

            if (v97 == objc_msgSend_count(v564, v129, v130, v131, v132, v133) - 1)
            {
              v139 = objc_msgSend_string(v102, v134, v135, v136, v137, v138);
              if (objc_msgSend_hasSuffix_(v139, v140, @"=", v141, v142, v143))
              {

                goto LABEL_24;
              }

              v149 = objc_msgSend_string(v102, v144, v145, v146, v147, v148);
              hasSuffix = objc_msgSend_hasSuffix_(v149, v150, @"二", v151, v152, v153);

              if (hasSuffix)
              {
LABEL_24:
                v155 = objc_msgSend_string(v102, v134, v135, v136, v137, v138);
                if (objc_msgSend_isEqualToString_(v155, v156, @"=", v157, v158, v159))
                {

                  goto LABEL_33;
                }

                v294 = objc_msgSend_string(v102, v160, v161, v162, v163, v164);
                isEqualToString = objc_msgSend_isEqualToString_(v294, v295, @"二", v296, v297, v298);

                if (isEqualToString)
                {
LABEL_33:
                  v300 = [CHTokenizedMathResultToken alloc];
                  v306 = objc_msgSend_strokeIndexes(v102, v301, v302, v303, v304, v305);
                  objc_msgSend_recognitionScore(v102, v307, v308, v309, v310, v311);
                  v313 = v312;
                  objc_msgSend_originalBounds(v102, v314, v315, v316, v317, v318);
                  v181 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v300, v319, @"=", v306, 0x40000, v320, v313, v321, v322, v323, v324);

                  objc_msgSend_addObject_(v108, v325, v181, v326, v327, v328);
                  v235 = v116;
                  v116 = &stru_1EF1C0318;
                  goto LABEL_48;
                }

                v571 = 0;
                v572 = 0;
                v366 = sub_1838EBC04(self, v102, &v572, &v571, 0, @"=", v559, v557);
                v181 = v572;
                v235 = v571;
                if (v366)
                {
                  objc_msgSend_addObject_(v108, v367, v235, v368, v369, v370);
                  objc_msgSend_addObject_(v108, v371, v181, v372, v373, v374);
                  goto LABEL_48;
                }

                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v375 = qword_1EA84DC68;
                if (os_log_type_enabled(v375, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v97;
                  _os_log_impl(&dword_18366B000, v375, OS_LOG_TYPE_DEBUG, "CHTextToMathResultTransformationStep failed to split text token at index %lu.", buf, 0xCu);
                }

                v381 = objc_msgSend_string(v102, v376, v377, v378, v379, v380);
                v266 = sub_1838EBA28(self, v381);

                v382 = [CHTokenizedMathResultToken alloc];
                v388 = objc_msgSend_strokeIndexes(v102, v383, v384, v385, v386, v387);
                objc_msgSend_recognitionScore(v102, v389, v390, v391, v392, v393);
                v395 = v394;
                objc_msgSend_originalBounds(v102, v396, v397, v398, v399, v400);
                v281 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v382, v401, v266, v388, 0x1000000, v402, v395, v403, v404, v405, v406);

                objc_msgSend_addObject_(v108, v407, v281, v408, v409, v410);
                goto LABEL_46;
              }
            }

            v165 = objc_msgSend_string(v102, v134, v135, v136, v137, v138);
            v171 = objc_msgSend_string(MEMORY[0x1E696AD60], v166, v167, v168, v169, v170);
            v177 = objc_msgSend_length(v165, v172, v173, v174, v175, v176);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1838EC7EC;
            v577 = &unk_1E6DDF1A0;
            v578 = self;
            v178 = v171;
            v579 = v178;
            objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v165, v179, 0, v177, 2, buf);
            v180 = v579;
            v181 = v178;

            if (objc_msgSend_length(v181, v182, v183, v184, v185, v186))
            {
              v192 = objc_msgSend_length(v181, v187, v188, v189, v190, v191);
              v198 = objc_msgSend_string(v102, v193, v194, v195, v196, v197);
              LODWORD(v192) = v192 == objc_msgSend_length(v198, v199, v200, v201, v202, v203);

              if (v192)
              {
                v204 = [CHTokenizedMathResultToken alloc];
                v210 = objc_msgSend_string(v102, v205, v206, v207, v208, v209);
                v216 = objc_msgSend_strokeIndexes(v102, v211, v212, v213, v214, v215);
                objc_msgSend_recognitionScore(v102, v217, v218, v219, v220, v221);
                v223 = v222;
                objc_msgSend_originalBounds(v102, v224, v225, v226, v227, v228);
                v235 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v204, v229, v210, v216, 0x800000, v230, v223, v231, v232, v233, v234);

                objc_msgSend_addObject_(v108, v236, v235, v237, v238, v239);
LABEL_48:

                if (objc_msgSend_length(v116, v411, v412, v413, v414, v415))
                {
                  v420 = [CHTokenizedMathResultToken alloc];
                  v426 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v421, v422, v423, v424, v425);
                  v429 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v420, v427, v116, v426, 0x2000, v428, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

                  objc_msgSend_addObject_(v563, v430, v429, v431, v432, v433);
                }

                objc_msgSend_addObjectsFromArray_(v563, v416, v108, v417, v418, v419);

                ++v97;
                continue;
              }

              v569 = 0;
              v570 = 0;
              v271 = sub_1838EBC04(self, v102, &v570, &v569, v181, 0, v559, v557);
              v235 = v570;
              v266 = v569;
              if (v271)
              {
                v272 = [CHTokenizedMathResultToken alloc];
                v278 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v273, v274, v275, v276, v277);
                v281 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v272, v279, @"\\,", v278, 0x2000, v280, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

                objc_msgSend_addObject_(v108, v282, v235, v283, v284, v285);
                objc_msgSend_addObject_(v108, v286, v281, v287, v288, v289);
                objc_msgSend_addObject_(v108, v290, v266, v291, v292, v293);
              }

              else
              {
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v329 = qword_1EA84DC68;
                if (os_log_type_enabled(v329, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = v97;
                  _os_log_impl(&dword_18366B000, v329, OS_LOG_TYPE_DEBUG, "CHTextToMathResultTransformationStep failed to split text token at index %lu.", buf, 0xCu);
                }

                v335 = objc_msgSend_string(v102, v330, v331, v332, v333, v334);
                v281 = sub_1838EBA28(self, v335);

                v336 = [CHTokenizedMathResultToken alloc];
                v342 = objc_msgSend_strokeIndexes(v102, v337, v338, v339, v340, v341);
                objc_msgSend_recognitionScore(v102, v343, v344, v345, v346, v347);
                v349 = v348;
                objc_msgSend_originalBounds(v102, v350, v351, v352, v353, v354);
                v361 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v336, v355, v281, v342, 0x1000000, v356, v349, v357, v358, v359, v360);

                objc_msgSend_addObject_(v108, v362, v361, v363, v364, v365);
              }

LABEL_46:
            }

            else
            {
              v240 = objc_msgSend_string(v102, v187, v188, v189, v190, v191);
              v235 = sub_1838EBA28(self, v240);

              v241 = [CHTokenizedMathResultToken alloc];
              v247 = objc_msgSend_strokeIndexes(v102, v242, v243, v244, v245, v246);
              objc_msgSend_recognitionScore(v102, v248, v249, v250, v251, v252);
              v254 = v253;
              objc_msgSend_originalBounds(v102, v255, v256, v257, v258, v259);
              v266 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v241, v260, v235, v247, 0x1000000, v261, v254, v262, v263, v264, v265);

              objc_msgSend_addObject_(v108, v267, v266, v268, v269, v270);
            }

            break;
          }

          goto LABEL_48;
        }

LABEL_61:

        v34 = v553;
LABEL_62:

        v28 = v561;
LABEL_63:

        ++v560;
        v5 = v558;
      }

      while (v560 != v555);
      v548 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v546, &v565, v575, 16, v547);
      v555 = v548;
    }

    while (v548);
  }

  return v558;
}

@end