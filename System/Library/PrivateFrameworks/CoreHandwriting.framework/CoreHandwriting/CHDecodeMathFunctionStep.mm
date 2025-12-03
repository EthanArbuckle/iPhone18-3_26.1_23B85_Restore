@interface CHDecodeMathFunctionStep
+ (BOOL)isFunctionInTranscriptionPathWrappedByAnyStringFromArray:(id)array functionName:(id)name pathTranscription:(id)transcription functionStartLocation:(int64_t)location;
+ (id)definedMathFunctionNameSet;
- (CHDecodeMathFunctionStep)init;
- (id)_sortedFunctionNames:(id)names;
- (id)process:(id)process options:(id)options;
@end

@implementation CHDecodeMathFunctionStep

+ (id)definedMathFunctionNameSet
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v8 = objc_msgSend_definedMathFunctionNameMapping(v2, v3, v4, v5, v6, v7);
  v14 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10, v11, v12, v13);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = objc_msgSend_allKeys(v8, v15, v16, v17, v18, v19, 0);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v41, v45, 16, v22);
  if (v26)
  {
    v27 = *v42;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v29 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(*(*(&v41 + 1) + 8 * i), v23, @" ", &stru_1EF1C0318, v24, v25);
        objc_msgSend_addObject_(v14, v30, v29, v31, v32, v33);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v41, v45, 16, v25);
    }

    while (v26);
  }

  v39 = objc_msgSend_copy(v14, v34, v35, v36, v37, v38);

  return v39;
}

- (CHDecodeMathFunctionStep)init
{
  v112 = *MEMORY[0x1E69E9840];
  v108.receiver = self;
  v108.super_class = CHDecodeMathFunctionStep;
  v2 = [(CHDecodeMathFunctionStep *)&v108 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v9 = objc_msgSend_definedMathFunctionNameMapping(v3, v4, v5, v6, v7, v8);
    mathFunctionNameMapping = v2->_mathFunctionNameMapping;
    v95 = v2;
    v2->_mathFunctionNameMapping = v9;

    obj = objc_alloc_init(MEMORY[0x1E695DF90]);
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v16 = objc_msgSend_allKeys(v2->_mathFunctionNameMapping, v11, v12, v13, v14, v15);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v104, v111, 16, v18);
    if (v19)
    {
      v90 = v16;
      v91 = *v105;
      do
      {
        v20 = 0;
        v92 = v19;
        do
        {
          if (*v105 != v91)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v104 + 1) + 8 * v20);
          v94 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v27 = objc_msgSend_allKeys(v2->_mathFunctionNameMapping, v22, v23, v24, v25, v26);
          v93 = v20;
          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v100, v110, 16, v29);
          if (v35)
          {
            v36 = *v101;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v101 != v36)
                {
                  objc_enumerationMutation(v27);
                }

                v38 = *(*(&v100 + 1) + 8 * i);
                v39 = objc_msgSend_length(v38, v30, v31, v32, v33, v34);
                if (v39 > objc_msgSend_length(v21, v40, v41, v42, v43, v44) && objc_msgSend_rangeOfString_(v38, v30, v21, v32, v33, v34) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v45 = objc_msgSend_objectForKey_(v95->_mathFunctionNameMapping, v30, v38, v32, v33, v34);
                  v50 = objc_msgSend_rangeOfString_(v45, v46, @"\\mathrm", v47, v48, v49) == 0x7FFFFFFFFFFFFFFFLL;

                  if (!v50)
                  {
                    v51 = objc_msgSend_objectForKey_(v95->_mathFunctionNameMapping, v30, v38, v32, v33, v34);
                    objc_msgSend_addObject_(v94, v52, v51, v53, v54, v55);
                  }
                }
              }

              v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v100, v110, 16, v34);
            }

            while (v35);
          }

          if (objc_msgSend_count(v94, v56, v57, v58, v59, v60))
          {
            objc_msgSend_setValue_forKey_(obj, v61, v94, v21, v62, v63);
          }

          v20 = v93 + 1;
          v2 = v95;
          v16 = v90;
        }

        while (v93 + 1 != v92);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v90, v64, &v104, v111, 16, v65);
      }

      while (v19);
    }

    objc_storeStrong(&v95->_stemFunctionMappings, obj);
    v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v72 = objc_msgSend_allKeys(v95->_stemFunctionMappings, v67, v68, v69, v70, v71);
    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v96, v109, 16, v74);
    if (v79)
    {
      v80 = *v97;
      do
      {
        for (j = 0; j != v79; ++j)
        {
          if (*v97 != v80)
          {
            objc_enumerationMutation(v72);
          }

          v82 = objc_msgSend_objectForKey_(v95->_stemFunctionMappings, v75, *(*(&v96 + 1) + 8 * j), v76, v77, v78);
          objc_msgSend_addObjectsFromArray_(v66, v83, v82, v84, v85, v86);
        }

        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v75, &v96, v109, 16, v78);
      }

      while (v79);
    }

    decoratedFunctions = v95->_decoratedFunctions;
    v95->_decoratedFunctions = v66;

    return v95;
  }

  return v2;
}

