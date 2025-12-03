@interface CHJapaneseTokenizationAndConversionStep
- (CHJapaneseTokenizationAndConversionStep)initWithMecabra:(id)mecabra wordLanguageModel:(void *)model ovsStringChecker:(id)checker promoteKanaConversion:(BOOL)conversion;
- (id)process:(id)process options:(id)options;
- (void)dealloc;
@end

@implementation CHJapaneseTokenizationAndConversionStep

- (CHJapaneseTokenizationAndConversionStep)initWithMecabra:(id)mecabra wordLanguageModel:(void *)model ovsStringChecker:(id)checker promoteKanaConversion:(BOOL)conversion
{
  mecabraCopy = mecabra;
  checkerCopy = checker;
  v17.receiver = self;
  v17.super_class = CHJapaneseTokenizationAndConversionStep;
  v13 = [(CHJapaneseTokenizationAndConversionStep *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mecabraWrapper, mecabra);
    v14->_mecabraContextRef = MecabraContextCreateMutable();
    if (model)
    {
      CFRetain(model);
    }

    mCFObject = v14->_wordLanguageModel.mCFObject;
    v14->_wordLanguageModel.mCFObject = model;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    v14->_promoteKanaConversion = conversion;
    objc_storeStrong(&v14->_ovsStringChecker, checker);
  }

  return v14;
}

- (id)process:(id)process options:(id)options
{
  v505 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHJapaneseTokenizationAndConversionStep is running", buf, 2u);
  }

  v465 = objc_msgSend_result(processCopy, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_string(MEMORY[0x1E696AD60], v11, v12, v13, v14, v15);
  v502[0] = MEMORY[0x1E69E9820];
  v502[1] = 3221225472;
  v502[2] = sub_1839B0A18;
  v502[3] = &unk_1E6DDE720;
  v447 = v16;
  v503 = v447;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v465, v17, v502, v18, v19, v20);
  v446 = objc_msgSend_leftContext(processCopy, v21, v22, v23, v24, v25);
  if (objc_msgSend_length(v446, v26, v27, v28, v29, v30))
  {
    objc_msgSend_mecabra(self->_mecabraWrapper, v31, v32, v33, v34, v35, optionsCopy);
    LengthForContextString = MecabraGetLengthForContextString();
    v42 = objc_msgSend_length(v446, v37, v38, v39, v40, v41);
    v47 = objc_msgSend_substringFromIndex_(v446, v43, v42 - LengthForContextString, v44, v45, v46);
    if (objc_msgSend_length(v47, v48, v49, v50, v51, v52))
    {
      objc_msgSend_mecabra(self->_mecabraWrapper, v53, v54, v55, v56, v57);
      CandidateFromContextString = MecabraCreateCandidateFromContextString();
    }

    else
    {
      CandidateFromContextString = 0;
    }
  }

  else
  {
    CandidateFromContextString = 0;
  }

  v58 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33, v34, v35, optionsCopy);
  v64 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v59, v60, v61, v62, v63);
  v457 = objc_msgSend_componentsSeparatedByCharactersInSet_(v447, v65, v64, v66, v67, v68);

  v466 = 0;
  v74 = 0;
  while (1)
  {
    v75 = objc_msgSend_count(v457, v69, v70, v71, v72, v73);
    v80 = 0x1E695D000;
    v81 = v466;
    if (v466 >= v75)
    {
      break;
    }

    v82 = objc_msgSend_objectAtIndexedSubscript_(v457, v76, v466, v77, v78, v79);
    v463 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v82, v83, @"␠", @" ", v84, v85);

    if (!objc_msgSend_length(v463, v86, v87, v88, v89, v90))
    {
      goto LABEL_52;
    }

    if (v466)
    {
      v91 = 0;
    }

    else
    {
      v91 = CandidateFromContextString;
    }

    v92 = objc_opt_class();
    v98 = objc_msgSend_mecabra(self->_mecabraWrapper, v93, v94, v95, v96, v97);
    v461 = objc_msgSend_mecabraTokenizationAndKanaConversionForString_mecabraEngine_contextRef_leftCandidateRef_alternativeCandidateLimit_(v92, v99, v463, v98, self->_mecabraContextRef, v91, 2);
    if (!objc_msgSend_count(v461, v100, v101, v102, v103, v104))
    {
      if (qword_1EA84DC48 == -1)
      {
        v110 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_20;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v110 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
LABEL_20:
          *buf = 0;
          _os_log_impl(&dword_18366B000, v110, OS_LOG_TYPE_ERROR, "At least one phrase should be returned in Mecabra tokenization and conversion step.", buf, 2u);
        }
      }
    }

    if (!objc_msgSend_count(v461, v105, v106, v107, v108, v109))
    {
      if (qword_1EA84DC48 == -1)
      {
        v111 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_25;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v111 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
        {
LABEL_25:
          *buf = 0;
          _os_log_impl(&dword_18366B000, v111, OS_LOG_TYPE_FAULT, "At least one phrase should be returned in Mecabra tokenization and conversion step.", buf, 2u);
        }
      }
    }

    v500 = 0u;
    v501 = 0u;
    v498 = 0u;
    v499 = 0u;
    v112 = v461;
    v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v113, &v498, v504, 16, v114);
    if (!v120)
    {
      goto LABEL_51;
    }

    v121 = *v499;
    do
    {
      for (i = 0; i != v120; ++i)
      {
        if (*v499 != v121)
        {
          objc_enumerationMutation(v112);
        }

        v123 = *(*(&v498 + 1) + 8 * i);
        if (!objc_msgSend_count(v123, v115, v116, v117, v118, v119))
        {
          if (qword_1EA84DC48 == -1)
          {
            v129 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v129 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
            {
LABEL_37:
              *buf = 0;
              _os_log_impl(&dword_18366B000, v129, OS_LOG_TYPE_ERROR, "At least one candidate should be returned for each phrase in Mecabra tokenization and conversion step.", buf, 2u);
            }
          }
        }

        if (objc_msgSend_count(v123, v124, v125, v126, v127, v128))
        {
          goto LABEL_44;
        }

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v134 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_43;
          }

LABEL_42:
          *buf = 0;
          _os_log_impl(&dword_18366B000, v134, OS_LOG_TYPE_FAULT, "At least one candidate should be returned for each phrase in Mecabra tokenization and conversion step.", buf, 2u);
          goto LABEL_43;
        }

        v134 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v134, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_42;
        }

