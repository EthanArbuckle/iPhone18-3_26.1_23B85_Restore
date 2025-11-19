@interface CHMergeColumnsStep
- (BOOL)_doesColumnContainSameMathTranscriptionCandidates:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHMergeColumnsStep

- (id)process:(id)a3 options:(id)a4
{
  v415 = *MEMORY[0x1E69E9840];
  v384 = a3;
  v380 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC58;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHMergeColumnsStep is running", buf, 2u);
  }

  v11 = objc_msgSend_result(v384, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_transcriptionPaths(v11, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_count(v17, v18, v19, v20, v21, v22) < 2;

  if (v23)
  {
    v29 = v384;
    goto LABEL_108;
  }

  if (qword_1EA84DA90 != -1)
  {
    dispatch_once(&qword_1EA84DA90, &unk_1EF1BB3A0);
  }

  *buf = 0;
  v404 = buf;
  v405 = 0x4812000000;
  v406 = sub_183683000;
  v407 = sub_183683024;
  v408 = &unk_183A5AC72;
  v410 = 0;
  v411 = 0;
  __p = 0;
  v399 = 0u;
  v400 = 0u;
  v401 = 0u;
  v402 = 0u;
  v30 = objc_msgSend_result(v384, v24, v25, v26, v27, v28);
  obj = objc_msgSend_transcriptionPaths(v30, v31, v32, v33, v34, v35);

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v399, v414, 16, v37);
  if (v38)
  {
    v44 = v387;
    v45 = v38;
    v383 = *v400;
    do
    {
      v46 = 0;
      do
      {
        if (*v400 != v383)
        {
          objc_enumerationMutation(obj);
        }

        v47 = *(*(&v399 + 1) + 8 * v46);
        *v412 = 0;
        *&v412[8] = v412;
        *&v412[16] = 0x2020000000;
        v413 = 0x7FFFFFFFFFFFFFFFLL;
        v398[0] = 0;
        v398[1] = v398;
        v398[2] = 0x2020000000;
        v398[3] = 0x7FFFFFFFFFFFFFFFLL;
        v397[0] = 0;
        v397[1] = v397;
        v397[2] = 0x2020000000;
        v397[3] = 0;
        v396[0] = 0;
        v396[1] = v396;
        v396[2] = 0x2020000000;
        v396[3] = 0;
        v395[0] = 0;
        v395[1] = v395;
        v395[2] = 0x2020000000;
        v395[3] = 1;
        v48 = objc_msgSend_result(v384, v39, v40, v41, v42, v43);
        v54 = objc_msgSend_result(v384, v49, v50, v51, v52, v53);
        v60 = objc_msgSend_tokenColumnCount(v54, v55, v56, v57, v58, v59);
        v386[0] = MEMORY[0x1E69E9820];
        v386[1] = 3221225472;
        v387[0] = sub_18368303C;
        v387[1] = &unk_1E6DDBF50;
        v61 = v384;
        v388 = v61;
        v389 = v412;
        v390 = v398;
        v391 = v396;
        v392 = v395;
        v393 = v397;
        v394 = buf;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v48, v62, v47, 0, v60, v386);

        if (*(*&v412[8] + 24) != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v63 = qword_1EA84DC58;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *v385 = 0;
            _os_log_impl(&dword_18366B000, v63, OS_LOG_TYPE_ERROR, "Unexpected fragmented candidate encountered.", v385, 2u);
          }

          v64 = v404;
          v65 = *(*&v412[8] + 24);
          v71 = objc_msgSend_result(v61, v66, v67, v68, v69, v70);
          v72 = v44;
          v78 = objc_msgSend_tokenColumnCount(v71, v73, v74, v75, v76, v77);
          v79 = v78 - *(*&v412[8] + 24);
          v81 = *(v64 + 7);
          v80 = *(v64 + 8);
          if (v81 >= v80)
          {
            v83 = *(v64 + 6);
            v84 = v81 - v83;
            v85 = (v81 - v83) >> 4;
            v86 = v85 + 1;
            if ((v85 + 1) >> 60)
            {
              sub_18368964C();
            }

            v87 = v80 - v83;
            if (v87 >> 3 > v86)
            {
              v86 = v87 >> 3;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF0)
            {
              v88 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v88 = v86;
            }

            if (v88)
            {
              if (!(v88 >> 60))
              {
                operator new();
              }

              sub_183688F00();
            }

            v89 = v85;
            v90 = (16 * v85);
            *v90 = v65;
            v90[1] = v79;
            v82 = 16 * v85 + 16;
            v91 = &v90[-2 * v89];
            memcpy(v91, v83, v84);
            *(v64 + 6) = v91;
            *(v64 + 7) = v82;
            *(v64 + 8) = 0;
            if (v83)
            {
              operator delete(v83);
            }
          }

          else
          {
            *v81 = v65;
            *(v81 + 1) = v79;
            v82 = (v81 + 16);
          }

          *(v64 + 7) = v82;

          v44 = v72;
        }

        _Block_object_dispose(v395, 8);
        _Block_object_dispose(v396, 8);
        _Block_object_dispose(v397, 8);
        _Block_object_dispose(v398, 8);
        _Block_object_dispose(v412, 8);
        ++v46;
      }

      while (v45 != v46);
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v399, v414, 16, v43);
    }

    while (v45);
  }

  for (i = 1; ; ++i)
  {
    v98 = objc_msgSend_result(v384, v92, v93, v94, v95, v96);
    v104 = i < objc_msgSend_tokenColumnCount(v98, v99, v100, v101, v102, v103);

    if (!v104)
    {
      break;
    }

    v110 = objc_msgSend_result(v384, v105, v106, v107, v108, v109);
    v116 = objc_msgSend_tokenColumns(v110, v111, v112, v113, v114, v115);
    v121 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, i, v118, v119, v120);

    v127 = objc_msgSend_mathTokenRows(v121, v122, v123, v124, v125, v126);
    v138 = objc_msgSend_set(MEMORY[0x1E695DFA8], v128, v129, v130, v131, v132);
    v139 = 0;
    v140 = 0;
    while (v139 < objc_msgSend_count(v127, v133, v134, v135, v136, v137))
    {
      v146 = objc_msgSend_objectAtIndexedSubscript_(v127, v141, v139, v143, v144, v145);
      v152 = objc_msgSend_firstObject(v146, v147, v148, v149, v150, v151);
      v158 = (objc_msgSend_properties(v152, v153, v154, v155, v156, v157) & 0x2000) == 0;

      if (!v158)
      {
        v159 = objc_msgSend_objectAtIndexedSubscript_(v127, v133, v139, v135, v136, v137);
        v165 = objc_msgSend_firstObject(v159, v160, v161, v162, v163, v164);
        v171 = objc_msgSend_string(v165, v166, v167, v168, v169, v170);
        objc_msgSend_addObject_(v138, v172, v171, v173, v174, v175);

        ++v140;
      }

      ++v139;
    }

    if (v140 > 0 && (v140 != objc_msgSend_count(v127, v141, v142, v143, v144, v145) || objc_msgSend_count(v138, v176, v177, v178, v179, v180) >= 2))
    {
      v181 = v404;
      v182 = i - 1;
      v184 = *(v404 + 7);
      v183 = *(v404 + 8);
      if (v184 >= v183)
      {
        v186 = *(v404 + 6);
        v187 = v184 - v186;
        v188 = (v184 - v186) >> 4;
        v189 = v188 + 1;
        if ((v188 + 1) >> 60)
        {
          sub_18368964C();
        }

        v190 = v183 - v186;
        if (v190 >> 3 > v189)
        {
          v189 = v190 >> 3;
        }

        if (v190 >= 0x7FFFFFFFFFFFFFF0)
        {
          v191 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v191 = v189;
        }

        if (v191)
        {
          if (!(v191 >> 60))
          {
            operator new();
          }

          sub_183688F00();
        }

        v192 = v188;
        v193 = (16 * v188);
        *v193 = v182;
        v193[1] = 2;
        v185 = 16 * v188 + 16;
        v194 = &v193[-2 * v192];
        memcpy(v194, v186, v187);
        *(v181 + 6) = v194;
        *(v181 + 7) = v185;
        *(v181 + 8) = 0;
        if (v186)
        {
          operator delete(v186);
        }
      }

      else
      {
        *v184 = v182;
        *(v184 + 1) = 2;
        v185 = (v184 + 16);
      }

      *(v181 + 7) = v185;
    }
  }

  for (j = 0; ; j = v230 + 1)
  {
    v196 = objc_msgSend_result(v384, v105, v106, v107, v108, v109);
    v202 = j < objc_msgSend_tokenColumnCount(v196, v197, v198, v199, v200, v201);

    if (!v202)
    {
      break;
    }

    v208 = objc_msgSend_result(v384, v203, v204, v205, v206, v207);
    v214 = objc_msgSend_tokenColumns(v208, v209, v210, v211, v212, v213);
    v219 = objc_msgSend_objectAtIndexedSubscript_(v214, v215, j, v216, v217, v218);

    if (!objc_msgSend__doesColumnContainSameMathTranscriptionCandidates_(self, v220, v219, v221, v222, v223))
    {
      goto LABEL_79;
    }

    v229 = j;
    do
    {
      v230 = v229;
      v231 = objc_msgSend_result(v384, v224, v225, v226, v227, v228);
      v237 = v230 + 1 < objc_msgSend_tokenColumnCount(v231, v232, v233, v234, v235, v236);

      if (!v237)
      {
        break;
      }

      v238 = objc_msgSend_result(v384, v224, v225, v226, v227, v228);
      v244 = objc_msgSend_tokenColumns(v238, v239, v240, v241, v242, v243);
      v249 = objc_msgSend_objectAtIndexedSubscript_(v244, v245, v230 + 1, v246, v247, v248);

      LOBYTE(v238) = objc_msgSend__doesColumnContainSameMathTranscriptionCandidates_(self, v250, v249, v251, v252, v253);
      v229 = v230 + 1;
    }

    while ((v238 & 1) != 0);
    v254 = j - 1;
    if (j < 1 || (objc_msgSend_result(v384, v224, v225, v226, v227, v228), v255 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tokenColumns(v255, v256, v257, v258, v259, v260), v261 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v261, v262, j - 1, v263, v264, v265), v266 = objc_claimAutoreleasedReturnValue(), objc_msgSend_tokenRows(v266, v267, v268, v269, v270, v271), v272 = objc_claimAutoreleasedReturnValue(), v278 = objc_msgSend_count(v272, v273, v274, v275, v276, v277) > 1, v272, v266, v261, v255, !v278))
    {
      v279 = objc_msgSend_result(v384, v224, v225, v226, v227, v228);
      if (v230 >= objc_msgSend_tokenColumnCount(v279, v280, v281, v282, v283, v284) - 1)
      {

LABEL_74:
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v318 = qword_1EA84DC58;
        if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
        {
          v324 = objc_msgSend_tokenRows(v219, v319, v320, v321, v322, v323);
          v330 = objc_msgSend_count(v324, v325, v326, v327, v328, v329);
          *v412 = 134218240;
          *&v412[4] = j;
          *&v412[12] = 2048;
          *&v412[14] = v330;
          _os_log_impl(&dword_18366B000, v318, OS_LOG_TYPE_ERROR, "Found column at index %lu with %lu rows where some rows have identical transcription but there is no neighboring column with candidates having different transcription.", v412, 0x16u);
        }

LABEL_79:
        v230 = j;
        goto LABEL_80;
      }

      v290 = objc_msgSend_result(v384, v285, v286, v287, v288, v289);
      v296 = objc_msgSend_tokenColumns(v290, v291, v292, v293, v294, v295);
      v301 = objc_msgSend_objectAtIndexedSubscript_(v296, v297, ++v230, v298, v299, v300);
      v307 = objc_msgSend_tokenRows(v301, v302, v303, v304, v305, v306);
      v313 = objc_msgSend_count(v307, v308, v309, v310, v311, v312) > 1;

      if (!v313)
      {
        goto LABEL_74;
      }

      v254 = j;
    }

    v314 = v404;
    v315 = v230 - v254 + 1;
    v317 = *(v404 + 7);
    v316 = *(v404 + 8);
    if (v317 >= v316)
    {
      v331 = *(v404 + 6);
      v332 = v317 - v331;
      v333 = (v317 - v331) >> 4;
      v334 = v333 + 1;
      if ((v333 + 1) >> 60)
      {
        sub_18368964C();
      }

      v335 = v316 - v331;
      if (v335 >> 3 > v334)
      {
        v334 = v335 >> 3;
      }

      if (v335 >= 0x7FFFFFFFFFFFFFF0)
      {
        v336 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v336 = v334;
      }

      if (v336)
      {
        if (!(v336 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v337 = v333;
      v338 = (16 * v333);
      *v338 = v254;
      v338[1] = v315;
      v339 = 16 * v333 + 16;
      v340 = &v338[-2 * v337];
      memcpy(v340, v331, v332);
      *(v314 + 6) = v340;
      *(v314 + 7) = v339;
      *(v314 + 8) = 0;
      if (v331)
      {
        operator delete(v331);
      }

      *(v314 + 7) = v339;
    }

    else
    {
      *v317 = v254;
      *(v317 + 1) = v315;
      *(v314 + 7) = v317 + 16;
    }

LABEL_80:
  }

  v341 = objc_msgSend_array(MEMORY[0x1E695DF70], v203, v204, v205, v206, v207);
  v343 = *(v404 + 6);
  v344 = *(v404 + 7);
  v345 = 126 - 2 * __clz(v344 - v343);
  if (v344 == v343)
  {
    v346 = 0;
  }

  else
  {
    v346 = v345;
  }

  *&v352 = sub_18368C4E8(v343, v344, v346, 1, v342).n128_u64[0];
  v353 = *(v404 + 6);
  v354 = *(v404 + 7);
  if (v354 != v353)
  {
    v355 = 0;
    v356 = (v354 - v353) >> 4;
    do
    {
      v357 = (v353 + 16 * v355);
      v358 = *v357;
      v359 = v357[1] + *v357;
      if (++v355 < v356)
      {
        v360 = v357 + 3;
        while (1)
        {
          v361 = *(v360 - 1);
          if (v361 >= v359)
          {
            break;
          }

          v362 = *v360;
          v360 += 2;
          v363 = v362 + v361;
          if (v359 <= v363)
          {
            v359 = v363;
          }

          if (v356 == ++v355)
          {
            v355 = v356;
            break;
          }
        }
      }

      v364 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v347, v358, v359 - v358, v350, v351, v352);
      objc_msgSend_addObject_(v341, v365, v364, v366, v367, v368);

      v353 = *(v404 + 6);
      v356 = (*(v404 + 7) - v353) >> 4;
    }

    while (v355 < v356);
  }

  v369 = objc_msgSend_result(v384, v347, v348, v349, v350, v351, v352);
  v373 = objc_msgSend_mathResultWithMergedColumns_columnRangesToMerge_(CHTokenizedMathResult, v370, v369, v341, v371, v372);
  objc_msgSend_setResult_(v384, v374, v373, v375, v376, v377);

  v378 = v384;
  _Block_object_dispose(buf, 8);
  if (__p)
  {
    v410 = __p;
    operator delete(__p);
  }

LABEL_108:

  return v384;
}