- (id)_sortedFunctionNames:(id)names
{
  v6 = objc_msgSend_allKeys(names, a2, names, v3, v4, v5);
  v11 = objc_msgSend_sortedArrayUsingComparator_(v6, v7, &unk_1EF1BB360, v8, v9, v10);

  return v11;
}

+ (BOOL)isFunctionInTranscriptionPathWrappedByAnyStringFromArray:(id)array functionName:(id)name pathTranscription:(id)transcription functionStartLocation:(int64_t)location
{
  v61 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  nameCopy = name;
  transcriptionCopy = transcription;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = arrayCopy;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v56, v60, 16, v12);
  if (v18)
  {
    v19 = *v57;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * i);
        v22 = objc_msgSend_length(v21, v13, v14, v15, v16, v17);
        v24 = objc_msgSend_rangeOfString_options_range_(v21, v23, nameCopy, 0, 0, v22);
        v25 = v24;
        if (v24 != 0x7FFFFFFFFFFFFFFFLL && location >= v24)
        {
          v27 = objc_msgSend_length(v21, v13, v14, v15, v16, v17);
          v33 = objc_msgSend_length(transcriptionCopy, v28, v29, v30, v31, v32);
          v14 = location - v25;
          if (v27 + location - v25 <= v33)
          {
            v34 = objc_msgSend_substringWithRange_(transcriptionCopy, v13, v14, v27, v16, v17);
            v40 = objc_msgSend_lowercaseString(v34, v35, v36, v37, v38, v39);
            v46 = objc_msgSend_lowercaseString(v21, v41, v42, v43, v44, v45);
            isEqualToString = objc_msgSend_isEqualToString_(v40, v47, v46, v48, v49, v50);

            if (isEqualToString)
            {
              v52 = 1;
              goto LABEL_17;
            }
          }
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v56, v60, 16, v17);
    }

    while (v18);
  }

  v52 = 0;
LABEL_17:

  return v52;
}

