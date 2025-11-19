@interface CHMathPostProcessingManager
+ (id)concatenateTokensIntoTranscription:(id)a3 tokenSeparator:(id)a4;
+ (id)tokenizedTextResultFromTokenizedMathResult:(id)a3 locale:(id)a4;
+ (unique_ptr<CoreHandwriting::LaTeXSyntaxHelper,)createLatexHelperFromMathCodemap:(id)a3;
- (CHMathPostProcessingManager)init;
- (CHMathPostProcessingManager)initWithSequence:(id)a3;
- (CHMathPostProcessingManager)initWithStep:(id)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHMathPostProcessingManager

- (CHMathPostProcessingManager)init
{
  v6.receiver = self;
  v6.super_class = CHMathPostProcessingManager;
  v2 = [(CHMathPostProcessingManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    sequence = v2->_sequence;
    v2->_sequence = v3;
  }

  return v2;
}

- (CHMathPostProcessingManager)initWithStep:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DEC8]);
  v10 = objc_msgSend_initWithObjects_(v5, v6, v4, v7, v8, v9, 0);
  v15 = objc_msgSend_initWithSequence_(self, v11, v10, v12, v13, v14);

  return v15;
}

- (CHMathPostProcessingManager)initWithSequence:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHMathPostProcessingManager;
  v6 = [(CHMathPostProcessingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sequence, a3);
  }

  return v7;
}

- (id)process:(id)a3 options:(id)a4
{
  v6 = a3;
  v12 = a4;
  for (i = 0; ; ++i)
  {
    v14 = objc_msgSend_sequence(self, v7, v8, v9, v10, v11);
    v20 = objc_msgSend_count(v14, v15, v16, v17, v18, v19);

    if (i >= v20)
    {
      break;
    }

    v26 = objc_msgSend_sequence(self, v21, v22, v23, v24, v25);
    v31 = objc_msgSend_objectAtIndex_(v26, v27, i, v28, v29, v30);

    v35 = objc_msgSend_process_options_(v31, v32, v6, v12, v33, v34);

    v6 = v35;
  }

  return v6;
}

+ (id)tokenizedTextResultFromTokenizedMathResult:(id)a3 locale:(id)a4
{
  v246 = *MEMORY[0x1E69E9840];
  v182 = a3;
  v177 = a4;
  v174 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v175 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  v25 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v15, v16, v17, v18, v19);
  for (i = 0; ; ++i)
  {
    v26 = objc_msgSend_transcriptionPaths(v182, v20, v21, v22, v23, v24);
    v32 = i < objc_msgSend_count(v26, v27, v28, v29, v30, v31);

    if (!v32)
    {
      break;
    }

    v38 = objc_msgSend_transcriptionPaths(v182, v33, v34, v35, v36, v37);
    v181 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, i, v40, v41, v42);

    v178 = objc_msgSend_array(MEMORY[0x1E695DF70], v43, v44, v45, v46, v47);
    v238 = 0;
    v239 = &v238;
    v240 = 0x2020000000;
    v241 = 0;
    v234 = 0;
    v235 = &v234;
    v236 = 0x2020000000;
    v237 = 0;
    v179 = objc_msgSend_string(MEMORY[0x1E696AD60], v48, v49, v50, v51, v52);
    v180 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v53, v54, v55, v56, v57);
    v226 = 0;
    v227 = &v226;
    v228 = 0x5012000000;
    v229 = sub_1836742A4;
    v230 = nullsub_1;
    v231 = &unk_183A5AC72;
    v58 = *(MEMORY[0x1E695F050] + 16);
    v232 = *MEMORY[0x1E695F050];
    v233 = v58;
    v222 = 0;
    v223 = &v222;
    v224 = 0x2020000000;
    v225 = 0;
    v218 = 0;
    v219 = &v218;
    v220 = 0x2020000000;
    v221 = 0;
    v214 = 0;
    v215 = &v214;
    v216 = 0x2020000000;
    v217 = 8;
    v210 = 0;
    v211 = &v210;
    v212 = 0x2020000000;
    v213 = 4;
    v209[0] = 0;
    v209[1] = v209;
    v209[2] = 0x2020000000;
    v209[3] = 0;
    v208[0] = 0;
    v208[1] = v208;
    v208[2] = 0x2020000000;
    v208[3] = 0;
    v64 = objc_msgSend_tokenColumnCount(v182, v59, v60, v61, v62, v63);
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = sub_1836742B4;
    v192[3] = &unk_1E6DDBD78;
    v197 = &v238;
    v198 = &v234;
    v199 = &v218;
    v200 = v208;
    v65 = v180;
    v193 = v65;
    v66 = v179;
    v194 = v66;
    v201 = &v222;
    v202 = &v214;
    v67 = v177;
    v195 = v67;
    v203 = &v210;
    v204 = &v226;
    v68 = v178;
    v196 = v68;
    v205 = v209;
    v206 = a1;
    v207 = 8388610;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v182, v69, v181, 0, v64, v192);
    v70 = v239;
    v70[3] = exp(v239[3] / v235[3]);
    if (objc_msgSend_length(v66, v71, v72, v73, v74, v75))
    {
      v81 = v223;
      v81[3] = exp(v223[3] / v219[3]);
      v87 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v82, v83, v84, v85, v86);
      v92 = objc_msgSend_stringByTrimmingCharactersInSet_(v66, v88, v87, v89, v90, v91);
      v97 = objc_msgSend_textTranscriptionForLatex_(CHTokenizedMathResult, v93, v92, v94, v95, v96);

      v98 = [CHTokenizedTextResultToken alloc];
      v104 = objc_msgSend_copy(v65, v99, v100, v101, v102, v103);
      v105 = v223[3];
      v106 = v215[3];
      v107 = v211[3];
      v113 = objc_msgSend_count(v65, v108, v109, v110, v111, v112);
      v115 = objc_msgSend_initWithString_strokeIndexes_wordID_modelScore_recognitionScore_combinedScore_alignmentScore_properties_recognizerSourceLocale_inputSources_substrokeCount_bounds_(v98, v114, v97, v104, 0, v106, v67, v107, v105, v105, v105, 1.0, v227[6], v227[7], v227[8], v227[9], v113);

      objc_msgSend_addObject_(v68, v116, v115, v117, v118, v119);
    }

    if (!i)
    {
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v120 = v68;
      v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v142, &v188, v245, 16, v143);
      if (v149)
      {
        v150 = *v189;
        do
        {
          for (j = 0; j != v149; ++j)
          {
            if (*v189 != v150)
            {
              objc_enumerationMutation(v120);
            }

            v152 = objc_msgSend_strokeIndexes(*(*(&v188 + 1) + 8 * j), v144, v145, v146, v147, v148);
            objc_msgSend_addIndexes_(v25, v153, v152, v154, v155, v156);
          }

          v149 = objc_msgSend_countByEnumeratingWithState_objects_count_(v120, v144, &v188, v245, 16, v148);
        }

        while (v149);
      }

