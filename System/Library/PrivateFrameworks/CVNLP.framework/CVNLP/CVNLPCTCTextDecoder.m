@interface CVNLPCTCTextDecoder
- (CVNLPCTCTextDecoder)initWithLanguageResourceBundle:(id)a3;
- (id)decodingResultForKBestPaths:(unint64_t)a3 withBeamWidth:(unint64_t)a4;
- (id)decodingResultForKBestPaths:(unint64_t)a3 withBeamWidth:(unint64_t)a4 context:(id)a5;
- (id)decodingResultWithConfiguration:(id)a3 withContext:(id)a4;
- (id)greedyDecodingResultWithConfiguration:(id)a3;
@end

@implementation CVNLPCTCTextDecoder

- (CVNLPCTCTextDecoder)initWithLanguageResourceBundle:(id)a3
{
  v4.receiver = self;
  v4.super_class = CVNLPCTCTextDecoder;
  return [(CVNLPTextDecoder *)&v4 initWithLanguageResourceBundle:a3];
}

- (id)decodingResultForKBestPaths:(unint64_t)a3 withBeamWidth:(unint64_t)a4
{
  v7 = objc_msgSend_defaultWhitespaceCommitActionBehavior(CVNLPTextDecodingConfiguration, a2, a3, a4);
  v11 = objc_msgSend_languageResourceBundle(self, v8, v9, v10);
  v14 = objc_msgSend_defaultPathScoringFunctionForLanguageResourceBundle_(CVNLPTextDecodingPath, v12, v11, v13);

  v15 = [CVNLPTextDecodingBeamSearchConfiguration alloc];
  v17 = objc_msgSend_initWithCommitActionBehavior_scoringFunction_beamWidth_pathCount_(v15, v16, v7, v14, a4, a3);
  v19 = objc_msgSend_decodingResultWithConfiguration_withContext_(self, v18, v17, 0);

  return v19;
}

- (id)decodingResultForKBestPaths:(unint64_t)a3 withBeamWidth:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v12 = objc_msgSend_defaultWhitespaceCommitActionBehavior(CVNLPTextDecodingConfiguration, v9, v10, v11);
  v16 = objc_msgSend_languageResourceBundle(self, v13, v14, v15);
  v19 = objc_msgSend_defaultPathScoringFunctionForLanguageResourceBundle_(CVNLPTextDecodingPath, v17, v16, v18);

  v20 = [CVNLPTextDecodingBeamSearchConfiguration alloc];
  v22 = objc_msgSend_initWithCommitActionBehavior_scoringFunction_beamWidth_pathCount_(v20, v21, v12, v19, a4, a3);
  v24 = objc_msgSend_decodingResultWithConfiguration_withContext_(self, v23, v22, v8);

  return v24;
}

