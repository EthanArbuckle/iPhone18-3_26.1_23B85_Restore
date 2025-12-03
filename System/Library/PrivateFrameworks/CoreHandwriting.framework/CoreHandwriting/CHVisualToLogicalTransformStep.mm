@interface CHVisualToLogicalTransformStep
- (CHVisualToLogicalTransformStep)initWithBaseDirection:(int)direction mode:(int)mode;
- (id)process:(id)process options:(id)options;
@end

@implementation CHVisualToLogicalTransformStep

- (CHVisualToLogicalTransformStep)initWithBaseDirection:(int)direction mode:(int)mode
{
  v5 = *&direction;
  v11.receiver = self;
  v11.super_class = CHVisualToLogicalTransformStep;
  v6 = [(CHVisualToLogicalTransformStep *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_bidiTransform = v5;
    v6->_mode = mode;
    v8 = objc_alloc_init(MEMORY[0x1E69D9D38]);
    isa = v7[1].super.super.super.isa;
    v7[1].super.super.super.isa = v8;
  }

  return v7;
}

- (id)process:(id)process options:(id)options
{
  v887 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v842 = processCopy;
  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHVisualToLogicalTransformStep is running", buf, 2u);
  }

  bidiTransform = self->_bidiTransform;
  if ((bidiTransform & 0xFFFFFFFFFFFFFFFELL) != 0xFE || self->_mode != 4)
  {
    goto LABEL_13;
  }

  v12 = processCopy;
  *&v877 = 0;
  *(&v877 + 1) = &v877;
  v878 = 0x2020000000uLL;
  *&v870 = 0;
  *(&v870 + 1) = &v870;
  *&v871 = 0x2020000000;
  *(&v871 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  *&v866 = 0;
  *(&v866 + 1) = &v866;
  *&v867 = 0x2020000000;
  *(&v867 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v18 = objc_msgSend_result(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_result(v12, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_transcriptionPaths(v24, v25, v26, v27, v28, v29);
  v35 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0, v32, v33, v34);
  v41 = objc_msgSend_result(v12, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_tokenColumnCount(v41, v42, v43, v44, v45, v46);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1839A4810;
  v882 = &unk_1E6DE0998;
  v884 = &v877;
  selfCopy = self;
  v885 = &v866;
  v886 = &v870;
  objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v18, v48, v35, 0, v47, buf);

  if ((self->_bidiTransform & 0xFFFFFFFFFFFFFFFELL) == 0xFE)
  {
    self->_bidiTransform = *(*(&v877 + 1) + 24);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v49 = qword_1EA84DC58;
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v49 = qword_1EA84DC58;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
LABEL_11:
    v50 = self->_bidiTransform;
    LODWORD(v874) = 134217984;
    *(&v874 + 4) = v50;
    _os_log_impl(&dword_18366B000, v49, OS_LOG_TYPE_DEBUG, "CHVisualToLogicalTransformStep resolved base direction to %li", &v874, 0xCu);
  }

LABEL_12:

  _Block_object_dispose(&v866, 8);
  _Block_object_dispose(&v870, 8);
  _Block_object_dispose(&v877, 8);

LABEL_13:
  v816 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v815 = objc_msgSend_array(MEMORY[0x1E695DF70], v51, v52, v53, v54, v55);
  v840 = 0;
  while (1)
  {
    v61 = objc_msgSend_result(v842, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_transcriptionPaths(v61, v62, v63, v64, v65, v66);
    v73 = v840 < objc_msgSend_count(v67, v68, v69, v70, v71, v72);

    if (!v73)
    {
      break;
    }

    v79 = objc_msgSend_result(v842, v74, v75, v76, v77, v78);
    v85 = objc_msgSend_transcriptionPaths(v79, v80, v81, v82, v83, v84);
    v834 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, v840, v87, v88, v89);

    v825 = objc_msgSend_array(MEMORY[0x1E695DF70], v90, v91, v92, v93, v94);
    v838 = objc_msgSend_array(MEMORY[0x1E695DF70], v95, v96, v97, v98, v99);
    v828 = objc_msgSend_string(MEMORY[0x1E696AEC0], v100, v101, v102, v103, v104);
    v843 = objc_msgSend_string(MEMORY[0x1E696AEC0], v105, v106, v107, v108, v109);
    v835 = objc_msgSend_array(MEMORY[0x1E695DF70], v110, v111, v112, v113, v114);
    v836 = objc_msgSend_array(MEMORY[0x1E695DF70], v115, v116, v117, v118, v119);
    v824 = objc_msgSend_array(MEMORY[0x1E695DF70], v120, v121, v122, v123, v124);
    v841 = objc_msgSend_array(MEMORY[0x1E695DF70], v125, v126, v127, v128, v129);
    v830 = objc_msgSend_array(MEMORY[0x1E695DF70], v130, v131, v132, v133, v134);
    *&v874 = 0;
    *(&v874 + 1) = &v874;
    v875 = 0x2020000000;
    v876 = 32;
    v145 = objc_msgSend_leftContext(v842, v135, v136, v137, v138, v139);
    if (v145)
    {
      v146 = objc_msgSend_leftContext(v842, v140, v141, v142, v143, v144);
      v152 = objc_msgSend_length(v146, v147, v148, v149, v150, v151) == 0;

      if (!v152)
      {
        v153 = objc_msgSend_leftContext(v842, v140, v141, v142, v143, v144);
        v159 = objc_msgSend_leftContext(v842, v154, v155, v156, v157, v158);
        v165 = objc_msgSend_length(v159, v160, v161, v162, v163, v164);
        v170 = objc_msgSend_characterAtIndex_(v153, v166, v165 - 1, v167, v168, v169);
        *(*(&v874 + 1) + 24) = v170;
      }
    }

    v171 = objc_msgSend_result(v842, v140, v141, v142, v143, v144);
    v177 = objc_msgSend_result(v842, v172, v173, v174, v175, v176);
    v183 = objc_msgSend_tokenColumnCount(v177, v178, v179, v180, v181, v182);
    v863[0] = MEMORY[0x1E69E9820];
    v863[1] = 3221225472;
    v863[2] = sub_1839A65C0;
    v863[3] = &unk_1E6DE09C0;
    v863[4] = self;
    v865 = &v874;
    v184 = v824;
    v864 = v184;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v171, v185, v834, 0, v183, v863);

    v832 = v184;
    v851 = objc_msgSend_array(MEMORY[0x1E695DF70], v186, v187, v188, v189, v190);
    v845 = objc_msgSend_string(MEMORY[0x1E696AD60], v191, v192, v193, v194, v195);
    v854 = objc_msgSend_array(MEMORY[0x1E695DF70], v196, v197, v198, v199, v200);
    v879 = 0u;
    v880 = 0u;
    v877 = 0u;
    v878 = 0u;
    obj = v832;
    v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v201, &v877, buf, 16, v202);
    if (v208)
    {
      v209 = 0;
      v849 = *v878;
      do
      {
        for (i = 0; i != v208; ++i)
        {
          if (*v878 != v849)
          {
            objc_enumerationMutation(obj);
          }

          v211 = *(*(&v877 + 1) + 8 * i);
          v217 = objc_msgSend_orderedSet(MEMORY[0x1E695DFA0], v203, v204, v205, v206, v207);
          v218 = 0;
          for (j = v209; ; ++j)
          {
            v220 = objc_msgSend_string(v211, v212, v213, v214, v215, v216);
            v226 = v218 < objc_msgSend_length(v220, v221, v222, v223, v224, v225);

            if (!v226)
            {
              break;
            }

            v232 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v227, j, v229, v230, v231);
            objc_msgSend_addObject_(v217, v233, v232, v234, v235, v236);

            ++v218;
          }

          v237 = objc_msgSend_copy(v217, v227, v228, v229, v230, v231);
          objc_msgSend_addObject_(v854, v238, v237, v239, v240, v241);

          v247 = objc_msgSend_string(v211, v242, v243, v244, v245, v246);
          objc_msgSend_addObject_(v851, v248, v247, v249, v250, v251);

          v257 = objc_msgSend_string(v211, v252, v253, v254, v255, v256);
          v263 = objc_msgSend_length(v257, v258, v259, v260, v261, v262);

          v209 += v263 + 1;
        }

        v208 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v203, &v877, buf, 16, v207);
      }

      while (v208);
    }

    v268 = objc_msgSend_componentsJoinedByString_(v851, v264, @" ", v265, v266, v267);
    objc_msgSend_setString_(v845, v269, v268, v270, v271, v272);

    v278 = objc_msgSend_copy(v845, v273, v274, v275, v276, v277);
    v279 = v278;
    v285 = objc_msgSend_copy(v854, v280, v281, v282, v283, v284);
    v286 = v285;

    v833 = v278;
    v827 = v285;

    v287 = self->_bidiTransform;
    v288 = 4;
    if (v287 != 255)
    {
      v288 = 0;
    }

    if (v287 == 254)
    {
      v288 = 3;
    }

    v289 = 2;
    if (v287 != 1)
    {
      v289 = 0;
    }

    if (!v287)
    {
      v289 = 1;
    }

    if (v287 <= 253)
    {
      v290 = v289;
    }

    else
    {
      v290 = v288;
    }

    v862 = 1;
    v291 = self[1].super.super.super.isa;
    v860 = v830;
    v861 = v838;
    v859 = v843;
    v829 = objc_msgSend_transformVisualToLogical_visualDirectionality_logicalBaseDirectionality_baseDirectionalityPredictionMode_outTokenizedLogicalOrderIndexes_outReorderingPermutation_outMirroredVisualString_outLogicalBaseDirection_(v291, v292, v833, 2, v290, 0, &v861, &v860, &v859, &v862);
    v826 = v861;

    v850 = v860;
    v831 = v859;

    self->_bidiTransform = v862;
    if (!v829)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v309 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v309, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v309, OS_LOG_TYPE_ERROR, "CHVisualToLogicalTransformStep encountered ubidi failure", buf, 2u);
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v310 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v310, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v310, OS_LOG_TYPE_FAULT, "CHVisualToLogicalTransformStep encountered ubidi failure", buf, 2u);
      }

      v814 = v842;
      goto LABEL_106;
    }

    v846 = v827;
    v820 = v826;
    v844 = v831;
    v822 = objc_msgSend_array(MEMORY[0x1E695DF70], v293, v294, v295, v296, v297);
    v821 = objc_msgSend_array(MEMORY[0x1E695DF70], v298, v299, v300, v301, v302);
    v308 = self->_bidiTransform;
    if (v308 == 1)
    {
      isNaturallyRTL = 1;
    }

    else if (v308 == 255)
    {
      isNaturallyRTL = objc_msgSend__isNaturallyRTL(v844, v303, v304, v305, v306, v307);
    }

    else
    {
      isNaturallyRTL = 0;
    }

    v868 = 0u;
    v869 = 0u;
    v866 = 0u;
    v867 = 0u;
    v839 = v820;
    v817 = objc_msgSend_countByEnumeratingWithState_objects_count_(v839, v311, &v866, &v877, 16, v312);
    if (v817)
    {
      v819 = *v867;
      do
      {
        v823 = 0;
        while (2)
        {
          if (*v867 != v819)
          {
            objc_enumerationMutation(v839);
          }

          v855 = 0;
          v318 = *(*(&v866 + 1) + 8 * v823);
          while (1)
          {
            if (v855 >= objc_msgSend_count(v846, v313, v314, v315, v316, v317))
            {
              goto LABEL_82;
            }

            v852 = objc_msgSend_objectAtIndexedSubscript_(v846, v319, v855, v320, v321, v322);
            v328 = objc_msgSend_array(v318, v323, v324, v325, v326, v327);
            v333 = objc_msgSend_sortedArrayUsingSelector_(v328, v329, sel_compare_, v330, v331, v332);

            v339 = objc_msgSend_array(v852, v334, v335, v336, v337, v338);
            v344 = objc_msgSend_sortedArrayUsingSelector_(v339, v340, sel_compare_, v341, v342, v343);

            if (objc_msgSend_isEqualToArray_(v333, v345, v344, v346, v347, v348))
            {
              break;
            }

            ++v855;
          }

          v353 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v349, v855, v350, v351, v352);
          objc_msgSend_addObject_(v822, v354, v353, v355, v356, v357);

          v358 = v844;
          v359 = v318;
          v360 = MEMORY[0x1E696AD60];
          v366 = objc_msgSend_count(v359, v361, v362, v363, v364, v365);
          v371 = objc_msgSend_stringWithCapacity_(v360, v367, v366, v368, v369, v370);
          v872 = 0u;
          v873 = 0u;
          v870 = 0u;
          v871 = 0u;
          v372 = v359;
          v380 = objc_msgSend_countByEnumeratingWithState_objects_count_(v372, v373, &v870, buf, 16, v374);
          if (v380)
          {
            v381 = *v871;
            do
            {
              for (k = 0; k != v380; ++k)
              {
                if (*v871 != v381)
                {
                  objc_enumerationMutation(v372);
                }

                v383 = objc_msgSend_unsignedIntegerValue(*(*(&v870 + 1) + 8 * k), v375, v376, v377, v378, v379);
                v387 = objc_msgSend_substringWithRange_(v358, v384, v383, 1, v385, v386);
                objc_msgSend_appendString_(v371, v388, v387, v389, v390, v391);
              }

              v380 = objc_msgSend_countByEnumeratingWithState_objects_count_(v372, v375, &v870, buf, 16, v379);
            }

            while (v380);
          }

          v397 = objc_msgSend_copy(v371, v392, v393, v394, v395, v396);
          v398 = v397;
          if (objc_msgSend_isEqualToString_(v398, v399, @"اللّه", v400, v401, v402) & 1) != 0 || (objc_msgSend_isEqualToString_(v398, v403, @"اللَّه", v404, v405, v406))
          {
            v411 = @"الله";
          }

          else if (objc_msgSend_isEqualToString_(v398, v407, @"للّه", v408, v409, v410) & 1) != 0 || (objc_msgSend_isEqualToString_(v398, v421, @"للَّه", v422, v423, v424))
          {
            v411 = @"لله";
          }

          else
          {
            v411 = v398;
          }

          v412 = objc_opt_class();
          v416 = objc_msgSend_performInverseBiDiForNumeric_isRTLContext_(v412, v413, v411, isNaturallyRTL, v414, v415);

          objc_msgSend_addObject_(v821, v417, v416, v418, v419, v420);
          if (v855 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_82:

            v440 = 0;
            v431 = v835;
            v438 = v836;
            goto LABEL_83;
          }

          if (++v823 != v817)
          {
            continue;
          }

          break;
        }

        v425 = objc_msgSend_countByEnumeratingWithState_objects_count_(v839, v313, &v866, &v877, 16, v317);
        v817 = v425;
      }

      while (v425);
    }

    v431 = objc_msgSend_copy(v822, v426, v427, v428, v429, v430);
    v432 = v431;
    v438 = objc_msgSend_copy(v821, v433, v434, v435, v436, v437);
    v439 = v438;
    v440 = 1;
