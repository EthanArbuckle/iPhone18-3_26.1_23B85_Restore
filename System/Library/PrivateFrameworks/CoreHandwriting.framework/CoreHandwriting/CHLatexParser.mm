@interface CHLatexParser
- (CHLatexParser)initWithGrammar:(id)grammar parseNormalizedLatex:(BOOL)latex;
- (id)_initializeParseTableForNormalizedLatex:(id)latex;
- (id)_initializeParseTableForPlainText:(id)text;
- (id)_joinNumbers:(id)numbers;
- (id)parseLatex:(id)latex;
- (id)parseLatex:(id)latex outCorrectedLatex:(id *)correctedLatex;
@end

@implementation CHLatexParser

- (CHLatexParser)initWithGrammar:(id)grammar parseNormalizedLatex:(BOOL)latex
{
  grammarCopy = grammar;
  v11.receiver = self;
  v11.super_class = CHLatexParser;
  v8 = [(CHLatexParser *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_grammar, grammar);
    v9->_parseNormalizedLatex = latex;
  }

  return v9;
}

- (id)_initializeParseTableForNormalizedLatex:(id)latex
{
  v235 = *MEMORY[0x1E69E9840];
  latexCopy = latex;
  v3 = [CHParseTable alloc];
  v9 = objc_msgSend_count(latexCopy, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_grammar(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_nonTerminals(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
  v225 = objc_msgSend_initWithInputLength_grammarSize_(v3, v28, v9, v27, v29, v30);

  v221 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  objc_msgSend_setMaximumFractionDigits_(v221, v31, 9, v32, v33, v34);
  objc_msgSend_setRoundingMode_(v221, v35, 6, v36, v37, v38);
  v228 = 0;
  for (i = 0; i < objc_msgSend_count(latexCopy, v39, v40, v41, v42, v43); ++i)
  {
    v48 = objc_msgSend_objectAtIndexedSubscript_(latexCopy, v44, i, v45, v46, v47);
    v227 = objc_msgSend_length(v48, v49, v50, v51, v52, v53);
    v222 = objc_msgSend_length(v48, v54, v55, v56, v57, v58);
    v223 = objc_msgSend_numberFromString_(v221, v59, v48, v60, v61, v62);
    if (v223)
    {
      v68 = [CHTerminal alloc];
      v71 = objc_msgSend_initWithName_inputRange_(v68, v69, v48, v228, v227, v70);
      v72 = [CHNonTerminal alloc];
      v75 = objc_msgSend_initWithName_leftNode_rightNode_(v72, v73, @"Number", v71, 0, v74);
      v76 = [CHParseTableCell alloc];
      inited = objc_msgSend_initNonTerminal_range_(v76, v77, v75, i, 1, v78);
      v80 = [CHProductionRule alloc];
      v84 = objc_msgSend_initWithLeftNode_rightNode_(v80, v81, @"Number", v48, v82, v83);
      objc_msgSend_setRule_(inited, v85, v84, v86, v87, v88);

      objc_msgSend_setTerminal_(inited, v89, v71, v90, v91, v92);
      objc_msgSend_setProbability_(inited, v93, v94, v95, v96, v97, 1.0);
      v98 = [CHParseTree alloc];
      v104 = objc_msgSend_grammar(self, v99, v100, v101, v102, v103);
      v109 = objc_msgSend_initWithGrammar_(v98, v105, v104, v106, v107, v108);
      objc_msgSend_setParseTree_(inited, v110, v109, v111, v112, v113);

      v119 = objc_msgSend_parseTree(inited, v114, v115, v116, v117, v118);
      objc_msgSend_setRoot_(v119, v120, v75, v121, v122, v123);

      objc_msgSend_addCell_(v225, v124, inited, v125, v126, v127);
    }

    else
    {
      v232 = 0u;
      v233 = 0u;
      v230 = 0u;
      v231 = 0u;
      v128 = objc_msgSend_grammar(self, v63, v64, v65, v66, v67);
      v71 = objc_msgSend_terminalProductions(v128, v129, v130, v131, v132, v133);

      v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v134, &v230, v234, 16, v135);
      if (v141)
      {
        v142 = *v231;
        do
        {
          for (j = 0; j != v141; ++j)
          {
            if (*v231 != v142)
            {
              objc_enumerationMutation(v71);
            }

            v144 = *(*(&v230 + 1) + 8 * j);
            v145 = objc_msgSend_rightNode1(v144, v136, v137, v138, v139, v140);
            isEqualToString = objc_msgSend_isEqualToString_(v145, v146, v48, v147, v148, v149);

            if (isEqualToString)
            {
              objc_msgSend_probability(v144, v136, v137, v138, v139, v140);
              v152 = v151;
              if (v151 > 0.0)
              {
                v153 = [CHTerminal alloc];
                v159 = objc_msgSend_rightNode1(v144, v154, v155, v156, v157, v158);
                v162 = objc_msgSend_initWithName_inputRange_(v153, v160, v159, v228, v227, v161);

                v163 = [CHNonTerminal alloc];
                v169 = objc_msgSend_leftNode(v144, v164, v165, v166, v167, v168);
                v172 = objc_msgSend_initWithName_leftNode_rightNode_(v163, v170, v169, v162, 0, v171);

                v173 = [CHParseTableCell alloc];
                v176 = objc_msgSend_initNonTerminal_range_(v173, v174, v172, i, 1, v175);
                objc_msgSend_setRule_(v176, v177, v144, v178, v179, v180);
                objc_msgSend_setTerminal_(v176, v181, v162, v182, v183, v184);
                objc_msgSend_setProbability_(v176, v185, v186, v187, v188, v189, v152);
                v190 = [CHParseTree alloc];
                v196 = objc_msgSend_grammar(self, v191, v192, v193, v194, v195);
                v201 = objc_msgSend_initWithGrammar_(v190, v197, v196, v198, v199, v200);
                objc_msgSend_setParseTree_(v176, v202, v201, v203, v204, v205);

                v211 = objc_msgSend_parseTree(v176, v206, v207, v208, v209, v210);
                objc_msgSend_setRoot_(v211, v212, v172, v213, v214, v215);

                objc_msgSend_addCell_(v225, v216, v176, v217, v218, v219);
              }
            }
          }

          v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v136, &v230, v234, 16, v140);
        }

        while (v141);
      }
    }

    v228 += v222;
  }

  return v225;
}

- (id)_initializeParseTableForPlainText:(id)text
{
  textCopy = text;
  v5 = [CHParseTable alloc];
  v11 = objc_msgSend_length(textCopy, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_grammar(self, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_nonTerminals(v17, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_count(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_initWithInputLength_grammarSize_(v5, v30, v11, v29, v31, v32);

  v39 = objc_msgSend_length(textCopy, v34, v35, v36, v37, v38);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_18386D288;
  v45[3] = &unk_1E6DDF1A0;
  v45[4] = self;
  v40 = v33;
  v46 = v40;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(textCopy, v41, 0, v39, 2, v45);
  v42 = v46;
  v43 = v40;

  return v40;
}

- (id)_joinNumbers:(id)numbers
{
  numbersCopy = numbers;
  v9 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v4, v5, v6, v7, v8);
  v14 = objc_msgSend_componentsSeparatedByCharactersInSet_(numbersCopy, v10, v9, v11, v12, v13);

  v20 = objc_msgSend_string(MEMORY[0x1E696AD60], v15, v16, v17, v18, v19);
  if (objc_msgSend_count(v14, v21, v22, v23, v24, v25))
  {
    v30 = objc_msgSend_objectAtIndexedSubscript_(v14, v26, 0, v27, v28, v29);
    objc_msgSend_appendString_(v20, v31, v30, v32, v33, v34);

    for (i = 1; ; ++i)
    {
      if (i >= objc_msgSend_count(v14, v35, v36, v37, v38, v39))
      {
        goto LABEL_10;
      }

      v45 = objc_msgSend_objectAtIndexedSubscript_(v14, v41, i, v42, v43, v44);
      if ((sub_18386D7D4(v45) & 1) == 0)
      {
        break;
      }

      v50 = objc_msgSend_objectAtIndexedSubscript_(v14, v46, i - 1, v47, v48, v49);
      v51 = sub_18386D7D4(v50);

      if ((v51 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      v56 = objc_msgSend_objectAtIndexedSubscript_(v14, v52, i, v53, v54, v55);
      objc_msgSend_appendString_(v20, v57, v56, v58, v59, v60);
    }

LABEL_8:
    objc_msgSend_appendString_(v20, v52, @" ", v53, v54, v55);
    goto LABEL_9;
  }

LABEL_10:

  return v20;
}

- (id)parseLatex:(id)latex
{
  v5 = objc_msgSend_parseLatex_outCorrectedLatex_(self, a2, latex, 0, v3, v4);

  return v5;
}

- (id)parseLatex:(id)latex outCorrectedLatex:(id *)correctedLatex
{
  v515 = *MEMORY[0x1E69E9840];
  latexCopy = latex;
  selfCopy = self;
  v455 = objc_msgSend__joinNumbers_(self, v7, latexCopy, v8, v9, v10);

  if (correctedLatex)
  {
    *correctedLatex = v455;
  }

  v452 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13, v14, v15);
  v21 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v16, v17, v18, v19, v20);
  v26 = objc_msgSend_componentsSeparatedByCharactersInSet_(v455, v22, v21, v23, v24, v25);

  v505 = 0u;
  v506 = 0u;
  v503 = 0u;
  v504 = 0u;
  obj = v26;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v503, v514, 16, v28);
  if (v34)
  {
    v35 = 0;
    v466 = *v504;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v504 != v466)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v503 + 1) + 8 * i);
        if (objc_msgSend_length(v37, v29, v30, v31, v32, v33))
        {
          objc_msgSend_length(v37, v29, v30, v31, v32, v33);
          operator new();
        }

        ++v35;
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v503, v514, 16, v33);
    }

    while (v34);
  }

  if (objc_msgSend_parseNormalizedLatex(selfCopy, v38, v39, v40, v41, v42))
  {
    v454 = objc_msgSend_count(obj, v43, v44, v45, v46, v47);
    v56 = objc_msgSend__initializeParseTableForNormalizedLatex_(selfCopy, v48, obj, v49, v50, v51);
  }

  else
  {
    v57 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v455, v43, @" ", &stru_1EF1C0318, v46, v47);
    v454 = objc_msgSend_length(v57, v58, v59, v60, v61, v62);
    v56 = objc_msgSend__initializeParseTableForPlainText_(selfCopy, v63, v57, v64, v65, v66);
  }

  v463 = v56;
  if (v454 >= 2)
  {
    v462 = 2;
    do
    {
      v213 = 1;
      do
      {
        v442 = objc_msgSend_cellsByRangeForLength_(v56, v52, v213, v53, v54, v55);
        v435 = v213;
        v444 = objc_msgSend_cellsByRangeForLength_(v56, v214, v462 - v213, v215, v216, v217);
        v501 = 0u;
        v502 = 0u;
        v499 = 0u;
        v500 = 0u;
        v443 = v442;
        v436 = objc_msgSend_countByEnumeratingWithState_objects_count_(v443, v218, &v499, v513, 16, v219);
        if (!v436)
        {
          goto LABEL_132;
        }

        v438 = *v500;
        do
        {
          for (j = 0; j != v436; ++j)
          {
            if (*v500 != v438)
            {
              objc_enumerationMutation(v443);
            }

            v441 = *(*(&v499 + 1) + 8 * j);
            v225 = objc_msgSend_firstObject(v441, v220, v221, v222, v223, v224);
            v231 = objc_msgSend_inputRange(v225, v226, v227, v228, v229, v230);
            v450 = v232;
            v451 = v231;

            v497 = 0u;
            v498 = 0u;
            v495 = 0u;
            v496 = 0u;
            v447 = v444;
            v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v447, v233, &v495, v512, 16, v234);
            if (v446)
            {
              v448 = *v496;
              do
              {
                for (k = 0; k != v446; ++k)
                {
                  if (*v496 != v448)
                  {
                    objc_enumerationMutation(v447);
                  }

                  v453 = *(*(&v495 + 1) + 8 * k);
                  v240 = objc_msgSend_firstObject(v453, length, v236, v237, v238, v239);
                  v246 = objc_msgSend_inputRange(v240, v241, v242, v243, v244, v245);
                  v248 = v247;

                  v517.location = v451;
                  v517.length = v450;
                  v518.location = v246;
                  v518.length = v248;
                  v249 = NSUnionRange(v517, v518);
                  length = v249.length;
                  if (v249.length == v248 + v450 && v451 <= v246)
                  {
                    v493 = 0u;
                    v494 = 0u;
                    v491 = 0u;
                    v492 = 0u;
                    v440 = v441;
                    v437 = objc_msgSend_countByEnumeratingWithState_objects_count_(v440, v251, &v491, v511, 16, v252);
                    if (!v437)
                    {
                      goto LABEL_89;
                    }

                    v439 = *v492;
                    while (1)
                    {
                      for (m = 0; m != v437; ++m)
                      {
                        if (*v492 != v439)
                        {
                          objc_enumerationMutation(v440);
                        }

                        v253 = *(*(&v491 + 1) + 8 * m);
                        v487 = 0u;
                        v488 = 0u;
                        v489 = 0u;
                        v490 = 0u;
                        v457 = v453;
                        v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v254, &v487, v510, 16, v255);
                        if (v459)
                        {
                          v458 = *v488;
                          do
                          {
                            for (n = 0; n != v459; ++n)
                            {
                              if (*v488 != v458)
                              {
                                objc_enumerationMutation(v457);
                              }

                              v470 = *(*(&v487 + 1) + 8 * n);
                              v483 = 0u;
                              v484 = 0u;
                              v485 = 0u;
                              v486 = 0u;
                              v261 = objc_msgSend_grammar(selfCopy, v256, v257, v258, v259, v260);
                              v464 = objc_msgSend_nonTerminalProductions(v261, v262, v263, v264, v265, v266);

                              v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v464, v267, &v483, v509, 16, v268);
                              if (v269)
                              {
                                v465 = *v484;
                                do
                                {
                                  v468 = v269;
                                  for (ii = 0; ii != v468; ++ii)
                                  {
                                    if (*v484 != v465)
                                    {
                                      objc_enumerationMutation(v464);
                                    }

                                    v276 = *(*(&v483 + 1) + 8 * ii);
                                    v277 = objc_msgSend_rightNode1(v276, v270, v271, v272, v273, v274);
                                    v283 = objc_msgSend_nonTerminal(v253, v278, v279, v280, v281, v282);
                                    inited = objc_msgSend_name(v283, v284, v285, v286, v287, v288);
                                    if (!objc_msgSend_isEqualToString_(v277, v290, inited, v291, v292, v293))
                                    {
                                      goto LABEL_122;
                                    }

                                    v299 = objc_msgSend_rightNode2(v276, v294, v295, v296, v297, v298);
                                    v305 = objc_msgSend_nonTerminal(v470, v300, v301, v302, v303, v304);
                                    v311 = objc_msgSend_name(v305, v306, v307, v308, v309, v310);
                                    isEqualToString = objc_msgSend_isEqualToString_(v299, v312, v311, v313, v314, v315);

                                    if (isEqualToString)
                                    {
                                      v317 = objc_msgSend_combinations(v253, v270, v271, v272, v273, v274);
                                      if (v317 <= objc_msgSend_combinations(v470, v318, v319, v320, v321, v322))
                                      {
                                        v328 = objc_msgSend_combinations(v470, v323, v324, v325, v326, v327);
                                      }

                                      else
                                      {
                                        v328 = objc_msgSend_combinations(v253, v323, v324, v325, v326, v327);
                                      }

                                      v334 = v328;
                                      objc_msgSend_probability(v253, v329, v330, v331, v332, v333);
                                      v336 = v335;
                                      objc_msgSend_probability(v470, v337, v338, v339, v340, v341);
                                      v343 = v342;
                                      objc_msgSend_probability(v276, v344, v345, v346, v347, v348);
                                      v350 = v349;
                                      v356 = objc_msgSend_leftNode(v276, v351, v352, v353, v354, v355);
                                      v277 = objc_msgSend_cellWithLength_range_nonTerminal_(v463, v357, v462, v249.location, v249.length, v356);

                                      v363 = v336 * v343 * v350;
                                      if (!v277 || (objc_msgSend_probability(v277, v358, v359, v360, v361, v362), v363 > v364))
                                      {
                                        v365 = [CHNonTerminal alloc];
                                        v371 = objc_msgSend_leftNode(v276, v366, v367, v368, v369, v370);
                                        v377 = objc_msgSend_nonTerminal(v253, v372, v373, v374, v375, v376);
                                        v383 = objc_msgSend_nonTerminal(v470, v378, v379, v380, v381, v382);
                                        v283 = objc_msgSend_initWithName_leftNode_rightNode_(v365, v384, v371, v377, v383, v385);

                                        v386 = [CHParseTableCell alloc];
                                        inited = objc_msgSend_initNonTerminal_range_(v386, v387, v283, v249.location, v249.length, v388);
                                        objc_msgSend_setRule_(inited, v389, v276, v390, v391, v392);
                                        objc_msgSend_setCombinations_(inited, v393, v334 + 1, v394, v395, v396);
                                        objc_msgSend_setProbability_(inited, v397, v398, v399, v400, v401, v363);
                                        v402 = [CHParseTree alloc];
                                        v408 = objc_msgSend_grammar(selfCopy, v403, v404, v405, v406, v407);
                                        v413 = objc_msgSend_initWithGrammar_(v402, v409, v408, v410, v411, v412);
                                        objc_msgSend_setParseTree_(inited, v414, v413, v415, v416, v417);

                                        v423 = objc_msgSend_parseTree(inited, v418, v419, v420, v421, v422);
                                        objc_msgSend_setRoot_(v423, v424, v283, v425, v426, v427);

                                        objc_msgSend_addCell_(v463, v428, inited, v429, v430, v431);
LABEL_122:
                                      }

                                      continue;
                                    }
                                  }

                                  v269 = objc_msgSend_countByEnumeratingWithState_objects_count_(v464, v270, &v483, v509, 16, v274);
                                }

                                while (v269);
                              }
                            }

                            v459 = objc_msgSend_countByEnumeratingWithState_objects_count_(v457, v256, &v487, v510, 16, v260);
                          }

                          while (v459);
                        }
                      }

                      v437 = objc_msgSend_countByEnumeratingWithState_objects_count_(v440, v432, &v491, v511, 16, v433);
                      if (!v437)
                      {
LABEL_89:

                        break;
                      }
                    }
                  }
                }

                v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v447, length, &v495, v512, 16, v239);
              }

              while (v446);
            }
          }

          v436 = objc_msgSend_countByEnumeratingWithState_objects_count_(v443, v220, &v499, v513, 16, v224);
        }

        while (v436);