- (BOOL)_doesColumnContainSameMathTranscriptionCandidates:(id)a3
{
  v95 = *MEMORY[0x1E69E9840];
  v83 = a3;
  v8 = objc_msgSend_tokenRows(v83, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);

  if (v14 < 2)
  {
    v81 = 0;
  }

  else
  {
    v20 = objc_msgSend_set(MEMORY[0x1E695DFA8], v15, v16, v17, v18, v19);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v26 = objc_msgSend_mathTokenRows(v83, v21, v22, v23, v24, v25);
    obj = v26;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v89, v94, 16, v28);
    if (v34)
    {
      v35 = *v90;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v90 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v89 + 1) + 8 * i);
          v38 = objc_msgSend_array(MEMORY[0x1E695DF70], v29, v30, v31, v32, v33);
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v39 = v37;
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v85, v93, 16, v41);
          if (v47)
          {
            v48 = *v86;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v86 != v48)
                {
                  objc_enumerationMutation(v39);
                }

                v50 = objc_msgSend_string(*(*(&v85 + 1) + 8 * j), v42, v43, v44, v45, v46);
                objc_msgSend_addObject_(v38, v51, v50, v52, v53, v54);
              }

              v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v85, v93, 16, v46);
            }

            while (v47);
          }

          v59 = objc_msgSend_componentsJoinedByString_(v38, v55, @" ", v56, v57, v58);
          objc_msgSend_addObject_(v20, v60, v59, v61, v62, v63);
        }

        v26 = obj;
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v89, v94, 16, v33);
      }

      while (v34);
    }

    v69 = objc_msgSend_count(v20, v64, v65, v66, v67, v68);
    v75 = objc_msgSend_tokenRows(v83, v70, v71, v72, v73, v74);
    v81 = v69 != objc_msgSend_count(v75, v76, v77, v78, v79, v80);
  }

  return v81;
}

@end