LABEL_83:

    v853 = v431;
    v847 = v438;

    v446 = objc_msgSend_count(obj, v441, v442, v443, v444, v445);
    if (v446 == objc_msgSend_count(v853, v447, v448, v449, v450, v451))
    {
      if (v440)
      {
        if (objc_msgSend_count(obj, v452, v453, v454, v455, v456))
        {
          v461 = objc_msgSend_objectAtIndexedSubscript_(v853, v457, 0, v458, v459, v460);
          v467 = objc_msgSend_unsignedIntegerValue(v461, v462, v463, v464, v465, v466);

          v472 = objc_msgSend_objectAtIndexedSubscript_(obj, v468, v467, v469, v470, v471);
          v856 = objc_msgSend_objectAtIndexedSubscript_(v847, v473, 0, v474, v475, v476);
          v482 = objc_msgSend_properties(v472, v477, v478, v479, v480, v481);
          v487 = objc_msgSend_objectAtIndexedSubscript_(obj, v483, 0, v484, v485, v486);
          v493 = objc_msgSend_properties(v487, v488, v489, v490, v491, v492);

          v494 = [CHTokenizedTextResultToken alloc];
          v500 = objc_msgSend_strokeIndexes(v472, v495, v496, v497, v498, v499);
          v506 = objc_msgSend_wordID(v472, v501, v502, v503, v504, v505);
          objc_msgSend_modelScore(v472, v507, v508, v509, v510, v511);
          v513 = v512;
          objc_msgSend_recognitionScore(v472, v514, v515, v516, v517, v518);
          v520 = v519;
          objc_msgSend_combinedScore(v472, v521, v522, v523, v524, v525);
          v527 = v526;
          objc_msgSend_alignmentScore(v472, v528, v529, v530, v531, v532);
          v534 = v533;
          v540 = objc_msgSend_recognizerSourceLocale(v472, v535, v536, v537, v538, v539);
          v546 = objc_msgSend_inputSources(v472, v541, v542, v543, v544, v545);
          v552 = objc_msgSend_substrokeCount(v472, v547, v548, v549, v550, v551);
          objc_msgSend_bounds(v472, v553, v554, v555, v556, v557);
          v563 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v494, v558, v856, v500, v506, v493 & 0x20 | v482 & 0xFFFFFFFFFFFFFFDFLL, v540, v546, v513, v520, v527, v534, v559, v560, v561, v562, v552);

          objc_msgSend_addObject_(v841, v564, v563, v565, v566, v567);
          for (m = 1; m < objc_msgSend_count(obj, v568, v569, v570, v571, v572); ++m)
          {
            v574 = objc_msgSend_objectAtIndexedSubscript_(v853, v457, m, v458, v459, v460);
            v580 = objc_msgSend_unsignedIntegerValue(v574, v575, v576, v577, v578, v579);

            v585 = objc_msgSend_objectAtIndexedSubscript_(obj, v581, v580, v582, v583, v584);
            v857 = objc_msgSend_objectAtIndexedSubscript_(v847, v586, m, v587, v588, v589);
            v595 = objc_msgSend_properties(v585, v590, v591, v592, v593, v594);
            v596 = [CHTokenizedTextResultToken alloc];
            v602 = objc_msgSend_strokeIndexes(v585, v597, v598, v599, v600, v601);
            v608 = objc_msgSend_wordID(v585, v603, v604, v605, v606, v607);
            objc_msgSend_modelScore(v585, v609, v610, v611, v612, v613);
            v615 = v614;
            objc_msgSend_recognitionScore(v585, v616, v617, v618, v619, v620);
            v622 = v621;
            objc_msgSend_combinedScore(v585, v623, v624, v625, v626, v627);
            v629 = v628;
            objc_msgSend_alignmentScore(v585, v630, v631, v632, v633, v634);
            v636 = v635;
            v642 = objc_msgSend_recognizerSourceLocale(v585, v637, v638, v639, v640, v641);
            v648 = objc_msgSend_inputSources(v585, v643, v644, v645, v646, v647);
            v654 = objc_msgSend_substrokeCount(v585, v649, v650, v651, v652, v653);
            objc_msgSend_bounds(v585, v655, v656, v657, v658, v659);
            v665 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v596, v660, v857, v602, v608, v595 | 0x20, v642, v648, v615, v622, v629, v636, v661, v662, v663, v664, v654);

            objc_msgSend_addObject_(v841, v666, v665, v667, v668, v669);
          }
        }

        goto LABEL_105;
      }
    }

    else
    {
      v670 = objc_msgSend_count(obj, v452, v453, v454, v455, v456);
      if (v670 != objc_msgSend_count(v853, v671, v672, v673, v674, v675))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v681 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v681, OS_LOG_TYPE_ERROR))
        {
          v687 = objc_msgSend_count(obj, v682, v683, v684, v685, v686);
          v693 = objc_msgSend_count(v853, v688, v689, v690, v691, v692);
          *buf = 134218498;
          *&buf[4] = v687;
          *&buf[12] = 2048;
          *&buf[14] = v693;
          *&buf[22] = 2112;
          v882 = v833;
          _os_log_impl(&dword_18366B000, v681, OS_LOG_TYPE_ERROR, "CHVisualToLogicalTransformStep resulted in inconsistent token mapping. visualTokensInPath count (%lu) != tokenMapping count (%lu) for visual string %@", buf, 0x20u);
        }
      }

      v694 = objc_msgSend_count(obj, v676, v677, v678, v679, v680);
      if (v694 != objc_msgSend_count(v853, v695, v696, v697, v698, v699))
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v700 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v700, OS_LOG_TYPE_FAULT))
        {
          v706 = objc_msgSend_count(obj, v701, v702, v703, v704, v705);
          v712 = objc_msgSend_count(v853, v707, v708, v709, v710, v711);
          *buf = 134218498;
          *&buf[4] = v706;
          *&buf[12] = 2048;
          *&buf[14] = v712;
          *&buf[22] = 2112;
          v882 = v833;
          _os_log_impl(&dword_18366B000, v700, OS_LOG_TYPE_FAULT, "CHVisualToLogicalTransformStep resulted in inconsistent token mapping. visualTokensInPath count (%lu) != tokenMapping count (%lu) for visual string %@", buf, 0x20u);
        }
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v882 = sub_183996F80;
    selfCopy = sub_183996F90;
    v884 = 0;
    v713 = MEMORY[0x1E696AD60];
    v714 = objc_msgSend_length(v844, v452, v453, v454, v455, v456);
    v719 = objc_msgSend_stringWithCapacity_(v713, v715, v714, v716, v717, v718);
    v725 = objc_msgSend_result(v842, v720, v721, v722, v723, v724);
    v731 = objc_msgSend_result(v842, v726, v727, v728, v729, v730);
    v737 = objc_msgSend_tokenColumnCount(v731, v732, v733, v734, v735, v736);
    v858[0] = MEMORY[0x1E69E9820];
    v858[1] = 3221225472;
    v858[2] = sub_1839A6BCC;
    v858[3] = &unk_1E6DDC5D0;
    v858[4] = buf;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v725, v738, v834, 0, v737, v858);

    for (n = 0; n < objc_msgSend_count(v850, v739, v740, v741, v742, v743); ++n)
    {
      v749 = objc_msgSend_objectAtIndexedSubscript_(v850, v745, n, v746, v747, v748);
      v755 = objc_msgSend_integerValue(v749, v750, v751, v752, v753, v754);
      v759 = objc_msgSend_substringWithRange_(v844, v756, v755, 1, v757, v758);
      objc_msgSend_appendString_(v719, v760, v759, v761, v762, v763);
    }

    objc_msgSend_setString_(*(*&buf[8] + 40), v745, v719, v746, v747, v748);
    v769 = objc_msgSend_copy(*(*&buf[8] + 40), v764, v765, v766, v767, v768);
    objc_msgSend_addObject_(v841, v770, v769, v771, v772, v773);

    _Block_object_dispose(buf, 8);
