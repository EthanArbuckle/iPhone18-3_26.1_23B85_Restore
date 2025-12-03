@interface CHMutableTokenizedTextResult
- (id)copyWithZone:(_NSZone *)zone;
- (void)adjustColumns;
- (void)appendTokenColumns:(id)columns;
- (void)applyCharacterConverter:(id)converter;
- (void)filterCandidatesWithOutOfPattern:(BOOL)pattern duplicateTokenIDs:(BOOL)ds keepOutOfLexiconAlternatives:(BOOL)alternatives keepAlternativeLengths:(BOOL)lengths keepSubstrings:(BOOL)substrings shouldKeepOriginalSpelling:(BOOL)spelling;
- (void)offsetAllStrokeIndexesBy:(int64_t)by;
- (void)prependTokenColumns:(id)columns prefixTopPath:(id)path;
- (void)remapAllStrokeIndexesWithArray:(id)array;
- (void)remapAllStrokeIndexesWithIndexSet:(id)set;
- (void)setTokenColumns:(id)columns;
- (void)setTranscriptionPaths:(id)paths scores:(id)scores;
- (void)trimTokensToTranscriptionPathCount:(int64_t)count;
@end

@implementation CHMutableTokenizedTextResult

- (id)copyWithZone:(_NSZone *)zone
{
  v42 = [CHTokenizedTextResult alloc];
  tokenColumns = self->super._tokenColumns;
  transcriptionPaths = self->super._transcriptionPaths;
  transcriptionPathScores = self->super._transcriptionPathScores;
  v12 = objc_msgSend_trailingSeparator(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_recognizerGenerationIdentifier(self, v13, v14, v15, v16, v17);
  changeableCount = self->super._changeableCount;
  isMinimalDrawingResult = objc_msgSend_isMinimalDrawingResult(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_baseWritingDirection(self, v26, v27, v28, v29, v30);
  v37 = objc_msgSend_originalTokens(self, v32, v33, v34, v35, v36);
  v41 = isMinimalDrawingResult;
  isMinimalDrawingResult_baseWritingDirection_originalTokens = objc_msgSend_initWithTokenColumns_transcriptionPaths_scores_trailingSeparator_recognizerGenerationIdentifier_changeableColumnCount_isMinimalDrawingResult_baseWritingDirection_originalTokens_(v42, v38, tokenColumns, transcriptionPaths, transcriptionPathScores, v12, v18, changeableCount, v41, v31, v37);

  *(isMinimalDrawingResult_baseWritingDirection_originalTokens + 64) = self->super._precedingLineBreaks;
  objc_storeStrong((isMinimalDrawingResult_baseWritingDirection_originalTokens + 80), self->super._inputStrokeIdentifiers);
  objc_storeStrong((isMinimalDrawingResult_baseWritingDirection_originalTokens + 88), self->super._locale);
  return isMinimalDrawingResult_baseWritingDirection_originalTokens;
}

- (void)setTokenColumns:(id)columns
{
  columnsCopy = columns;
  if (self->super._tokenColumns != columnsCopy)
  {
    v12 = columnsCopy;
    v10 = objc_msgSend_copy(columnsCopy, v5, v6, v7, v8, v9);
    tokenColumns = self->super._tokenColumns;
    self->super._tokenColumns = v10;

    columnsCopy = v12;
  }
}

- (void)setTranscriptionPaths:(id)paths scores:(id)scores
{
  v67 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  scoresCopy = scores;
  v13 = objc_msgSend_count(pathsCopy, v8, v9, v10, v11, v12);
  if (v13 != objc_msgSend_count(scoresCopy, v14, v15, v16, v17, v18))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v24 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v63 = 134218240;
      v64 = objc_msgSend_count(pathsCopy, v25, v26, v27, v28, v29);
      v65 = 2048;
      v66 = objc_msgSend_count(scoresCopy, v30, v31, v32, v33, v34);
      _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_ERROR, "transcriptionPaths count (%ld) != scores count (%ld)", &v63, 0x16u);
    }
  }

  v35 = objc_msgSend_count(pathsCopy, v19, v20, v21, v22, v23);
  if (v35 != objc_msgSend_count(scoresCopy, v36, v37, v38, v39, v40))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v46 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      v52 = objc_msgSend_count(pathsCopy, v47, v48, v49, v50, v51);
      v58 = objc_msgSend_count(scoresCopy, v53, v54, v55, v56, v57);
      v63 = 134218240;
      v64 = v52;
      v65 = 2048;
      v66 = v58;
      _os_log_impl(&dword_18366B000, v46, OS_LOG_TYPE_FAULT, "transcriptionPaths count (%ld) != scores count (%ld)", &v63, 0x16u);
    }
  }

  if (self->super._transcriptionPaths != pathsCopy)
  {
    v59 = objc_msgSend_copy(pathsCopy, v41, v42, v43, v44, v45);
    transcriptionPaths = self->super._transcriptionPaths;
    self->super._transcriptionPaths = v59;
  }

  if (self->super._transcriptionPathScores != scoresCopy)
  {
    v61 = objc_msgSend_copy(scoresCopy, v41, v42, v43, v44, v45);
    transcriptionPathScores = self->super._transcriptionPathScores;
    self->super._transcriptionPathScores = v61;
  }
}