LABEL_43:

LABEL_44:
        objc_msgSend_addObject_(v58, v130, v123, v131, v132, v133);
        if (v74)
        {
          v74 = 1;
        }

        else
        {
          v135 = objc_msgSend_lastObject(v58, v115, v116, v117, v118, v119);
          v74 = objc_msgSend_count(v135, v136, v137, v138, v139, v140) > 1;
        }
      }

      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v112, v115, &v498, v504, 16, v119);
    }

    while (v120);
LABEL_51:

LABEL_52:
    ++v466;
  }

  if (CandidateFromContextString)
  {
  }

  if (v74 || objc_msgSend_count(v58, v76, v81, v77, v78, v79) && (objc_msgSend_transcriptionPaths(v465, v141, v142, v143, v144, v145), v146 = objc_claimAutoreleasedReturnValue(), objc_msgSend_firstObject(v146, v147, v148, v149, v150, v151), v152 = objc_claimAutoreleasedReturnValue(), v157 = objc_msgSend_tokenCountInTranscriptionPath_(v465, v153, v152, v154, v155, v156), v152, v146, v80 = 0x1E695D000uLL, objc_msgSend_count(v58, v158, v159, v160, v161, v162) != v157))
  {
    v163 = objc_msgSend_array(*(v80 + 3952), v76, v81, v77, v78, v79);
    v464 = objc_msgSend_array(*(v80 + 3952), v164, v165, v166, v167, v168);
    for (j = 0; ; j = v467 + 1)
    {
      v175 = objc_msgSend_transcriptionPaths(v465, v169, v170, v171, v172, v173);
      v467 = j;
      v181 = j < objc_msgSend_count(v175, v176, v177, v178, v179, v180);

      if (!v181)
      {
        v437 = objc_msgSend_result(processCopy, v182, v183, v184, v185, v186);
        v441 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v437, v438, v163, v464, v439, v440);
        if (processCopy)
        {
          objc_storeStrong(processCopy + 3, v441);
        }

        break;
      }

      v187 = objc_msgSend_transcriptionPaths(v465, v182, v183, v184, v185, v186);
      v456 = objc_msgSend_objectAtIndexedSubscript_(v187, v188, v467, v189, v190, v191);

      v454 = objc_msgSend_array(MEMORY[0x1E695DF70], v192, v193, v194, v195, v196);
      v453 = objc_msgSend_array(MEMORY[0x1E695DF70], v197, v198, v199, v200, v201);
      v452 = objc_msgSend_array(MEMORY[0x1E695DF70], v202, v203, v204, v205, v206);
      v450 = objc_msgSend_array(MEMORY[0x1E695DF70], v207, v208, v209, v210, v211);
      v449 = objc_msgSend_array(MEMORY[0x1E695DF70], v212, v213, v214, v215, v216);
      v451 = objc_msgSend_array(MEMORY[0x1E695DF70], v217, v218, v219, v220, v221);
      v497[0] = 0;
      v497[1] = v497;
      v497[2] = 0x2020000000;
      v497[3] = 0;
      v496[0] = 0;
      v496[1] = v496;
      v496[2] = 0x2020000000;
      v496[3] = 0;
      v495[0] = 0;
      v495[1] = v495;
      v495[2] = 0x2020000000;
      v226 = objc_msgSend_objectAtIndexedSubscript_(v58, v222, 0, v223, v224, v225);
      v232 = objc_msgSend_firstObject(v226, v227, v228, v229, v230, v231);
      v238 = objc_msgSend_length(v232, v233, v234, v235, v236, v237);

      v495[3] = v238;
      *buf = 0;
      v490 = buf;
      v491 = 0x3032000000;
      v492 = sub_183996F80;
      v493 = sub_183996F90;
      v494 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v239, &stru_1EF1C0318, v240, v241, v242);
      v483 = 0;
      v484 = &v483;
      v485 = 0x3032000000;
      v486 = sub_183996F80;
      v487 = sub_183996F90;
      v488 = 0;
      v248 = objc_msgSend_tokenColumnCount(v465, v243, v244, v245, v246, v247);
      v468[0] = MEMORY[0x1E69E9820];
      v468[1] = 3221225472;
      v468[2] = sub_1839B0B14;
      v468[3] = &unk_1E6DE0B50;
      v482 = v467;
      v477 = &v483;
      v455 = v452;
      v469 = v455;
      v249 = v451;
      v470 = v249;
      v250 = v449;
      v471 = v250;
      v251 = v454;
      v472 = v251;
      v462 = v450;
      v473 = v462;
      v252 = v453;
      v478 = v496;
      v479 = v495;
      v480 = buf;
      v460 = v252;
      v474 = v252;
      selfCopy = self;
      v476 = v58;
      v481 = v497;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v465, v253, v456, 0, v248, v468);
      if (!v467)
      {
        if (objc_msgSend_count(v455, v254, v255, v256, v257, v258))
        {
          for (k = 0; k < objc_msgSend_count(v249, v259, v260, v261, v262, v263); ++k)
          {
            while (objc_msgSend_count(v250, v265, v266, v267, v268, v269) <= k)
            {
              v275 = objc_msgSend_mutableCopy(v251, v270, v271, v272, v273, v274);
              objc_msgSend_addObject_(v250, v276, v275, v277, v278, v279);
            }

            v280 = objc_msgSend_objectAtIndexedSubscript_(v249, v270, k, v272, v273, v274);
            v286 = objc_msgSend_count(v280, v281, v282, v283, v284, v285) == 0;

            if (!v286)
            {
              v287 = objc_msgSend_objectAtIndexedSubscript_(v249, v259, k, v261, v262, v263);
              v292 = objc_msgSend_objectAtIndexedSubscript_(v250, v288, k, v289, v290, v291);
              sub_183992A0C(CHPostprocessingStep, v287, v462, v292, 0);
            }
          }

          sub_183992A0C(CHPostprocessingStep, v455, v462, v251, v460);
        }

        if (!objc_msgSend_count(v460, v259, v260, v261, v262, v263))
        {
          v255 = v484[5];
          if (v255)
          {
            objc_msgSend_addObject_(v460, v254, v255, v256, v257, v258);
          }
        }
      }

      if (self && self->_promoteKanaConversion)
      {
        if (objc_msgSend_count(v251, v254, v255, v256, v257, v258))
        {
          objc_msgSend_addObject_(v163, v293, v251, v295, v296, v297);
          v303 = objc_msgSend_transcriptionPathScores(v465, v298, v299, v300, v301, v302);
          v308 = objc_msgSend_objectAtIndexedSubscript_(v303, v304, v467, v305, v306, v307);
          v314 = objc_msgSend_copy(v308, v309, v310, v311, v312, v313);
          objc_msgSend_addObject_(v464, v315, v314, v316, v317, v318);
        }

        if (!objc_msgSend_count(v460, v293, v294, v295, v296, v297) || (objc_msgSend_isEqual_(v460, v319, v251, v321, v322, v323) & 1) != 0)
        {
          goto LABEL_90;
        }

        objc_msgSend_addObject_(v163, v319, v460, v321, v322, v323);
        v329 = objc_msgSend_transcriptionPathScores(v465, v324, v325, v326, v327, v328);
        v334 = objc_msgSend_objectAtIndexedSubscript_(v329, v330, v467, v331, v332, v333);
        v340 = objc_msgSend_copy(v334, v335, v336, v337, v338, v339);
        objc_msgSend_addObject_(v464, v341, v340, v342, v343, v344);
      }

      else
      {
        if (objc_msgSend_count(v460, v254, v255, v256, v257, v258))
        {
          objc_msgSend_addObject_(v163, v345, v460, v347, v348, v349);
          v355 = objc_msgSend_transcriptionPathScores(v465, v350, v351, v352, v353, v354);
          v360 = objc_msgSend_objectAtIndexedSubscript_(v355, v356, v467, v357, v358, v359);
          v366 = objc_msgSend_copy(v360, v361, v362, v363, v364, v365);
          objc_msgSend_addObject_(v464, v367, v366, v368, v369, v370);
        }

        if (!objc_msgSend_count(v251, v345, v346, v347, v348, v349) || (objc_msgSend_isEqual_(v251, v319, v460, v321, v322, v323) & 1) != 0)
        {
          goto LABEL_90;
        }

        objc_msgSend_addObject_(v163, v319, v251, v321, v322, v323);
        v329 = objc_msgSend_transcriptionPathScores(v465, v371, v372, v373, v374, v375);
        v334 = objc_msgSend_objectAtIndexedSubscript_(v329, v376, v467, v377, v378, v379);
        v340 = objc_msgSend_copy(v334, v380, v381, v382, v383, v384);
        objc_msgSend_addObject_(v464, v385, v340, v386, v387, v388);
      }