LABEL_105:
    objc_msgSend_addObject_(v816, v457, v841, v458, v459, v460);
    v779 = objc_msgSend_result(v842, v774, v775, v776, v777, v778);
    v785 = objc_msgSend_transcriptionPathScores(v779, v780, v781, v782, v783, v784);
    v790 = objc_msgSend_objectAtIndexedSubscript_(v785, v786, v840, v787, v788, v789);
    objc_msgSend_addObject_(v815, v791, v790, v792, v793, v794);

    v835 = v853;
    v836 = v847;
LABEL_106:

    _Block_object_dispose(&v874, 8);
    ++v840;
    if (!v829)
    {
      goto LABEL_113;
    }
  }

  v795 = objc_msgSend_result(v842, v74, v75, v76, v77, v78);
  v799 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v795, v796, v816, v815, v797, v798);
  if (v842)
  {
    objc_storeStrong(v842 + 3, v799);
  }

  v800 = self->_bidiTransform;
  v806 = objc_msgSend_result(v842, v801, v802, v803, v804, v805);
  objc_msgSend_setBaseWritingDirection_(v806, v807, v800, v808, v809, v810);

  if (self->_mode == 6)
  {
    self->_bidiTransform = bidiTransform;
  }

  v814 = v842;
LABEL_113:

  return v814;
}

@end