- (id)process:(id)process options:(id)options
{
  v333 = *MEMORY[0x1E69E9840];
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
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHDecodeMathFunctionStep is running", buf, 2u);
  }

  v314 = objc_msgSend__sortedFunctionNames_(self, v6, self->_mathFunctionNameMapping, v7, v8, v9);
  v313 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  for (i = 0; ; ++i)
  {
    v20 = objc_msgSend_result(processCopy, v15, v16, v17, v18, v19, optionsCopy);
    v26 = objc_msgSend_transcriptionPaths(v20, v21, v22, v23, v24, v25);
    v32 = i < objc_msgSend_count(v26, v27, v28, v29, v30, v31);

    if (!v32)
    {
      break;
    }

    v38 = objc_msgSend_result(processCopy, v33, v34, v35, v36, v37);
    v44 = objc_msgSend_transcriptionPaths(v38, v39, v40, v41, v42, v43);
    v315 = objc_msgSend_objectAtIndexedSubscript_(v44, v45, i, v46, v47, v48);

    v54 = objc_msgSend_result(processCopy, v49, v50, v51, v52, v53);
    v60 = objc_msgSend_result(processCopy, v55, v56, v57, v58, v59);
    v66 = objc_msgSend_tokenColumnCount(v60, v61, v62, v63, v64, v65);
    v69 = objc_msgSend_transcriptionWithPath_columnRange_(v54, v67, v315, 0, v66, v68);

    v73 = objc_msgSend_retrievePathTokens_atPathIndex_(self, v70, processCopy, i, v71, v72);
    v79 = objc_msgSend_mutableCopy(v73, v74, v75, v76, v77, v78);

    v329 = 0u;
    v330 = 0u;
    v327 = 0u;
    v328 = 0u;
    obj = v314;
    v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v327, v332, 16, v81);
    if (v321)
    {
      v320 = *v328;
      do
      {
        for (j = 0; j != v321; ++j)
        {
          if (*v328 != v320)
          {
            objc_enumerationMutation(obj);
          }

          v326 = *(*(&v327 + 1) + 8 * j);
          v322 = objc_msgSend_objectForKeyedSubscript_(self->_mathFunctionNameMapping, v82, v326, v83, v84, v85);
          v91 = 0;
LABEL_14:
          for (k = objc_msgSend_length(v69, v86, v87, v88, v89, v90); v91 <= k - objc_msgSend_length(v326, v93, v94, v95, v96, v97); k = objc_msgSend_length(v319, v292, v293, v294, v295, v296))
          {
            v103 = objc_msgSend_length(v69, v98, v99, v100, v101, v102);
            v105 = objc_msgSend_rangeOfString_options_range_(v69, v104, v326, 1, v91, v103 - v91);
            v106 = v105;
            v107 = v86;
            if (v105)
            {
              if (v105 == 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v108 = objc_msgSend_substringWithRange_(v69, v86, v105 - 1, 1, v89, v90);
              isEqualToString = objc_msgSend_isEqualToString_(v108, v109, @" ", v110, v111, v112);

              if (!isEqualToString)
              {
                goto LABEL_13;
              }
            }

            v114 = objc_msgSend_objectForKey_(self->_stemFunctionMappings, v86, v326, v88, v89, v90);
            v115 = v114 == 0;

            if (!v115)
            {
              v116 = objc_msgSend_objectForKeyedSubscript_(self->_stemFunctionMappings, v86, v326, v88, v89, v90);
              v117 = objc_opt_class();
              isFunctionInTranscriptionPathWrappedByAnyStringFromArray_functionName_pathTranscription_functionStartLocation = objc_msgSend_isFunctionInTranscriptionPathWrappedByAnyStringFromArray_functionName_pathTranscription_functionStartLocation_(v117, v118, v116, v326, v69, v106);

              if (isFunctionInTranscriptionPathWrappedByAnyStringFromArray_functionName_pathTranscription_functionStartLocation)
              {
                goto LABEL_13;
              }
            }

            v120 = 0;
            if (v106)
            {
              v121 = 0;
              do
              {
                v122 = objc_msgSend_objectAtIndexedSubscript_(v79, v86, v120, v88, v89, v90);
                v128 = objc_msgSend_string(v122, v123, v124, v125, v126, v127);
                v134 = objc_msgSend_length(v128, v129, v130, v131, v132, v133);

                v121 += v134 + 1;
                ++v120;
              }

              while (v121 != v106);
            }

            v135 = objc_msgSend_componentsSeparatedByString_(v326, v86, @" ", v88, v89, v90);
            v141 = objc_msgSend_count(v135, v136, v137, v138, v139, v140);

            if (v141 < 1)
            {
              goto LABEL_13;
            }

            v142 = 0;
            for (m = 0; m != v141; ++m)
            {
              v144 = objc_msgSend_objectAtIndexedSubscript_(v79, v86, v120 + m, v88, v89, v90);
              v150 = objc_msgSend_properties(v144, v145, v146, v147, v148, v149);

              v142 = (v142 | (v150 >> 8)) & 1;
            }

            if (!v142)
            {
LABEL_13:
              v91 = v106 + 1;
              goto LABEL_14;
            }

            v319 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v69, v86, v106, v107, v322, v90);

            if (objc_msgSend_containsObject_(self->_decoratedFunctions, v151, v322, v152, v153, v154))
            {
              v159 = v120;
              v160 = v141;
              do
              {
                v161 = objc_msgSend_objectAtIndexedSubscript_(v79, v155, v159, v156, v157, v158);
                v162 = [CHTokenizedMathResultToken alloc];
                v324 = objc_msgSend_string(v161, v163, v164, v165, v166, v167);
                v173 = objc_msgSend_strokeIndexes(v161, v168, v169, v170, v171, v172);
                objc_msgSend_score(v161, v174, v175, v176, v177, v178);
                v180 = v179;
                objc_msgSend_bounds(v161, v181, v182, v183, v184, v185);
                v187 = v186;
                v189 = v188;
                v191 = v190;
                v193 = v192;
                v199 = objc_msgSend_maskedAlternative(v161, v194, v195, v196, v197, v198);
                objc_msgSend_maskedAlternativeScore(v161, v200, v201, v202, v203, v204);
                v207 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_maskedAlternative_maskedAlternativeScore_(v162, v205, v324, v173, 256, v199, v180, v187, v189, v191, v193, v206);

                objc_msgSend_setObject_atIndexedSubscript_(v79, v208, v207, v159, v209, v210);
                ++v159;
                --v160;
              }

              while (v160);
              v211 = [CHTokenizedMathResultToken alloc];
              v217 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v212, v213, v214, v215, v216);
              v220 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v211, v218, @"\\mathrm", v217, 1, v219, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

              v221 = [CHTokenizedMathResultToken alloc];
              v227 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v222, v223, v224, v225, v226);
              v230 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v221, v228, @"{", v227, 1, v229, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

              v231 = [CHTokenizedMathResultToken alloc];
              v237 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v232, v233, v234, v235, v236);
              v240 = objc_msgSend_initWithString_strokeIndexes_score_bounds_properties_(v231, v238, @"}", v237, 1, v239, 1.0, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

              objc_msgSend_insertObject_atIndex_(v79, v241, v240, v141 + v120, v242, v243);
              objc_msgSend_insertObject_atIndex_(v79, v244, v230, v120, v245, v246);
              objc_msgSend_insertObject_atIndex_(v79, v247, v220, v120, v248, v249);
            }

            else
            {
              v250 = objc_msgSend_objectAtIndexedSubscript_(v79, v155, v120, v156, v157, v158);
              v220 = objc_msgSend_mutableCopy(v250, v251, v252, v253, v254, v255);

              v260 = v141 - 1;
              if (v141 != 1)
              {
                v261 = v120 + 1;
                do
                {
                  v262 = objc_msgSend_objectAtIndexedSubscript_(v79, v256, v261, v257, v258, v259);
                  objc_msgSend_appendToken_(v220, v263, v262, v264, v265, v266);

                  ++v261;
                  --v260;
                }

                while (v260);
              }

              objc_msgSend_setString_(v220, v256, v322, v257, v258, v259);
              objc_msgSend_setProperties_(v220, v267, 256, v268, v269, v270);
              v274 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v271, v120, v141, v272, v273);
              objc_msgSend_removeObjectsAtIndexes_(v79, v275, v274, v276, v277, v278);

              v230 = objc_msgSend_copy(v220, v279, v280, v281, v282, v283);
              objc_msgSend_insertObject_atIndex_(v79, v284, v230, v120, v285, v286);
            }

            v91 = objc_msgSend_length(v322, v287, v288, v289, v290, v291) + v106;
            v69 = v319;
          }
        }

        v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v327, v332, 16, v85);
      }

      while (v321);
    }

    objc_msgSend_addObject_(v313, v297, v79, v298, v299, v300);
  }

  v301 = [CHTokenizedMathResult alloc];
  v306 = objc_msgSend_initWithBestPathTokens_(v301, v302, v313, v303, v304, v305);
  objc_msgSend_setResult_(processCopy, v307, v306, v308, v309, v310);

  return processCopy;
}

@end