- (void)appendTokenColumns:(id)columns
{
  columnsCopy = columns;
  if (objc_msgSend_count(columnsCopy, v4, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_arrayByAddingObjectsFromArray_(self->super._tokenColumns, v9, columnsCopy, v10, v11, v12);
    objc_msgSend_setTokenColumns_(self, v14, v13, v15, v16, v17);
    objc_msgSend_setTranscriptionPaths_scores_(self, v18, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v19, v20);
  }
}

- (void)adjustColumns
{
  v6 = objc_msgSend_count(self->super._tokenColumns, a2, v2, v3, v4, v5);
  v296 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v303 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v317 = 0;
  v318 = 0;
  v319 = 0;
  v302 = v6;
  v22 = 0;
  if (v6)
  {
    v18 = 0;
    do
    {
      while (1)
      {
        v297 = v18;
        v24 = objc_msgSend_objectAtIndex_(self->super._tokenColumns, v17, v18, v19, v20, v21);
        v30 = objc_msgSend_textTokenRows(v24, v25, v26, v27, v28, v29);
        if (objc_msgSend_count(v30, v31, v32, v33, v34, v35))
        {
          v41 = objc_msgSend_firstObject(v30, v36, v37, v38, v39, v40);
          v42 = sub_1837F5954(CHTokenizedTextResult, v41);

          for (i = 1; i < objc_msgSend_count(v30, v43, v44, v45, v46, v47) && objc_msgSend_count(v42, v49, v50, v51, v52, v53); ++i)
          {
            v58 = objc_msgSend_objectAtIndexedSubscript_(v30, v54, i, v55, v56, v57);
            v59 = sub_1837F5954(CHTokenizedTextResult, v58);

            v60 = sub_1837A7B08(v42, v59);

            if (!objc_msgSend_count(v60, v61, v62, v63, v64, v65))
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v66 = qword_1EA84DC58;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_18366B000, v66, OS_LOG_TYPE_ERROR, "Incompatible index sets have no partition of common index sets.", buf, 2u);
              }
            }

            v42 = v60;
          }

          v67 = v42;
          v6 = v302;
        }

        else
        {
          v67 = MEMORY[0x1E695E0F0];
        }

        v300 = v24;
        v308 = v67;
        if (objc_msgSend_count(v67, v68, v69, v70, v71, v72))
        {
          if (objc_msgSend_count(v67, v73, v74, v75, v76, v77) != 1)
          {
            break;
          }
        }

        objc_msgSend_addObject_(v296, v73, v24, v75, v76, v77);
        objc_msgSend_addObject_(v303, v79, &unk_1EF1ED270, v80, v81, v82);
        v83 = v318;
        if (v318 < v319)
        {
          v23 = v318 + 3;
          *v318 = 0;
          v83[1] = 0;
          v83[2] = 0;
        }

        else
        {
          v84 = v317;
          v85 = (v318 - v317);
          v86 = 0xAAAAAAAAAAAAAAABLL * (v318 - v317) + 1;
          if (v86 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_18368964C();
          }

          if (0x5555555555555556 * ((v319 - v317) >> 3) > v86)
          {
            v86 = 0x5555555555555556 * ((v319 - v317) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v319 - v317) >> 3) >= 0x555555555555555)
          {
            v87 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v87 = v86;
          }

          if (v87)
          {
            if (v87 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v111 = (8 * (v318 - v317));
          v23 = (v111 + 3);
          v112 = (v111 - v85);
          *v111 = 0;
          v111[1] = 0;
          v111[2] = 0;
          memcpy((v111 - v85), v84, v85);
          v317 = v112;
          v318 = v23;
          v319 = 0;
          if (v84)
          {
            operator delete(v84);
          }

          v6 = v302;
        }

        v318 = v23;

        v18 = v297 + 1;
        if (v297 + 1 == v6)
        {
          goto LABEL_83;
        }
      }

      v301 = objc_msgSend_array(MEMORY[0x1E695DF70], v73, v78, v75, v76, v77);
      v93 = objc_msgSend_count(v67, v88, v89, v90, v91, v92);
      v98 = v93;
      if (v93)
      {
        __src = 0;
        v312 = 0;
        v99 = v93;
        do
        {
          v100 = objc_alloc_init(CHMutableTokenizedResultColumn);
          objc_msgSend_addObject_(v301, v101, v100, v102, v103, v104);

          v105 = v312 - __src;
          v106 = 0xAAAAAAAAAAAAAAABLL * ((v312 - __src) >> 3);
          v107 = v106 + 1;
          if (v106 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_18368964C();
          }

          if (0x5555555555555556 * (-__src >> 3) > v107)
          {
            v107 = 0x5555555555555556 * (-__src >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__src >> 3) >= 0x555555555555555)
          {
            v108 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v108 = v107;
          }

          if (v108)
          {
            if (v108 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v109 = (8 * ((v312 - __src) >> 3));
          v312 = v109 + 3;
          v110 = 24 * v106 - v105;
          *v109 = 0;
          v109[1] = 0;
          v109[2] = 0;
          memcpy(v109 - v105, __src, v105);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v110;
          v67 = v308;
          --v99;
        }

        while (v99);
      }

      else
      {
        __src = 0;
        v312 = 0;
      }

      objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v94, v98, v95, v96, v97);
      v113 = v6 = v302;
      objc_msgSend_addObject_(v303, v114, v113, v115, v116, v117);

      for (j = 0; ; ++j)
      {
        v123 = objc_msgSend_textTokenRows(v24, v118, v119, v120, v121, v122);
        v129 = objc_msgSend_count(v123, v124, v125, v126, v127, v128);

        if (j >= v129)
        {
          break;
        }

        v135 = objc_msgSend_textTokenRows(v24, v130, v131, v132, v133, v134);
        v140 = objc_msgSend_objectAtIndex_(v135, v136, j, v137, v138, v139);

        v304 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v141, v142, v143, v144, v145);
        v306 = objc_msgSend_objectAtIndex_(v67, v146, 0, v147, v148, v149);
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v305 = v140;
        while (v155 < objc_msgSend_count(v140, v150, v151, v152, v153, v154))
        {
          v309 = objc_msgSend_objectAtIndex_(v140, v158, v155, v159, v160, v161);
          v167 = objc_msgSend_strokeIndexes(v309, v162, v163, v164, v165, v166);
          v315[0] = MEMORY[0x1E69E9820];
          v315[1] = 3221225472;
          v315[2] = sub_183807720;
          v315[3] = &unk_1E6DDCC38;
          v168 = v304;
          v316 = v168;
          objc_msgSend_enumerateIndexesUsingBlock_(v167, v169, v315, v170, v171, v172);

          if (v155 == objc_msgSend_count(v140, v173, v174, v175, v176, v177) - 1 || (objc_msgSend_isEqualToIndexSet_(v168, v178, v306, v179, v180, v181) & 1) != 0)
          {
            v182 = objc_msgSend_objectAtIndex_(v301, v178, v157, v179, v180, v181);
            v186 = objc_msgSend_subarrayWithRange_(v140, v183, v156, ++v155 - v156, v184, v185);
            v191 = objc_msgSend_addTokenRowWithTokens_(v182, v187, v186, v188, v189, v190);

            v197 = __src + 24 * v157;
            v199 = *(v197 + 8);
            v198 = *(v197 + 16);
            if (v199 >= v198)
            {
              v201 = *v197;
              v202 = v199 - *v197;
              v203 = v202 >> 3;
              v204 = (v202 >> 3) + 1;
              if (v204 >> 61)
              {
                sub_18368964C();
              }

              v205 = v198 - v201;
              if (v205 >> 2 > v204)
              {
                v204 = v205 >> 2;
              }

              if (v205 >= 0x7FFFFFFFFFFFFFF8)
              {
                v206 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v206 = v204;
              }

              if (v206)
              {
                if (!(v206 >> 61))
                {
                  operator new();
                }

                sub_183688F00();
              }

              *(8 * v203) = v191;
              v200 = 8 * v203 + 8;
              memcpy(0, v201, v202);
              *v197 = 0;
              *(v197 + 8) = v200;
              *(v197 + 16) = 0;
              if (v201)
              {
                operator delete(v201);
              }
            }

            else
            {
              *v199 = v191;
              v200 = (v199 + 1);
            }

            *(v197 + 8) = v200;
            v140 = v305;
            v207 = objc_msgSend_count(v308, v192, v193, v194, v195, v196);
            v212 = v157 + 1;
            if (v157 + 1 >= v207)
            {
              ++v157;
            }

            else
            {
              ++v157;
              v213 = objc_msgSend_objectAtIndex_(v308, v208, v212, v209, v210, v211);

              v306 = v213;
              objc_msgSend_removeAllIndexes(v168, v214, v215, v216, v217, v218);
            }

            v156 = v155;
            v6 = v302;
            v24 = v300;
            v67 = v308;
          }

          else
          {
            ++v155;
          }
        }
      }

      sub_18380B1C0(&v317, v318, __src, v312, 0xAAAAAAAAAAAAAAABLL * ((v312 - __src) >> 3));
      objc_msgSend_addObjectsFromArray_(v296, v219, v301, v220, v221, v222);
      if (__src)
      {
        if (v312 != __src)
        {
          v223 = v312;
          do
          {
            v225 = *(v223 - 3);
            v223 -= 3;
            v224 = v225;
            if (v225)
            {
              *(v312 - 2) = v224;
              operator delete(v224);
            }

            v312 = v223;
          }

          while (v223 != __src);
        }

        operator delete(__src);
      }

      v22 = 1;
      v18 = v297 + 1;
    }

    while (v297 + 1 != v6);
  }