LABEL_90:
      for (m = 0; m < objc_msgSend_count(v250, v319, v320, v321, v322, v323); ++m)
      {
        v394 = objc_msgSend_objectAtIndexedSubscript_(v250, v390, m, v391, v392, v393);
        if (objc_msgSend_count(v394, v395, v396, v397, v398, v399))
        {
          v405 = 0;
          while (v405 < objc_msgSend_count(v163, v400, v401, v402, v403, v404))
          {
            v410 = objc_msgSend_objectAtIndexedSubscript_(v163, v406, v405, v407, v408, v409);
            isEqual = objc_msgSend_isEqual_(v394, v411, v410, v412, v413, v414);

            ++v405;
            if (isEqual)
            {
              goto LABEL_98;
            }
          }

          objc_msgSend_addObject_(v163, v406, v394, v407, v408, v409);
          v421 = objc_msgSend_transcriptionPathScores(v465, v416, v417, v418, v419, v420);
          v426 = objc_msgSend_objectAtIndexedSubscript_(v421, v422, v467, v423, v424, v425);
          v432 = objc_msgSend_copy(v426, v427, v428, v429, v430, v431);
          objc_msgSend_addObject_(v464, v433, v432, v434, v435, v436);
        }

LABEL_98:
      }

      _Block_object_dispose(&v483, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(v495, 8);
      _Block_object_dispose(v496, 8);
      _Block_object_dispose(v497, 8);
    }
  }

  v442 = processCopy;

  return processCopy;
}

- (void)dealloc
{
  if (self->_mecabraContextRef)
  {
    MecabraContextRelease();
    self->_mecabraContextRef = 0;
  }

  mecabraWrapper = self->_mecabraWrapper;
  self->_mecabraWrapper = 0;

  v4.receiver = self;
  v4.super_class = CHJapaneseTokenizationAndConversionStep;
  [(CHJapaneseTokenizationAndConversionStep *)&v4 dealloc];
}

@end