LABEL_26:

      objc_msgSend_addObject_(v174, v157, v68, v158, v159, v160);
      v120 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v161, v162, v163, v164, v165, v239[3]);
      objc_msgSend_addObject_(v175, v166, v120, v167, v168, v169);
      goto LABEL_27;
    }

    v120 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v76, v77, v78, v79, v80);
    v186 = 0u;
    v187 = 0u;
    v184 = 0u;
    v185 = 0u;
    v121 = v68;
    v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v122, &v184, v244, 16, v123);
    if (v129)
    {
      v130 = *v185;
      do
      {
        for (k = 0; k != v129; ++k)
        {
          if (*v185 != v130)
          {
            objc_enumerationMutation(v121);
          }

          v132 = objc_msgSend_strokeIndexes(*(*(&v184 + 1) + 8 * k), v124, v125, v126, v127, v128);
          objc_msgSend_addIndexes_(v120, v133, v132, v134, v135, v136);
        }

        v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v121, v124, &v184, v244, 16, v128);
      }

      while (v129);
    }

    if (objc_msgSend_isEqualToIndexSet_(v120, v137, v25, v138, v139, v140))
    {
      goto LABEL_26;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v141 = qword_1EA84DC58;
    if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v243 = i;
      _os_log_impl(&dword_18366B000, v141, OS_LOG_TYPE_ERROR, "Skipping invalid alternative math transcription path (%lu) during conversion to text result.", buf, 0xCu);
    }

LABEL_27:
    _Block_object_dispose(v208, 8);
    _Block_object_dispose(v209, 8);
    _Block_object_dispose(&v210, 8);
    _Block_object_dispose(&v214, 8);
    _Block_object_dispose(&v218, 8);
    _Block_object_dispose(&v222, 8);
    _Block_object_dispose(&v226, 8);

    _Block_object_dispose(&v234, 8);
    _Block_object_dispose(&v238, 8);
  }

  v170 = [CHTokenizedTextResult alloc];
  v172 = objc_msgSend_initWithBestPathTokens_pathProbabilities_trailingSeparator_recognizerGenerationIdentifier_originalTokens_(v170, v171, v174, v175, &stru_1EF1C0318, 2, 0);

  return v172;
}

+ (id)concatenateTokensIntoTranscription:(id)a3 tokenSeparator:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_msgSend_string(MEMORY[0x1E696AD60], v7, v8, v9, v10, v11);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v5;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v36, v40, 16, v15);
  if (v21)
  {
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        if (objc_msgSend_length(v12, v16, v17, v18, v19, v20, v36))
        {
          objc_msgSend_appendString_(v12, v25, v6, v27, v28, v29);
        }

        v30 = objc_msgSend_string(v24, v25, v26, v27, v28, v29);
        objc_msgSend_appendString_(v12, v31, v30, v32, v33, v34);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v36, v40, 16, v20);
    }

    while (v21);
  }

  return v12;
}

+ (unique_ptr<CoreHandwriting::LaTeXSyntaxHelper,)createLatexHelperFromMathCodemap:(id)a3
{
  v27[19] = *MEMORY[0x1E69E9840];
  v3 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v23 = a3;
  v26 = v27;
  while (objc_msgSend_count(v23, v4, v5, v6, v7, v8) > v3)
  {
    v13 = objc_msgSend_objectAtIndexedSubscript_(v23, v9, v3, v10, v11, v12);
    v14 = v13;
    v20 = objc_msgSend_UTF8String(v13, v15, v16, v17, v18, v19);
    v21 = strlen(v20);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_183688FF0();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v25) = v21;
    if (v21)
    {
      memmove(__dst, v20, v21);
    }

    *(__dst + v22) = 0;
    *(sub_1836892B0(&v26, __dst) + 14) = v3;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    ++v3;
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v25 = 0;
  operator new();
}

@end