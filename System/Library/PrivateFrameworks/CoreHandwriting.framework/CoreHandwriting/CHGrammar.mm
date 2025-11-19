@interface CHGrammar
- (CHGrammar)initWithFile:(id)a3;
- (id)description;
@end

@implementation CHGrammar

- (CHGrammar)initWithFile:(id)a3
{
  v414 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = objc_msgSend_init(self, v6, v7, v8, v9, v10);
  if (v13)
  {
    v407 = 0;
    v14 = objc_msgSend_stringWithContentsOfFile_encoding_error_(MEMORY[0x1E696AEC0], v11, v5, 4, &v407, v12);
    v15 = v407;
    if (v15)
    {
      v16 = v15;
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v17 = qword_1EA84DC58;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v413 = v16;
        _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "Error while reading the grammar file:\n %@", buf, 0xCu);
      }
    }

    else
    {
      v390 = v5;
      objc_storeStrong(&v13->_file, a3);
      v23 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
      terminalProductions = v13->_terminalProductions;
      v13->_terminalProductions = v23;

      v30 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
      nonTerminalProductions = v13->_nonTerminalProductions;
      v13->_nonTerminalProductions = v30;

      v37 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v32, v33, v34, v35, v36);
      productionsByKey = v13->_productionsByKey;
      v13->_productionsByKey = v37;

      v391 = objc_msgSend_set(MEMORY[0x1E695DFA8], v39, v40, v41, v42, v43);
      v44 = 0x1E696A000uLL;
      v50 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v45, v46, v47, v48, v49);
      v389 = v14;
      v17 = objc_msgSend_componentsSeparatedByCharactersInSet_(v14, v51, v50, v52, v53, v54);

      if (objc_msgSend_count(v17, v55, v56, v57, v58, v59))
      {
        v65 = 0;
        v392 = v17;
        objc_msgSend_objectAtIndexedSubscript_(v17, v60, 0, v62, v63, v64);
        while (1)
          v101 = {;
          v107 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v102, v103, v104, v105, v106);
          v112 = objc_msgSend_stringByTrimmingCharactersInSet_(v101, v108, v107, v109, v110, v111);

          if (objc_msgSend_length(v112, v113, v114, v115, v116, v117))
          {
            v123 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v118, v119, v120, v121, v122);
            v128 = objc_msgSend_stringByTrimmingCharactersInSet_(v112, v124, v123, v125, v126, v127);
            hasPrefix = objc_msgSend_hasPrefix_(v128, v129, @"//", v130, v131, v132);

            if ((hasPrefix & 1) == 0)
            {
              v138 = objc_msgSend_componentsSeparatedByString_(v112, v134, @"->", v135, v136, v137);
              v143 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, 0, v140, v141, v142);
              v149 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v144, v145, v146, v147, v148);
              v154 = objc_msgSend_stringByTrimmingCharactersInSet_(v143, v150, v149, v151, v152, v153);

              v393 = v138;
              v159 = objc_msgSend_objectAtIndexedSubscript_(v138, v155, 1, v156, v157, v158);
              v165 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v160, v161, v162, v163, v164);
              v170 = objc_msgSend_stringByTrimmingCharactersInSet_(v159, v166, v165, v167, v168, v169);

              v175 = objc_msgSend_componentsSeparatedByString_(v170, v171, @"%|", v172, v173, v174);
              v180 = objc_msgSend_objectAtIndexedSubscript_(v175, v176, 0, v177, v178, v179);
              v186 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v181, v182, v183, v184, v185);
              v191 = objc_msgSend_stringByTrimmingCharactersInSet_(v180, v187, v186, v188, v189, v190);

              v197 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v192, v193, v194, v195, v196);
              v394 = v191;
              v202 = objc_msgSend_componentsSeparatedByCharactersInSet_(v191, v198, v197, v199, v200, v201);

              v213 = 1.0;
              if (objc_msgSend_count(v175, v203, v204, v205, v206, v207) >= 2)
              {
                v214 = objc_msgSend_objectAtIndexedSubscript_(v175, v208, 1, v210, v211, v212);
                v220 = objc_msgSend_whitespaceCharacterSet(*(v44 + 2824), v215, v216, v217, v218, v219);
                v225 = objc_msgSend_stringByTrimmingCharactersInSet_(v214, v221, v220, v222, v223, v224);

                objc_msgSend_doubleValue(v225, v226, v227, v228, v229, v230);
                v213 = v231;

                v44 = 0x1E696A000;
              }

              if (objc_msgSend_count(v202, v208, v209, v210, v211, v212) == 1)
              {
                v66 = [CHProductionRule alloc];
                v71 = objc_msgSend_objectAtIndexedSubscript_(v202, v67, 0, v68, v69, v70);
                v75 = objc_msgSend_initWithLeftNode_rightNode_probability_(v66, v72, v154, v71, v73, v74, v213);

                v81 = objc_msgSend_key(v75, v76, v77, v78, v79, v80);
                v86 = objc_msgSend_objectForKeyedSubscript_(v13->_productionsByKey, v82, v81, v83, v84, v85);

                if (!v86)
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v13->_productionsByKey, v87, v75, v81, v89, v90);
                  objc_msgSend_addObject_(v13->_terminalProductions, v268, v75, v269, v270, v271);
                }

                v91 = objc_msgSend_objectAtIndexedSubscript_(v202, v87, 0, v88, v89, v90);
                objc_msgSend_addObject_(v391, v92, v91, v93, v94, v95);

                v17 = v392;
                v44 = 0x1E696A000uLL;
              }

              else if (objc_msgSend_count(v202, v232, v233, v234, v235, v236) == 2)
              {
                v237 = [CHProductionRule alloc];
                v242 = objc_msgSend_objectAtIndexedSubscript_(v202, v238, 0, v239, v240, v241);
                v247 = objc_msgSend_objectAtIndexedSubscript_(v202, v243, 1, v244, v245, v246);
                v75 = objc_msgSend_initWithLeftNode_rightNode1_rightNode2_probability_(v237, v248, v154, v242, v247, v249, v213);

                v255 = objc_msgSend_key(v75, v250, v251, v252, v253, v254);
                v260 = objc_msgSend_objectForKeyedSubscript_(v13->_productionsByKey, v256, v255, v257, v258, v259);

                if (!v260)
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v13->_productionsByKey, v261, v75, v255, v262, v263);
                  objc_msgSend_addObject_(v13->_nonTerminalProductions, v264, v75, v265, v266, v267);
                }

                v17 = v392;
                v44 = 0x1E696A000;
              }

              else
              {
                v17 = v392;
                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v75 = qword_1EA84DC58;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v75, OS_LOG_TYPE_ERROR, "Error: Unexpected number of elements on the right side of a production rule.", buf, 2u);
                }
              }
            }
          }

          if (++v65 >= objc_msgSend_count(v17, v96, v97, v98, v99, v100))
          {
            break;
          }

          objc_msgSend_objectAtIndexedSubscript_(v17, v60, v65, v62, v63, v64);
        }
      }

      v272 = objc_msgSend_set(MEMORY[0x1E695DFA8], v60, v61, v62, v63, v64);
      nonTerminals = v13->_nonTerminals;
      v13->_nonTerminals = v272;

      v405 = 0u;
      v406 = 0u;
      v403 = 0u;
      v404 = 0u;
      v274 = v13->_nonTerminalProductions;
      v277 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v275, &v403, v411, 16, v276);
      if (v277)
      {
        v283 = v277;
        v284 = *v404;
        do
        {
          for (i = 0; i != v283; ++i)
          {
            if (*v404 != v284)
            {
              objc_enumerationMutation(v274);
            }

            v286 = *(*(&v403 + 1) + 8 * i);
            v287 = v13->_nonTerminals;
            v288 = objc_msgSend_leftNode(v286, v278, v279, v280, v281, v282);
            objc_msgSend_addObject_(v287, v289, v288, v290, v291, v292);

            v293 = v13->_nonTerminals;
            v299 = objc_msgSend_rightNode1(v286, v294, v295, v296, v297, v298);
            objc_msgSend_addObject_(v293, v300, v299, v301, v302, v303);

            v304 = v13->_nonTerminals;
            v310 = objc_msgSend_rightNode2(v286, v305, v306, v307, v308, v309);
            objc_msgSend_addObject_(v304, v311, v310, v312, v313, v314);
          }

          v283 = objc_msgSend_countByEnumeratingWithState_objects_count_(v274, v278, &v403, v411, 16, v282);
        }

        while (v283);
      }

      v320 = objc_msgSend_set(MEMORY[0x1E695DFA8], v315, v316, v317, v318, v319);
      terminals = v13->_terminals;
      v13->_terminals = v320;

      v401 = 0u;
      v402 = 0u;
      v399 = 0u;
      v400 = 0u;
      v322 = v13->_terminalProductions;
      v325 = objc_msgSend_countByEnumeratingWithState_objects_count_(v322, v323, &v399, v410, 16, v324);
      v14 = v391;
      if (v325)
      {
        v331 = v325;
        v332 = *v400;
        do
        {
          for (j = 0; j != v331; ++j)
          {
            if (*v400 != v332)
            {
              objc_enumerationMutation(v322);
            }

            v334 = *(*(&v399 + 1) + 8 * j);
            v335 = v13->_nonTerminals;
            v336 = objc_msgSend_leftNode(v334, v326, v327, v328, v329, v330);
            objc_msgSend_addObject_(v335, v337, v336, v338, v339, v340);

            v341 = v13->_terminals;
            v347 = objc_msgSend_rightNode1(v334, v342, v343, v344, v345, v346);
            objc_msgSend_addObject_(v341, v348, v347, v349, v350, v351);
          }

          v331 = objc_msgSend_countByEnumeratingWithState_objects_count_(v322, v326, &v399, v410, 16, v330);
        }

        while (v331);
      }

      v357 = objc_msgSend_string(MEMORY[0x1E696AD60], v352, v353, v354, v355, v356);
      v361 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v358, @"self", 1, v359, v360);
      v409 = v361;
      v365 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v362, &v409, 1, v363, v364);
      v370 = objc_msgSend_sortedArrayUsingDescriptors_(v391, v366, v365, v367, v368, v369);

      v397 = 0u;
      v398 = 0u;
      v395 = 0u;
      v396 = 0u;
      v371 = v370;
      v374 = objc_msgSend_countByEnumeratingWithState_objects_count_(v371, v372, &v395, v408, 16, v373);
      if (v374)
      {
        v379 = v374;
        v380 = *v396;
        do
        {
          for (k = 0; k != v379; ++k)
          {
            if (*v396 != v380)
            {
              objc_enumerationMutation(v371);
            }

            objc_msgSend_appendString_(v357, v375, *(*(&v395 + 1) + 8 * k), v376, v377, v378);
          }

          v379 = objc_msgSend_countByEnumeratingWithState_objects_count_(v371, v375, &v395, v408, 16, v378);
        }

        while (v379);
      }

      v386 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v382, v357, v383, v384, v385);
      characterSet = v13->_characterSet;
      v13->_characterSet = v386;

      v16 = v389;
      v5 = v390;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v59.receiver = self;
  v59.super_class = CHGrammar;
  v4 = [(CHGrammar *)&v59 description];
  v10 = objc_msgSend_terminals(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_count(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_nonTerminals(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_terminalProductions(self, v29, v30, v31, v32, v33);
  v40 = objc_msgSend_count(v34, v35, v36, v37, v38, v39);
  v46 = objc_msgSend_nonTerminalProductions(self, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);
  v57 = objc_msgSend_stringWithFormat_(v3, v53, @"%@: terminals=%lu, non-terminals=%lu, rules=%lu", v54, v55, v56, v4, v16, v28, v52 + v40);

  return v57;
}

@end