LABEL_83:
  v226 = objc_msgSend_transcriptionPaths(self, v17, v18, v19, v20, v21);
  v232 = objc_msgSend_count(v226, v227, v228, v229, v230, v231);

  if (v22)
  {
    objc_msgSend_setTokenColumns_(self, v233, v296, v234, v235, v236);
    if (v232)
    {
      __srca = objc_msgSend_array(MEMORY[0x1E695DF70], v237, v238, v239, v240, v241);
      v307 = objc_msgSend_array(MEMORY[0x1E695DF70], v242, v243, v244, v245, v246);
      v252 = objc_msgSend_count(v296, v247, v248, v249, v250, v251);
      v258 = v252;
      if (v252)
      {
        if (!(v252 >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }

      if (v302)
      {
        if (!(v302 >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }

      for (k = 0; k < objc_msgSend_count(self->super._transcriptionPaths, v253, v254, v255, v256, v257); ++k)
      {
        v264 = objc_msgSend_objectAtIndex_(self->super._transcriptionPaths, v260, k, v261, v262, v263);
        objc_msgSend_getIndexes_range_(v264, v265, 0, 0, 0, v266);

        v267 = objc_alloc(MEMORY[0x1E696AC88]);
        v271 = objc_msgSend_initWithIndexes_length_(v267, v268, 0, v258, v269, v270);
        v313[0] = MEMORY[0x1E69E9820];
        v313[1] = 3221225472;
        v313[2] = sub_18380772C;
        v313[3] = &unk_1E6DDEB60;
        v272 = v271;
        v314 = v272;
        if (objc_msgSend_indexOfObjectPassingTest_(__srca, v273, v313, v274, v275, v276) == 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_addObject_(__srca, v277, v272, v278, v279, v280);
          v285 = objc_msgSend_objectAtIndex_(self->super._transcriptionPathScores, v281, k, v282, v283, v284);
          objc_msgSend_addObject_(v307, v286, v285, v287, v288, v289);
        }
      }

      objc_msgSend_setTranscriptionPaths_scores_(self, v260, __srca, v307, v262, v263);
    }
  }

  v290 = v317;
  if (v317)
  {
    v291 = v318;
    v292 = v317;
    if (v318 != v317)
    {
      v293 = v318;
      do
      {
        v295 = *(v293 - 3);
        v293 -= 3;
        v294 = v295;
        if (v295)
        {
          *(v291 - 2) = v294;
          operator delete(v294);
        }

        v291 = v293;
      }

      while (v293 != v290);
      v292 = v317;
    }

    v318 = v290;
    operator delete(v292);
  }
}

- (void)prependTokenColumns:(id)columns prefixTopPath:(id)path
{
  columnsCopy = columns;
  pathCopy = path;
  v11 = objc_msgSend_arrayByAddingObjectsFromArray_(columnsCopy, v7, self->super._tokenColumns, v8, v9, v10);
  v17 = objc_msgSend_mutableCopy(self->super._transcriptionPaths, v12, v13, v14, v15, v16);
  v28 = objc_msgSend_count(columnsCopy, v18, v19, v20, v21, v22) - 1;
  if (v28 >= 0)
  {
    do
    {
      for (i = 0; i < objc_msgSend_count(v17, v23, v24, v25, v26, v27); ++i)
      {
        v34 = objc_msgSend_objectAtIndexedSubscript_(v17, v23, i, v25, v26, v27);
        v39 = objc_msgSend_indexAtPosition_(pathCopy, v35, v28, v36, v37, v38);
        v40 = sub_1837A38B0(v34, 0, v39);

        objc_msgSend_replaceObjectAtIndex_withObject_(v17, v41, i, v40, v42, v43);
      }
    }

    while (v28-- >= 1);
  }

  tokenColumns = self->super._tokenColumns;
  self->super._tokenColumns = v11;
  v30 = v11;

  transcriptionPaths = self->super._transcriptionPaths;
  self->super._transcriptionPaths = v17;
}

- (void)trimTokensToTranscriptionPathCount:(int64_t)count
{
  v251 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, count, v3, v4, v5);
  v7 = 0;
  v277 = 0;
  v278 = 0;
  v279 = 0;
  v274 = 0;
  v275 = 0;
  v276 = 0;
  v271 = 0;
  v272 = 0;
  v273 = 0;
  v268 = 0;
  v269 = 0;
  v270 = 0;
  selfCopy = self;
  for (i = objc_msgSend_count(self->super._transcriptionPaths, v8, v9, v10, v11, v12, v251); v7 < i; i = objc_msgSend_count(self->super._transcriptionPaths, v19, v20, v21, v22, v23, v252))
  {
    v256 = v7;
    v29 = objc_msgSend_objectAtIndex_(self->super._transcriptionPaths, v14, v7, v16, v17, v18);
    v30 = 0;
    v31 = 0;
    v280 = 0;
    v281 = 0;
    v282 = 0;
    while (v31 < objc_msgSend_count(self->super._tokenColumns, v24, v25, v26, v27, v28))
    {
      v36 = objc_msgSend_indexAtPosition_(v29, v32, v31, v33, v34, v35);
      v37 = v30;
      v38 = v30 >> 3;
      if (((v30 >> 3) + 1) >> 61)
      {
        v281 = v30;
        v282 = 0;
        v280 = 0;
        sub_18368964C();
      }

      if (v30 >> 3 != -1)
      {
        if (!(((v30 >> 3) + 1) >> 61))
        {
          operator new();
        }

        v281 = v30;
        v282 = 0;
        v280 = 0;
        sub_183688F00();
      }

      *(8 * v38) = v36;
      v30 = 8 * v38 + 8;
      memcpy(0, 0, v37);
      self = selfCopy;
      ++v31;
    }

    v281 = v30;
    v282 = 0;
    v280 = 0;
    if (v256 >= count)
    {
      v44 = v275;
      if (v275 >= v276)
      {
        v46 = sub_18380B73C(&v274, &v280);
        v42 = v256;
      }

      else
      {
        *v275 = 0;
        *(v44 + 1) = 0;
        *(v44 + 2) = 0;
        v45 = v30;
        v40 = v30 == 0;
        v42 = v256;
        if (!v40)
        {
          if ((v45 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18368964C();
        }

        v46 = v44 + 24;
      }

      v275 = v46;
      v47 = objc_msgSend_objectAtIndex_(self->super._transcriptionPathScores, v32, v42, v33, v34, v35);
      objc_msgSend_doubleValue(v47, v55, v56, v57, v58, v59);
      v61 = v269;
      if (v269 >= v270)
      {
        v69 = v268;
        v70 = v269 - v268;
        v71 = (v269 - v268) >> 3;
        v72 = v71 + 1;
        if ((v71 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v73 = v270 - v268;
        if ((v270 - v268) >> 2 > v72)
        {
          v72 = v73 >> 2;
        }

        if (v73 >= 0x7FFFFFFFFFFFFFF8)
        {
          v74 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v72;
        }

        if (v74)
        {
          if (!(v74 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v78 = (8 * v71);
        v79 = &v78[-((v269 - v268) >> 3)];
        *v78 = v60;
        v62 = (v78 + 1);
        memcpy(v79, v69, v70);
        v268 = v79;
        v269 = v62;
        v270 = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v269 = v60;
        v62 = v61 + 8;
      }

      v269 = v62;
    }

    else
    {
      v39 = v278;
      if (v278 >= v279)
      {
        v43 = sub_18380B73C(&v277, &v280);
        v42 = v256;
      }

      else
      {
        *v278 = 0;
        v39[1] = 0;
        v39[2] = 0;
        v41 = v30;
        v40 = v30 == 0;
        v42 = v256;
        if (!v40)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18368964C();
        }

        v43 = v39 + 3;
      }

      v278 = v43;
      v47 = objc_msgSend_objectAtIndex_(self->super._transcriptionPathScores, v32, v42, v33, v34, v35);
      objc_msgSend_doubleValue(v47, v48, v49, v50, v51, v52);
      v54 = v272;
      if (v272 >= v273)
      {
        v63 = v271;
        v64 = v272 - v271;
        v65 = (v272 - v271) >> 3;
        v66 = v65 + 1;
        if ((v65 + 1) >> 61)
        {
          sub_1836D58DC();
        }

        v67 = v273 - v271;
        if ((v273 - v271) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 61))
          {
            operator new();
          }

          sub_183688F00();
        }

        v75 = (8 * v65);
        v76 = &v75[-((v272 - v271) >> 3)];
        *v75 = v53;
        v77 = v75 + 1;
        memcpy(v76, v63, v64);
        v271 = v76;
        v272 = v77;
        v273 = 0;
        if (v63)
        {
          operator delete(v63);
        }

        v272 = v77;
      }

      else
      {
        *v272 = v53;
        v272 = v54 + 8;
      }
    }

    v7 = v42 + 1;
  }

  for (j = 0; j < objc_msgSend_count(selfCopy->super._tokenColumns, v14, v15, v16, v17, v18); j = v257 + 1)
  {
    v253 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->super._tokenColumns, v82, j, v84, v85, v86);
    v266 = 0;
    v267 = 0;
    v265 = &v266;
    v254 = objc_msgSend_array(MEMORY[0x1E695DF70], v87, v88, v89, v90, v91);
    v257 = j;
    __p = 0;
    v263 = 0;
    v264 = 0;
    v259 = 0;
    v260 = 0;
    v261 = 0;
    v97 = v277;
    if (v278 != v277)
    {
      v98 = 0;
      v99 = 0;
      while (1)
      {
        v100 = &v97[3 * v98];
        v102 = *v100;
        v101 = v100[1];
        if (v101 != v102)
        {
          if (((v101 - v102) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18368964C();
        }

        v103 = *(8 * v257);
        v104 = v266;
        v105 = &v266;
        v106 = v266;
        if (!v266)
        {
LABEL_74:
          operator new();
        }

        do
        {
          if (v106[4] >= v103)
          {
            v105 = v106;
          }

          v106 = v106[v106[4] < v103];
        }

        while (v106);
        if (v105 == &v266 || v103 < v105[4])
        {
          while (1)
          {
            while (1)
            {
              v107 = v104;
              v108 = v104[4];
              if (v103 >= v108)
              {
                break;
              }

              v104 = *v107;
              if (!*v107)
              {
                goto LABEL_74;
              }
            }

            if (v108 >= v103)
            {
              break;
            }

            v104 = v107[1];
            if (!v104)
            {
              goto LABEL_74;
            }
          }

          v107[5] = v267;
          v109 = objc_msgSend_textTokenRows(v253, v92, v93, v94, v95, v96);
          v114 = objc_msgSend_objectAtIndexedSubscript_(v109, v110, v103, v111, v112, v113);
          objc_msgSend_addObject_(v254, v115, v114, v116, v117, v118);

          v104 = v266;
        }

        if (v104)
        {
          v119 = &v266;
          v120 = v104;
          do
          {
            if (v120[4] >= v103)
            {
              v119 = v120;
            }

            v120 = v120[v120[4] < v103];
          }

          while (v120);
          if (v119 != &v266 && v103 >= v119[4])
          {
            while (1)
            {
              while (1)
              {
                v121 = v104;
                v122 = v104[4];
                if (v103 >= v122)
                {
                  break;
                }

                v104 = *v121;
                if (!*v121)
                {
                  goto LABEL_88;
                }
              }

              if (v122 >= v103)
              {
                break;
              }

              v104 = v121[1];
              if (!v104)
              {
LABEL_88:
                operator new();
              }
            }

            *(8 * v257) = v121[5];
            v123 = v263;
            if (v263 < v264)
            {
              *v263 = 0;
              v123[1] = 0;
              v123[2] = 0;
              v263 = v123 + 3;
              v130 = v271;
            }

            else
            {
              v124 = 0xAAAAAAAAAAAAAAABLL * ((v263 - __p) >> 3) + 1;
              if (v124 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_18368964C();
              }

              if (0x5555555555555556 * ((v264 - __p) >> 3) > v124)
              {
                v124 = 0x5555555555555556 * ((v264 - __p) >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v264 - __p) >> 3) >= 0x555555555555555)
              {
                v125 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v125 = v124;
              }

              p_p = &__p;
              if (v125)
              {
                if (v125 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_217;
              }

              v126 = (8 * ((v263 - __p) >> 3));
              v280 = 0;
              v281 = v126;
              v282 = v126;
              v283 = 0;
              v126[1] = 0;
              v126[2] = 0;
              *v126 = 0;
              v127 = (v126 + 3);
              v128 = __p;
              v129 = v126 - (v263 - __p);
              memcpy(v129, __p, v263 - __p);
              __p = v129;
              v263 = v127;
              v264 = 0;
              if (v128)
              {
                operator delete(v128);
              }

              v263 = v127;
              v130 = v271;
            }

            v131 = v99;
            v132 = v99 >> 3;
            if (((v99 >> 3) + 1) >> 61)
            {
              sub_1836D58DC();
            }

            if (v99 >> 3 != -1)
            {
              if (!(((v99 >> 3) + 1) >> 61))
              {
                operator new();
              }

LABEL_217:
              sub_183688F00();
            }

            *(8 * v132) = v130[v98];
            v99 = 8 * v132 + 8;
            memcpy(0, 0, v131);
            operator delete(0);
          }
        }

        ++v98;
        v97 = v277;
        if (v98 >= 0xAAAAAAAAAAAAAAABLL * (v278 - v277))
        {
          goto LABEL_109;
        }
      }
    }

    v99 = 0;
LABEL_109:
    v133 = v274;
    if (v275 != v274)
    {
      v134 = 0;
      do
      {
        v135 = &v133[24 * v134];
        v137 = *v135;
        v136 = *(v135 + 1);
        if (v136 != v137)
        {
          if (((v136 - v137) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_18368964C();
        }

        v138 = v266;
        if (v266)
        {
          v139 = *(8 * v257);
          v140 = &v266;
          v141 = v266;
          do
          {
            if (v141[4] >= v139)
            {
              v140 = v141;
            }

            v141 = v141[v141[4] < v139];
          }

          while (v141);
          if (v140 != &v266 && v139 >= v140[4])
          {
            while (1)
            {
              v142 = v138;
              v143 = v138[4];
              if (v139 < v143)
              {
                v138 = *v142;
                if (!*v142)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                if (v143 >= v139)
                {
                  *(8 * v257) = v142[5];
                  v144 = v260;
                  if (v260 < v261)
                  {
                    *v260 = 0;
                    v144[1] = 0;
                    v144[2] = 0;
                    v260 = v144 + 3;
                  }

                  else
                  {
                    v145 = 0xAAAAAAAAAAAAAAABLL * ((v260 - v259) >> 3) + 1;
                    if (v145 > 0xAAAAAAAAAAAAAAALL)
                    {
                      sub_18368964C();
                    }

                    if (0x5555555555555556 * ((v261 - v259) >> 3) > v145)
                    {
                      v145 = 0x5555555555555556 * ((v261 - v259) >> 3);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v261 - v259) >> 3) >= 0x555555555555555)
                    {
                      v146 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v146 = v145;
                    }

                    p_p = &v259;
                    if (v146)
                    {
                      if (v146 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      sub_183688F00();
                    }

                    v147 = (8 * ((v260 - v259) >> 3));
                    v280 = 0;
                    v281 = v147;
                    v282 = v147;
                    v283 = 0;
                    v147[1] = 0;
                    v147[2] = 0;
                    *v147 = 0;
                    v148 = (v147 + 3);
                    v149 = v259;
                    v150 = v147 - (v260 - v259);
                    memcpy(v150, v259, v260 - v259);
                    v259 = v150;
                    v260 = v148;
                    v261 = 0;
                    if (v149)
                    {
                      operator delete(v149);
                    }

                    v260 = v148;
                  }

                  operator new();
                }

                v138 = v142[1];
                if (!v138)
                {
LABEL_129:
                  operator new();
                }
              }
            }
          }
        }

        else
        {
          operator delete(0);
        }

        ++v134;
        v133 = v274;
      }

      while (v134 < 0xAAAAAAAAAAAAAAABLL * ((v275 - v274) >> 3));
    }

    sub_18380B8CC(&v277, __p, v263, 0xAAAAAAAAAAAAAAABLL * ((v263 - __p) >> 3));
    sub_1836E0FD4(&v271, 0, v99, v99 >> 3);
    sub_18380B8CC(&v274, v259, v260, 0xAAAAAAAAAAAAAAABLL * ((v260 - v259) >> 3));
    sub_1836E0FD4(&v268, 0, 0, 0);
    v151 = [CHTokenizedResultColumn alloc];
    v156 = objc_msgSend_initWithTokenRows_(v151, v152, v254, v153, v154, v155);
    objc_msgSend_addObject_(v252, v157, v156, v158, v159, v160);

    v161 = v259;
    if (v259)
    {
      v162 = v260;
      v163 = v259;
      if (v260 != v259)
      {
        v164 = v260;
        do
        {
          v166 = *(v164 - 3);
          v164 -= 3;
          v165 = v166;
          if (v166)
          {
            *(v162 - 2) = v165;
            operator delete(v165);
          }

          v162 = v164;
        }

        while (v164 != v161);
        v163 = v259;
      }

      v260 = v161;
      operator delete(v163);
    }

    v167 = __p;
    if (__p)
    {
      v168 = v263;
      v81 = __p;
      if (v263 != __p)
      {
        v169 = v263;
        do
        {
          v171 = *(v169 - 3);
          v169 -= 3;
          v170 = v171;
          if (v171)
          {
            *(v168 - 2) = v170;
            operator delete(v170);
          }

          v168 = v169;
        }

        while (v169 != v167);
        v81 = __p;
      }

      v263 = v167;
      operator delete(v81);
    }

    sub_18368D56C(&v265, v266);
  }

  v172 = objc_msgSend_array(MEMORY[0x1E695DF70], v82, v83, v84, v85, v86);
  v178 = objc_msgSend_array(MEMORY[0x1E695DF70], v173, v174, v175, v176, v177);
  sub_18380B1C0(&v277, v278, v274, v275, 0xAAAAAAAAAAAAAAABLL * ((v275 - v274) >> 3));
  v184 = v268;
  v185 = v269 - v268;
  v186 = (v269 - v268) >> 3;
  if (v186 >= 1)
  {
    v187 = v272;
    if ((v273 - v272) < v185)
    {
      v188 = (v272 - v271) >> 3;
      v189 = v188 + v186;
      if (v189 >> 61)
      {
        sub_1836D58DC();
      }

      v190 = v273 - v271;
      if ((v273 - v271) >> 2 > v189)
      {
        v189 = v190 >> 2;
      }

      if (v190 >= 0x7FFFFFFFFFFFFFF8)
      {
        v191 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v191 = v189;
      }

      if (v191)
      {
        if (!(v191 >> 61))
        {
          operator new();
        }

        sub_183688F00();
      }

      v193 = 8 * v188;
      v194 = 8 * v188 + v185;
      if ((v185 - 8) < 0x38)
      {
        v192 = v193;
      }

      else
      {
        v192 = v193;
        if ((v272 - v271 - v268) >= 0x20)
        {
          v195 = ((v185 - 8) >> 3) + 1;
          v196 = 8 * (v195 & 0x3FFFFFFFFFFFFFFCLL);
          v192 = (v193 + v196);
          v197 = v268 + v196;
          v198 = (v268 + 16);
          v199 = (v193 + 16);
          v200 = v195 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v201 = *v198;
            *(v199 - 1) = *(v198 - 1);
            *v199 = v201;
            v198 += 2;
            v199 += 2;
            v200 -= 4;
          }

          while (v200);
          v184 = v197;
          if (v195 == (v195 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_180:
            v203 = (v272 - v187);
            memcpy(v194, v187, v272 - v187);
            v204 = &v203[v194];
            v272 = v187;
            v205 = v271;
            v206 = v187 - v271;
            v207 = (v193 - (v187 - v271));
            memcpy(v207, v271, v206);
            v271 = v207;
            v272 = v204;
            v273 = 0;
            if (v205)
            {
              operator delete(v205);
            }

            goto LABEL_182;
          }
        }
      }

      do
      {
        v202 = *v184++;
        *v192++ = v202;
      }

      while (v192 != v194);
      goto LABEL_180;
    }

    if (v268 != v269)
    {
      memmove(v272, v268, v269 - v268);
    }

    v272 = &v187[v185];
  }

LABEL_182:
  if (v278 != v277)
  {
    v208 = 0;
    do
    {
      v209 = objc_msgSend_count(selfCopy->super._tokenColumns, v179, v180, v181, v182, v183);
      if (v209)
      {
        if (!(v209 >> 61))
        {
          operator new();
        }

        sub_1836D58DC();
      }

      for (k = 0; k < objc_msgSend_count(selfCopy->super._tokenColumns, v210, v211, v212, v213, v214); ++k)
      {
        *(8 * k) = *&v277[3 * v208][8 * k];
      }

      v216 = MEMORY[0x1E696AC88];
      v217 = objc_msgSend_count(selfCopy->super._tokenColumns, v210, v211, v212, v213, v214);
      v221 = objc_msgSend_indexPathWithIndexes_length_(v216, v218, 0, v217, v219, v220);
      objc_msgSend_addObject_(v172, v222, v221, v223, v224, v225);

      v231 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v226, v227, v228, v229, v230, *(v271 + v208));
      objc_msgSend_addObject_(v178, v232, v231, v233, v234, v235);

      ++v208;
    }

    while (v208 < 0xAAAAAAAAAAAAAAABLL * (v278 - v277));
  }

  objc_msgSend_setTokenColumns_(selfCopy, v179, v252, v181, v182, v183);
  objc_msgSend_setTranscriptionPaths_scores_(selfCopy, v236, v172, v178, v237, v238);

  if (v268)
  {
    v269 = v268;
    operator delete(v268);
  }

  if (v271)
  {
    v272 = v271;
    operator delete(v271);
  }

  v239 = v274;
  if (v274)
  {
    v240 = v275;
    v241 = v274;
    if (v275 != v274)
    {
      v242 = v275;
      do
      {
        v244 = *(v242 - 3);
        v242 -= 24;
        v243 = v244;
        if (v244)
        {
          *(v240 - 2) = v243;
          operator delete(v243);
        }

        v240 = v242;
      }

      while (v242 != v239);
      v241 = v274;
    }

    v275 = v239;
    operator delete(v241);
  }

  v245 = v277;
  if (v277)
  {
    v246 = v278;
    v247 = v277;
    if (v278 != v277)
    {
      v248 = v278;
      do
      {
        v250 = *(v248 - 3);
        v248 -= 3;
        v249 = v250;
        if (v250)
        {
          *(v246 - 2) = v249;
          operator delete(v249);
        }

        v246 = v248;
      }

      while (v248 != v245);
      v247 = v277;
    }

    v278 = v245;
    operator delete(v247);
  }
}

- (void)filterCandidatesWithOutOfPattern:(BOOL)pattern duplicateTokenIDs:(BOOL)ds keepOutOfLexiconAlternatives:(BOOL)alternatives keepAlternativeLengths:(BOOL)lengths keepSubstrings:(BOOL)substrings shouldKeepOriginalSpelling:(BOOL)spelling
{
  spellingCopy = spelling;
  substringsCopy = substrings;
  lengthsCopy = lengths;
  patternCopy = pattern;
  alternativesCopy = alternatives;
  dsCopy = ds;
  v323 = *MEMORY[0x1E69E9840];
  v280 = objc_msgSend_firstObject(self->super._transcriptionPaths, a2, pattern, ds, alternatives, lengths);
  selfCopy2 = self;
  v297 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v10, self->super._transcriptionPaths, v11, v12, v13);
  v293 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v14, self->super._transcriptionPathScores, v15, v16, v17);
  v278 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
  v296 = 0;
  v286 = !dsCopy;
LABEL_2:
  if (v296 < objc_msgSend_count(selfCopy2->super._tokenColumns, v23, v24, v25, v26, v27))
  {
    v291 = objc_msgSend_objectAtIndex_(selfCopy2->super._tokenColumns, v28, v296, v29, v30, v31);
    v32 = [CHMutableTokenizedResultColumn alloc];
    v295 = objc_msgSend_initWithTokenRows_(v32, v33, MEMORY[0x1E695E0F0], v34, v35, v36);
    v289 = objc_msgSend_array(MEMORY[0x1E695DF70], v37, v38, v39, v40, v41);
    v288 = objc_msgSend_indexAtPosition_(v280, v42, v296, v43, v44, v45);
    v51 = objc_msgSend_textTokenRows(v291, v46, v47, v48, v49, v50);
    v281 = objc_msgSend_objectAtIndex_(v51, v52, v288, v53, v54, v55);

    v283 = objc_msgSend_count(v281, v56, v57, v58, v59, v60);
    v318 = 0u;
    v319 = 0u;
    v316 = 0u;
    v317 = 0u;
    obj = v281;
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v61, &v316, v322, 16, v62);
    if (v68)
    {
      v69 = *v317;
      LOBYTE(v298) = 1;
      v299 = &stru_1EF1C0318;
      do
      {
        v70 = 0;
        v71 = v299;
        do
        {
          if (*v317 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(*(&v316 + 1) + 8 * v70);
          if (v298)
          {
            v298 = (objc_msgSend_properties(*(*(&v316 + 1) + 8 * v70), v63, v64, v65, v66, v67) >> 2) & 1;
          }

          else
          {
            LODWORD(v298) = 0;
          }

          v73 = objc_msgSend_string(v72, v63, v64, v65, v66, v67);
          objc_msgSend_length(v73, v74, v75, v76, v77, v78);

          v84 = objc_msgSend_string(v72, v79, v80, v81, v82, v83);
          v299 = objc_msgSend_stringByAppendingString_(v71, v85, v84, v86, v87, v88);

          ++v70;
          v71 = v299;
        }

        while (v68 != v70);
        v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v316, v322, 16, v67);
      }

      while (v68);
    }

    else
    {
      LODWORD(v298) = 1;
      v299 = &stru_1EF1C0318;
    }

    for (i = 0; ; ++i)
    {
      v94 = objc_msgSend_textTokenRows(v291, v89, v90, v91, v92, v93);
      v100 = i < objc_msgSend_count(v94, v95, v96, v97, v98, v99);

      if (!v100)
      {
        objc_msgSend_addObject_(v278, v101, v295, v103, v104, v105);

        ++v296;
        selfCopy2 = self;
        goto LABEL_2;
      }

      v106 = objc_msgSend_textTokenRows(v291, v101, v102, v103, v104, v105);
      v111 = objc_msgSend_objectAtIndex_(v106, v107, i, v108, v109, v110);

      v314 = 0u;
      v315 = 0u;
      v312 = 0u;
      v313 = 0u;
      v302 = v111;
      v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v302, v112, &v312, v321, 16, v113);
      if (v119)
      {
        LOBYTE(v120) = 0;
        LOBYTE(v121) = 0;
        v122 = *v313;
        LOBYTE(v305) = 1;
        LOBYTE(v306) = 1;
        v307 = &stru_1EF1C0318;
        while (1)
        {
          v123 = 0;
          v124 = v307;
          do
          {
            if (*v313 != v122)
            {
              objc_enumerationMutation(v302);
            }

            v125 = *(*(&v312 + 1) + 8 * v123);
            if (v121)
            {
              LODWORD(v121) = 1;
              if (v120)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v121 = (objc_msgSend_properties(*(*(&v312 + 1) + 8 * v123), v114, v115, v116, v117, v118) >> 4) & 1;
              if (v120)
              {
LABEL_24:
                LODWORD(v120) = 1;
                if (v305)
                {
                  goto LABEL_25;
                }

                goto LABEL_29;
              }
            }

            v120 = (objc_msgSend_inputSources(v125, v114, v115, v116, v117, v118) >> 4) & 1;
            if (v305)
            {
LABEL_25:
              v305 = (objc_msgSend_properties(v125, v114, v115, v116, v117, v118) >> 2) & 1;
              if ((v306 & 1) == 0)
              {
                goto LABEL_26;
              }

              goto LABEL_30;
            }

LABEL_29:
            LODWORD(v305) = 0;
            if ((v306 & 1) == 0)
            {
LABEL_26:
              LODWORD(v306) = 0;
              goto LABEL_31;
            }

LABEL_30:
            v306 = (objc_msgSend_properties(v125, v114, v115, v116, v117, v118) >> 3) & 1;
LABEL_31:
            v126 = objc_msgSend_string(v125, v114, v115, v116, v117, v118);
            objc_msgSend_length(v126, v127, v128, v129, v130, v131);

            v137 = objc_msgSend_string(v125, v132, v133, v134, v135, v136);
            v307 = objc_msgSend_stringByAppendingString_(v124, v138, v137, v139, v140, v141);

            ++v123;
            v124 = v307;
          }

          while (v119 != v123);
          v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(v302, v114, &v312, v321, 16, v118);
          if (!v119)
          {
            v290 = v121 | v120;
            goto LABEL_35;
          }
        }
      }

      v290 = 0;
      LODWORD(v305) = 1;
      LODWORD(v306) = 1;
      v307 = &stru_1EF1C0318;
LABEL_35:

      v300 = objc_msgSend_array(MEMORY[0x1E695DF70], v142, v143, v144, v145, v146);
      v310 = 0u;
      v311 = 0u;
      v308 = 0u;
      v309 = 0u;
      v301 = v302;
      v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v301, v147, &v308, v320, 16, v148);
      if (!v149)
      {
        break;
      }

      v155 = 0;
      v156 = 0;
      v303 = *v309;
      v157 = 1;
      v158 = 1;
      do
      {
        v159 = 0;
        v304 = v149;
        do
        {
          if (*v309 != v303)
          {
            objc_enumerationMutation(v301);
          }

          v160 = *(*(&v308 + 1) + 8 * v159);
          isTopOriginal = objc_msgSend_isTopOriginal(v160, v150, v151, v152, v153, v154);
          if (objc_msgSend_isOriginal(v160, v162, v163, v164, v165, v166))
          {
            objc_msgSend_modelScore(v160, v167, v168, v169, v170, v171);
            v173 = v172 > 0.8;
          }

          else
          {
            v173 = 0;
          }

          v174 = objc_msgSend_wordID(v160, v167, v168, v169, v170, v171) < 0x1F4;
          isTransliterated = objc_msgSend_isTransliterated(v160, v175, v176, v177, v178, v179);
          v155 |= v174;
          if ((v155 & 1) == 0)
          {
            v181 = MEMORY[0x1E696AD98];
            v182 = objc_msgSend_wordID(v160, v150, v151, v152, v153, v154);
            v187 = objc_msgSend_numberWithUnsignedInteger_(v181, v183, v182, v184, v185, v186);
            objc_msgSend_addObject_(v300, v188, v187, v189, v190, v191);
          }

          v157 &= isTopOriginal;
          v158 &= v173;
          v156 |= isTransliterated;
          ++v159;
        }

        while (v304 != v159);
        v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v301, v150, &v308, v320, 16, v154);
      }

      while (v149);

      if ((v155 & 1) == 0)
      {
        goto LABEL_50;
      }

      v197 = 0;
LABEL_51:
      if (i == v288 || ((v157 | v158) & spellingCopy & 1) != 0)
      {
        goto LABEL_65;
      }

      if (((v290 | v197 & v286) & 1) == 0)
      {
        if (((v306 | patternCopy) & v298) == 1)
        {
          if (((v305 | alternativesCopy) & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if (!(v306 | patternCopy))
        {
          goto LABEL_66;
        }

        if (v283 == objc_msgSend_count(v301, v192, v193, v194, v195, v196) || lengthsCopy)
        {
          v202 = objc_msgSend_length(v307, v192, v193, v194, v195, v196);
          v208 = objc_msgSend_length(v299, v203, v204, v205, v206, v207);
          v209 = lengthsCopy;
          if (v208 * 0.75 <= v202)
          {
            v209 = 1;
          }

          if (((v209 | v156) & 1) != 0 && (objc_msgSend_rangeOfString_options_(v299, v192, v307, 2, v195, v196) == 0x7FFFFFFFFFFFFFFFLL || substringsCopy))
          {
LABEL_65:
            v210 = objc_msgSend_textTokenRows(v295, v192, v193, v194, v195, v196);
            v216 = objc_msgSend_count(v210, v211, v212, v213, v214, v215);

            if (objc_msgSend_addTokenRowWithTokens_(v295, v217, v301, v218, v219, v220) == v216)
            {
              goto LABEL_72;
            }
          }
        }
      }

LABEL_66:
      v225 = objc_msgSend_count(v297, v192, v193, v194, v195, v196);
      if (v225 - 1 >= 0)
      {
        do
        {
          v226 = objc_msgSend_objectAtIndex_(v297, v221, --v225, v222, v223, v224);
          v231 = objc_msgSend_indexAtPosition_(v226, v227, v296, v228, v229, v230);
          v237 = objc_msgSend_textTokenRows(v295, v232, v233, v234, v235, v236);
          v243 = v231 == objc_msgSend_count(v237, v238, v239, v240, v241, v242);

          if (v243)
          {
            objc_msgSend_removeObjectAtIndex_(v297, v244, v225, v245, v246, v247);
            objc_msgSend_removeObjectAtIndex_(v293, v248, v225, v249, v250, v251);
          }

          else
          {
            v252 = objc_msgSend_indexAtPosition_(v226, v244, v296, v245, v246, v247);
            v258 = objc_msgSend_textTokenRows(v295, v253, v254, v255, v256, v257);
            v264 = v252 > objc_msgSend_count(v258, v259, v260, v261, v262, v263);

            if (v264)
            {
              v269 = objc_msgSend_indexAtPosition_(v226, v265, v296, v266, v267, v268);
              v270 = sub_1837A3654(v226, v296, v269 - 1);
              objc_msgSend_replaceObjectAtIndex_withObject_(v297, v271, v225, v270, v272, v273);
            }
          }
        }

        while (v225 > 0);
      }

LABEL_72:
    }

    v156 = 0;
    v158 = 1;
    v157 = 1;
LABEL_50:
    v197 = objc_msgSend_containsObject_(v289, v192, v300, v194, v195, v196);
    objc_msgSend_addObject_(v289, v198, v300, v199, v200, v201);
    goto LABEL_51;
  }

  objc_msgSend_setTokenColumns_(selfCopy2, v28, v278, v29, v30, v31);
  objc_msgSend_setTranscriptionPaths_scores_(selfCopy2, v274, v297, v293, v275, v276);
}

- (void)offsetAllStrokeIndexesBy:(int64_t)by
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_18380A650;
  v3[3] = &unk_1E6DDEBA8;
  v3[4] = by;
  sub_18380A05C(&self->super.super.super.isa, v3);
}

- (void)remapAllStrokeIndexesWithIndexSet:(id)set
{
  setCopy = set;
  v5 = MEMORY[0x1E695DF90];
  v11 = objc_msgSend_count(setCopy, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_dictionaryWithCapacity_(v5, v12, v11, v13, v14, v15);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_18380A878;
  v25[3] = &unk_1E6DDCC38;
  v17 = v16;
  v26 = v17;
  objc_msgSend_enumerateIndexesUsingBlock_(setCopy, v18, v25, v19, v20, v21);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18380A93C;
  v23[3] = &unk_1E6DDEBD0;
  v22 = v17;
  v24 = v22;
  sub_18380A05C(&self->super.super.super.isa, v23);
}

- (void)remapAllStrokeIndexesWithArray:(id)array
{
  arrayCopy = array;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18380ABDC;
  v6[3] = &unk_1E6DDEBD0;
  v7 = arrayCopy;
  v5 = arrayCopy;
  sub_18380A05C(&self->super.super.super.isa, v6);
}

- (void)applyCharacterConverter:(id)converter
{
  v154 = *MEMORY[0x1E69E9840];
  converterCopy = converter;
  v5 = MEMORY[0x1E695DF70];
  selfCopy = self;
  v11 = objc_msgSend_count(self->super._tokenColumns, v6, v7, v8, v9, v10);
  v146 = objc_msgSend_arrayWithCapacity_(v5, v12, v11, v13, v14, v15);
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = self->super._tokenColumns;
  v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v149, v153, 16, v17);
  if (v147)
  {
    v145 = *v150;
    do
    {
      for (i = 0; i != v147; ++i)
      {
        if (*v150 != v145)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v149 + 1) + 8 * i);
        v24 = MEMORY[0x1E695DF70];
        v25 = objc_msgSend_textTokenRows(v23, v18, v19, v20, v21, v22);
        v31 = objc_msgSend_count(v25, v26, v27, v28, v29, v30);
        v36 = objc_msgSend_arrayWithCapacity_(v24, v32, v31, v33, v34, v35);

        for (j = 0; ; ++j)
        {
          v43 = objc_msgSend_textTokenRows(v23, v37, v38, v39, v40, v41);
          v49 = j < objc_msgSend_count(v43, v44, v45, v46, v47, v48);

          if (!v49)
          {
            break;
          }

          v55 = MEMORY[0x1E695DF70];
          v56 = objc_msgSend_textTokenRows(v23, v50, v51, v52, v53, v54);
          v61 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, j, v58, v59, v60);
          v67 = objc_msgSend_count(v61, v62, v63, v64, v65, v66);
          v72 = objc_msgSend_arrayWithCapacity_(v55, v68, v67, v69, v70, v71);

          for (k = 0; ; ++k)
          {
            v79 = objc_msgSend_textTokenRows(v23, v73, v74, v75, v76, v77);
            v84 = objc_msgSend_objectAtIndexedSubscript_(v79, v80, j, v81, v82, v83);
            v90 = k < objc_msgSend_count(v84, v85, v86, v87, v88, v89);

            if (!v90)
            {
              break;
            }

            v96 = objc_msgSend_textTokenRows(v23, v91, v92, v93, v94, v95);
            v101 = objc_msgSend_objectAtIndexedSubscript_(v96, v97, j, v98, v99, v100);
            v106 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, k, v103, v104, v105);
            v112 = objc_msgSend_mutableCopy(v106, v107, v108, v109, v110, v111);

            v118 = objc_msgSend_string(v112, v113, v114, v115, v116, v117);
            v123 = objc_msgSend_ch_stringByApplyingCharacterConverter_(v118, v119, converterCopy, v120, v121, v122);
            objc_msgSend_setString_(v112, v124, v123, v125, v126, v127);

            objc_msgSend_addObject_(v72, v128, v112, v129, v130, v131);
          }

          objc_msgSend_addObject_(v36, v91, v72, v93, v94, v95);
        }

        v132 = [CHTokenizedResultColumn alloc];
        v137 = objc_msgSend_initWithTokenRows_(v132, v133, v36, v134, v135, v136);
        objc_msgSend_addObject_(v146, v138, v137, v139, v140, v141);
      }

      v147 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v149, v153, 16, v22);
    }

    while (v147);
  }

  tokenColumns = selfCopy->super._tokenColumns;
  selfCopy->super._tokenColumns = v146;
}

@end