LABEL_132:

        v213 = v435 + 1;
        v56 = v463;
      }

      while (v435 + 1 != v462);
    }

    while (v462++ != v454);
  }

  v481 = 0u;
  v482 = 0u;
  *__p = 0u;
  sub_18386EDD4(__p);
  v72 = *(&v482 + 1);
  v73 = __p[1];
  v74 = v481;
  v75 = (*(__p[1] + (((v482 + *(&v482 + 1)) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v482 + BYTE8(v482)));
  *v75 = 0;
  v75[1] = v454;
  v76 = __CFADD__(v72, 1);
  v77 = v72 + 1;
  if (v76)
  {
    goto LABEL_69;
  }

  do
  {
    v78 = v481;
    v79 = 32 * (v481 - __p[1]) - 1;
    if (v481 == __p[1])
    {
      v79 = 0;
    }

    v80 = (*(__p[1] + (((v482 + v77 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v482 + v77 - 1));
    v467 = *v80;
    v469 = v80[1];
    *(&v482 + 1) = v77 - 1;
    if (v79 - (v77 + v482) + 1 >= 0x200)
    {
      operator delete(*(v481 - 8));
      *&v481 = v78 - 8;
    }

    v81 = 0;
    for (jj = v469; !objc_msgSend_count(v81, v67, v68, v69, v70, v71) && jj >= 1; jj -= v113)
    {
      v84 = objc_msgSend_startCellsWithLength_inRange_startSymbol_(v463, v83, jj, v467, v469, @"Expression");

      v90 = objc_msgSend_array(MEMORY[0x1E695DF70], v85, v86, v87, v88, v89);
      v478 = 0u;
      v479 = 0u;
      v476 = 0u;
      v477 = 0u;
      v91 = v84;
      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v476, v508, 16, v93);
      if (v99)
      {
        v100 = *v477;
        do
        {
          for (kk = 0; kk != v99; ++kk)
          {
            if (*v477 != v100)
            {
              objc_enumerationMutation(v91);
            }

            v102 = *(*(&v476 + 1) + 8 * kk);
            if (objc_msgSend_parseNormalizedLatex(selfCopy, v94, v95, v96, v97, v98))
            {
              objc_msgSend_terminalsRange(v102, v103, v104, v105, v106, v107);
            }

            else
            {
              objc_msgSend_inputRange(v102, v103, v104, v105, v106, v107);
            }
          }

          v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v94, &v476, v508, 16, v98);
        }

        while (v99);
      }

      v81 = v90;
      v113 = objc_msgSend_count(v81, v108, v109, v110, v111, v112) == 0;
    }

    v474 = 0u;
    v475 = 0u;
    v472 = 0u;
    v473 = 0u;
    v114 = v81;
    v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v472, v507, 16, v116);
    if (!v122)
    {

      v123 = 0;
LABEL_50:
      v152 = 0;
      goto LABEL_67;
    }

    v123 = 0;
    v124 = *v473;
    do
    {
      for (mm = 0; mm != v122; ++mm)
      {
        if (*v473 != v124)
        {
          objc_enumerationMutation(v114);
        }

        v127 = *(*(&v472 + 1) + 8 * mm);
        if (v123)
        {
          objc_msgSend_probability(*(*(&v472 + 1) + 8 * mm), v117, v118, v119, v120, v121);
          v129 = v128;
          objc_msgSend_probability(v123, v130, v131, v132, v133, v134);
          if (v129 <= v135)
          {
            continue;
          }
        }

        v126 = v127;

        v123 = v126;
      }

      v122 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v117, &v472, v507, 16, v121);
    }

    while (v122);

    if (!v123)
    {
      goto LABEL_50;
    }

    if (objc_msgSend_parseNormalizedLatex(selfCopy, v136, v137, v138, v139, v140))
    {
      v146 = [CHLatexParseTree alloc];
    }

    else
    {
      v146 = [CHParseTree alloc];
    }

    v147 = objc_msgSend_grammar(selfCopy, v141, v142, v143, v144, v145);
    v152 = objc_msgSend_initWithGrammar_(v146, v148, v147, v149, v150, v151);

    v158 = objc_msgSend_nonTerminal(v123, v153, v154, v155, v156, v157);
    objc_msgSend_setRoot_(v152, v159, v158, v160, v161, v162);

    v168 = objc_msgSend_originalRange(v123, v163, v164, v165, v166, v167);
    objc_msgSend_setInputRange_(v152, v169, v168, v169, v170, v171);
    objc_msgSend_addObject_(v452, v172, v152, v173, v174, v175);
    if (jj < v469)
    {
      v181 = objc_msgSend_inputRange(v123, v176, v177, v178, v179, v180);
      v187 = v181 - v467;
      if (v181 != v467)
      {
        v188 = __p[1];
        if (v481 == __p[1])
        {
          v189 = 0;
        }

        else
        {
          v189 = 32 * (v481 - __p[1]) - 1;
        }

        v190 = *(&v482 + 1);
        v191 = *(&v482 + 1) + v482;
        if (v189 == *(&v482 + 1) + v482)
        {
          sub_18386EDD4(__p);
          v188 = __p[1];
          v190 = *(&v482 + 1);
          v191 = *(&v482 + 1) + v482;
        }

        v192 = (*&v188[(v191 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v191);
        *v192 = v467;
        v192[1] = v187;
        *(&v482 + 1) = v190 + 1;
      }

      v193 = objc_msgSend_inputRange(v123, v182, v183, v184, v185, v186);
      v195 = v194;
      v200 = objc_msgSend_inputRange(v123, v194, v196, v197, v198, v199);
      v202 = v469 + v467 - (v201 + v200);
      if (v469 + v467 != v201 + v200)
      {
        v203 = __p[1];
        if (v481 == __p[1])
        {
          v204 = 0;
        }

        else
        {
          v204 = 32 * (v481 - __p[1]) - 1;
        }

        v205 = *(&v482 + 1);
        v206 = *(&v482 + 1) + v482;
        if (v204 == *(&v482 + 1) + v482)
        {
          sub_18386EDD4(__p);
          v203 = __p[1];
          v205 = *(&v482 + 1);
          v206 = *(&v482 + 1) + v482;
        }

        v207 = (*&v203[(v206 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v206);
        *v207 = &v195[v193];
        v207[1] = v202;
        *(&v482 + 1) = v205 + 1;
      }
    }

LABEL_67:

    v77 = *(&v482 + 1);
  }

  while (*(&v482 + 1));
  v73 = __p[1];
  v74 = v481;
  v56 = v463;
LABEL_69:
  v208 = v452;
  v209 = v74 - v73;
  if ((v74 - v73) >= 0x11)
  {
    do
    {
      v210 = *v73++;
      operator delete(v210);
      v209 -= 8;
    }

    while (v209 > 0x10);
  }

  while (v73 != v74)
  {
    v211 = *v73++;
    operator delete(v211);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v208;
}

@end