- (id)decodingResultWithConfiguration:(id)a3 withContext:(id)a4
{
  v261 = *MEMORY[0x1E69E9840];
  v224 = a3;
  v222 = a4;
  v227 = self;
  v223 = objc_msgSend_domainType(self->_activationMatrix, v6, v7, v8) == 0;
  v9 = 0x1EECD0000uLL;
  v226 = objc_alloc_init(CVNLPCTCBeamState);
  v225 = objc_alloc_init(CVNLPCTCBeamState);
  v16 = objc_msgSend_scoringFunction(v224, v10, v11, v12);
  if (!v16)
  {
    v17 = objc_msgSend_languageResourceBundle(self, v13, v14, v15);
    v21 = objc_msgSend_pruneProblematicMixedScriptWordPaths(v224, v18, v19, v20);
    v16 = objc_msgSend_defaultPathScoringFunctionForLanguageResourceBundle_pruneProblematicMixedScriptWordPaths_(CVNLPTextDecodingPath, v22, v17, v21);
  }

  v23 = objc_msgSend_languageResourceBundle(self, v13, v14, v15);
  v220 = v16;
  v27 = objc_msgSend_characterLanguageModel(v23, v24, v25, v26);
  v31 = objc_msgSend_lmSPIType(v27, v28, v29, v30);

  if (v31 == 2)
  {
    v35 = objc_msgSend_languageResourceBundle(v227, v32, v33, v34);
    v39 = objc_msgSend_characterLanguageModel(v35, v36, v37, v38);
    v43 = objc_msgSend_languageModel(v39, v40, v41, v42);
    v44 = CVNLPLanguageModelWithStateCreate(v43);

    if (v222)
    {
      v48 = objc_msgSend_history(v222, v45, v46, v47);
      CVNLPLanguageModelWithStateUpdateWithContext(v44, v48);
    }

    __src = 0;
    v49 = 0;
  }

  else
  {
    v50 = objc_msgSend_languageResourceBundle(v227, v32, v33, v34);
    v54 = objc_msgSend_characterLanguageModel(v50, v51, v52, v53);
    v60 = objc_msgSend_history(v222, v55, v56, v57);
    if (v54)
    {
      objc_msgSend_characterTokenIDsForString_(v54, v58, v60, v59);
      v49 = v246;
      __src = v245;
    }

    else
    {
      v49 = 0;
      __src = 0;
    }

    v245 = 0;
    v246 = 0;
    v247 = 0;

    v44 = 0;
  }

  v61 = objc_msgSend_languageResourceBundle(v227, v45, v46, v47);
  v65 = objc_msgSend_wordLanguageModel(v61, v62, v63, v64);
  v69 = v65;
  if (v222 && v65)
  {
    v70 = objc_msgSend_history(v222, v66, v67, v68);
    v74 = objc_msgSend_length(v70, v71, v72, v73) == 0;

    if (v74)
    {
      v218 = 0;
      v88 = 0;
      goto LABEL_21;
    }

    v61 = objc_msgSend_inactiveSubstring(v222, v75, v76, v77);
    v81 = objc_msgSend_languageResourceBundle(v227, v78, v79, v80);
    v85 = objc_msgSend_wordLanguageModel(v81, v82, v83, v84);
    v87 = v85;
    if (v85)
    {
      objc_msgSend_wordTokenIDsForString_outTokenRanges_(v85, v86, v61, 0);
      v88 = v246;
      v218 = v245;
    }

    else
    {
      v88 = 0;
      v218 = 0;
    }

    v245 = 0;
    v246 = 0;
    v247 = 0;
  }

  else
  {

    v218 = 0;
    v88 = 0;
  }

LABEL_21:
  shouldOptimizeAlignment = objc_msgSend_shouldOptimizeAlignment(v224, v75, v76, v77);
  v90 = [CVNLPCTCTextDecodingPath alloc];
  v95 = objc_msgSend_languageResourceBundle(v227, v91, v92, v93);
  v257 = 0;
  v258 = 0;
  v259 = 0;
  if (v49 != __src)
  {
    if (((v49 - __src) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  __p = 0;
  v255 = 0;
  v256 = 0;
  if (v88 != v218)
  {
    if (((v88 - v218) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1D9D84AB0();
  }

  hasContext = objc_msgSend_initWithLanguageResourceBundle_scoringFunction_initialCharacterLMState_characterTokenIDs_wordTokenIDs_optimizingAlignment_hasContext_(v90, v94, v95, v220, v44, &v257, &__p, shouldOptimizeAlignment, v222 != 0);
  if (__p)
  {
    v255 = __p;
    operator delete(__p);
  }

  if (v257)
  {
    v258 = v257;
    operator delete(v257);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  objc_msgSend_setBlankLogProbability_(hasContext, v96, v97, v98, 0.0);
  objc_msgSend_setNonBlankLogProbability_(hasContext, v99, v100, v101, -1022.0);
  v105 = objc_msgSend_languageResourceBundle(v227, v102, v103, v104);
  v108 = objc_msgSend_packagedLexiconCursorsUsingContext_(v105, v106, v222, v107);
  objc_msgSend_setCursors_(hasContext, v109, v108, v110);

  objc_msgSend_addPath_(v226, v111, hasContext, v112);
  for (i = 0; i < objc_msgSend_timestepCount(v227->_activationMatrix, v113, v114, v115); ++i)
  {
    v120 = objc_autoreleasePoolPush();
    v121 = objc_alloc_init((v9 + 2392));
    objc_msgSend_logProbabilityForBlankAtTimestep_(v227->_activationMatrix, v122, i, v123);
    v125 = v124;
    v126 = v9;
    v245 = 0;
    v246 = &v245;
    v247 = 0x4812000000;
    v248 = sub_1D9DD03BC;
    v249 = sub_1D9DD03E0;
    v250 = &unk_1D9DF809A;
    v252 = 0;
    v253 = 0;
    v251 = 0;
    activationMatrix = v227->_activationMatrix;
    v243[0] = MEMORY[0x1E69E9820];
    v243[1] = 3221225472;
    v243[2] = sub_1D9DD0458;
    v243[3] = &unk_1E858E4D0;
    v244 = v223;
    v243[4] = &v245;
    objc_msgSend_enumerateNonBlankCandidatesInTimestep_block_(activationMatrix, v128, i, v243);
    v235[0] = MEMORY[0x1E69E9820];
    v129 = v125;
    v235[1] = 3221225472;
    v235[2] = sub_1D9DD0608;
    v235[3] = &unk_1E858E4F8;
    v241 = i;
    v235[4] = v227;
    v242 = v129;
    v130 = v121;
    v236 = v130;
    v240 = &v245;
    v131 = v224;
    v237 = v131;
    v132 = v226;
    v238 = v132;
    v133 = v225;
    v239 = v133;
    objc_msgSend_enumeratePathsWithBlock_(v132, v134, v235, v135);
    if (objc_msgSend_shouldApplyWordLMToLastWord(v131, v136, v137, v138) && i == objc_msgSend_timestepCount(v227->_activationMatrix, v139, v140, v141) - 1)
    {
      objc_msgSend_applyWordLanguageModelProbabilityToPaths(v130, v139, v140, v141);
    }

    v233 = v133;
    v234 = v132;
    v142 = objc_msgSend_beamWidth(v131, v139, v140, v141);
    objc_msgSend_kBest_discarded_k_shouldUpdateLMState_(v130, v143, &v234, &v233, v142, 1);
    v226 = v234;

    v9 = v126;
    v225 = v233;

    _Block_object_dispose(&v245, 8);
    v144 = v251;
    if (v251)
    {
      v145 = v252;
      v146 = v251;
      if (v252 != v251)
      {
        do
        {
          v147 = *(v145 - 2);
          v145 -= 16;
        }

        while (v145 != v144);
        v146 = v251;
      }

      v252 = v144;
      operator delete(v146);
    }

    objc_autoreleasePoolPop(v120);
  }

  objc_msgSend_mergePathsWithTrailingWhitespaces(v226, v117, v118, v119);
  v232 = 0;
  v151 = objc_msgSend_pathCount(v224, v148, v149, v150);
  objc_msgSend_kBest_discarded_k_shouldUpdateLMState_(v226, v152, &v232, 0, v151, 0);
  v153 = v232;
  v157 = objc_msgSend_sortedKeys(v153, v154, v155, v156);
  v158 = MEMORY[0x1E695DF70];
  v162 = objc_msgSend_count(v157, v159, v160, v161);
  v165 = objc_msgSend_arrayWithCapacity_(v158, v163, v162, v164);
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v166 = v157;
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v167, &v228, v260, 16);
  if (v170)
  {
    v171 = *v229;
    do
    {
      for (j = 0; j != v170; ++j)
      {
        if (*v229 != v171)
        {
          objc_enumerationMutation(v166);
        }

        v173 = objc_msgSend_pathForString_(v153, v168, *(*(&v228 + 1) + 8 * j), v169);
        v177 = objc_msgSend_timestepCount(v227->_activationMatrix, v174, v175, v176);
        v179 = objc_msgSend_tokensWithTimestep_isFinalTimestep_(v173, v178, v177 - 1, 1);
        v180 = [CVNLPTextDecodingResultCandidate alloc];
        objc_msgSend_normalizedTotalLogProbability(v173, v181, v182, v183);
        v185 = v184;
        objc_msgSend_normalizedActivationLogProbability(v173, v186, v187, v188);
        v190 = v189;
        v191 = exp(v185);
        v192 = exp(v190);
        v195 = objc_msgSend_initWithTokens_score_activationScore_(v180, v193, v179, v194, v191, v192);
        objc_msgSend_addObject_(v165, v196, v195, v197);
      }

      v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v166, v168, &v228, v260, 16);
    }

    while (v170);
  }

  v201 = objc_msgSend_count(v165, v198, v199, v200);
  if (v201 <= objc_msgSend_pathCount(v224, v202, v203, v204))
  {
    v210 = v165;
  }

  else
  {
    v208 = objc_msgSend_pathCount(v224, v205, v206, v207);
    v210 = objc_msgSend_subarrayWithRange_(v165, v209, 0, v208);
  }

  v211 = v210;
  v212 = [CVNLPTextDecodingResult alloc];
  v215 = objc_msgSend_initWithCandidates_(v212, v213, v211, v214);

  if (v218)
  {
    operator delete(v218);
  }

  if (__src)
  {
    operator delete(__src);
  }

  v216 = *MEMORY[0x1E69E9840];

  return v215;
}

- (id)greedyDecodingResultWithConfiguration:(id)a3
{
  v142[1] = *MEMORY[0x1E69E9840];
  v138 = a3;
  v7 = objc_msgSend_characterObservations(self->_activationMatrix, v4, v5, v6);
  v11 = objc_msgSend_blankIndex(self->_activationMatrix, v8, v9, v10);
  v14 = objc_msgSend_objectAtIndexedSubscript_(v7, v12, v11, v13);

  v15 = objc_alloc(MEMORY[0x1E696AD60]);
  v140 = objc_msgSend_initWithString_(v15, v16, &stru_1F554FF38, v17);
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20);
  v135 = v21;
  if (objc_msgSend_timestepCount(self->_activationMatrix, v22, v23, v24) < 1)
  {
    v139 = 0;
    v70 = 0;
    v31 = 0.0;
    v32 = 0.0;
  }

  else
  {
    if (v138)
    {
      v28 = 0;
      v29 = 0;
      v139 = 0;
      v30 = 0;
      v134 = 0;
      v31 = 0.0;
      v136 = 1;
      v32 = 0.0;
      while (v28 < objc_msgSend_timestepCount(self->_activationMatrix, v25, v26, v27))
      {
        v141 = 0.0;
        v34 = objc_msgSend_topCandidateForTimestep_outputLogProbability_outputIndex_(self->_activationMatrix, v33, v28, &v141, 0);
        v35 = v141;
        if (objc_msgSend_isEqualToString_(v34, v36, v14, v37))
        {
          ++v30;
          v32 = v141 + v32;
        }

        else
        {
          isEqualToString = objc_msgSend_isEqualToString_(v34, v38, v29, v39);
          ++v30;
          v32 = v141 + v32;
          if ((isEqualToString & 1) == 0)
          {
            v44 = objc_msgSend_commitActionBlock(v138, v41, v42, v43);
            v45 = v44 == 0;

            if (!v45 && (objc_msgSend_commitActionBlock(v138, v46, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v139, v50, v51, v52), v53 = objc_claimAutoreleasedReturnValue(), v54 = (v49)[2](v49, v53, v34), v53, v49, v54) && objc_msgSend_length(v140, v46, v55, v48))
            {
              if (v136)
              {
                v136 = 1;
              }

              else
              {
                if (v54 == 2)
                {
                  v137 = v34;
                }

                else
                {
                  objc_msgSend_appendString_(v140, v46, v34, v48);
                  v137 = 0;
                }

                v56 = [CVNLPTextDecodingToken alloc];
                v57 = exp(v32);
                v61 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v58, v59, v60, v57);
                v63 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v56, v62, v140, v61, &unk_1F5554B40, v134, v30, v137);

                objc_msgSend_addObject_(v135, v64, v63, v65);
                v66 = objc_alloc(MEMORY[0x1E696AD60]);
                v69 = objc_msgSend_initWithString_(v66, v67, &stru_1F554FF38, v68);

                v136 = 0;
                v134 += v30;
                v32 = 0.0;
                v139 = v63;
                v140 = v69;
                v30 = 0;
              }
            }

            else
            {
              objc_msgSend_appendString_(v140, v46, v34, v48);
              v136 = 0;
            }
          }
        }

        v31 = v35 + v31;
        ++v28;
        v29 = v34;
      }
    }

    else
    {
      v71 = 0;
      v29 = 0;
      v31 = 0.0;
      v32 = 0.0;
      while (v71 < objc_msgSend_timestepCount(self->_activationMatrix, v25, v26, v27))
      {
        v141 = 0.0;
        v73 = objc_msgSend_topCandidateForTimestep_outputLogProbability_outputIndex_(self->_activationMatrix, v72, v71, &v141, 0);
        v74 = v141;
        if (objc_msgSend_isEqualToString_(v73, v75, v14, v76))
        {
          v79 = v141;
        }

        else
        {
          v80 = objc_msgSend_isEqualToString_(v73, v77, v29, v78);
          v79 = v141;
          if ((v80 & 1) == 0)
          {
            objc_msgSend_appendString_(v140, v81, v73, v82);
          }
        }

        v31 = v74 + v31;
        v32 = v79 + v32;
        ++v71;
        v29 = v73;
      }

      v139 = 0;
      v134 = 0;
    }

    v70 = v134;
    v21 = v135;
  }

  if (objc_msgSend_length(v140, v25, v26, v27))
  {
    v86 = objc_msgSend_timestepCount(self->_activationMatrix, v83, v84, v85);
    v87 = [CVNLPTextDecodingToken alloc];
    v88 = exp(v32);
    v92 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v89, v90, v91, v88);
    v94 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v87, v93, v140, v92, &unk_1F5554B40, v70, v86 - v70, 0);

    v139 = v94;
    v21 = v135;
    objc_msgSend_addObject_(v135, v95, v94, v96);
  }

  else if (objc_msgSend_count(v21, v83, v84, v85) && v139)
  {
    v100 = objc_msgSend_activationRange(v139, v97, v98, v99);
    v104 = objc_msgSend_timestepCount(self->_activationMatrix, v101, v102, v103);
    v105 = [CVNLPTextDecodingToken alloc];
    v109 = objc_msgSend_string(v139, v106, v107, v108);
    v113 = objc_msgSend_score(v139, v110, v111, v112);
    v115 = objc_msgSend_initWithString_score_alignmentScore_activationRange_terminatingCharacter_(v105, v114, v109, v113, &unk_1F5554B40, v100, v104 - v100, 0);

    objc_msgSend_removeLastObject(v135, v116, v117, v118);
    objc_msgSend_addObject_(v135, v119, v115, v120);

    v21 = v135;
  }

  v121 = [CVNLPTextDecodingResultCandidate alloc];
  v122 = exp(v31);
  v125 = objc_msgSend_initWithTokens_score_activationScore_(v121, v123, v21, v124, v122, v122);
  v126 = [CVNLPTextDecodingResult alloc];
  v142[0] = v125;
  v128 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v127, v142, 1);
  v131 = objc_msgSend_initWithCandidates_(v126, v129, v128, v130);

  v132 = *MEMORY[0x1E69E9840];

  return v131;
}

@end