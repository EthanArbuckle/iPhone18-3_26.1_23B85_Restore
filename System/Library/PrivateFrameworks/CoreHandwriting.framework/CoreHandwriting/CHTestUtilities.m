@interface CHTestUtilities
+ (id)loadStrokeGroupsFromFile:(id)a3 outStrokeProvider:(id *)a4 outGroupTranscriptions:(id *)a5;
+ (id)strokeGroupFromStrokeIndexes:(id)a3 offset:(int64_t)a4 strokeProvider:(id)a5 classification:(int64_t)a6;
@end

@implementation CHTestUtilities

+ (id)loadStrokeGroupsFromFile:(id)a3 outStrokeProvider:(id *)a4 outGroupTranscriptions:(id *)a5
{
  v291[1] = *MEMORY[0x1E69E9840];
  v254 = a3;
  v258 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7, v8, v9);
  v256 = objc_msgSend_array(MEMORY[0x1E695DF70], v10, v11, v12, v13, v14);
  objc_msgSend_setStrokeIdentifierOffset_(CHClientStroke, v15, 0, v16, v17, v18);
  v19 = [CHClientStrokeProvider alloc];
  v257 = objc_msgSend_initWithURL_version_keepTextOnly_(v19, v20, v254, 0, 0, v21);
  v22 = MEMORY[0x1E695DEF0];
  v28 = objc_msgSend_path(v254, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_dataWithContentsOfFile_(v22, v29, v28, v30, v31, v32);

  v287 = 0;
  v251 = v33;
  v36 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v34, v33, 1, &v287, v35);
  v37 = v287;
  v252 = v37;
  v253 = v36;
  if (!v36 || v37)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v48 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v54 = objc_msgSend_path(v254, v49, v50, v51, v52, v53);
      v60 = objc_msgSend_debugDescription(v252, v55, v56, v57, v58, v59);
      *buf = 138412546;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      *&buf[14] = v60;
      _os_log_impl(&dword_18366B000, v48, OS_LOG_TYPE_ERROR, "Failed to load json file from %@. Error: %@", buf, 0x16u);
    }

    v61 = v258;
  }

  else
  {
    v42 = objc_msgSend_objectForKeyedSubscript_(v36, v38, @"sectionsData", v39, v40, v41);
    v43 = v42 == 0;

    if (v43)
    {
      v291[0] = v253;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v44, v291, 1, v46, v47);
    }

    else
    {
      objc_msgSend_objectForKeyedSubscript_(v253, v44, @"sectionsData", v45, v46, v47);
    }

    v285 = 0u;
    v286 = 0u;
    v283 = 0u;
    obj = v284 = 0u;
    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v283, v290, 16, v63);
    if (v64)
    {
      v69 = 0;
      v259 = *v284;
      do
      {
        v260 = v64;
        for (i = 0; i != v260; ++i)
        {
          if (*v284 != v259)
          {
            objc_enumerationMutation(obj);
          }

          v71 = *(*(&v283 + 1) + 8 * i);
          v72 = objc_msgSend_objectForKeyedSubscript_(v71, v65, @"data", v66, v67, v68);
          v78 = objc_msgSend_count(v72, v73, v74, v75, v76, v77);
          v87 = objc_msgSend_objectForKeyedSubscript_(v71, v79, @"legibility", v80, v81, v82);
          if (!v87 || (objc_msgSend_objectForKeyedSubscript_(v71, v83, @"legibility", v84, v85, v86), v88 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend_integerValue(v88, v89, v90, v91, v92, v93) == -1, v88, v87, !v94))
          {
            v95 = objc_msgSend_objectForKeyedSubscript_(v71, v83, @"segmentationStrokes", v84, v85, v86);
            v96 = v95 == 0;

            if (v96)
            {
              v151 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v97, 0, v78, v99, v100);
              v153 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v152, v151, v69, v257, 1);
              objc_msgSend_addObject_(v258, v154, v153, v155, v156, v157);

              objc_msgSend_addObject_(v256, v158, &stru_1EF1C0318, v159, v160, v161);
              goto LABEL_29;
            }

            v261 = objc_msgSend_objectForKeyedSubscript_(v71, v97, @"string", v98, v99, v100);
            v105 = objc_msgSend_objectForKeyedSubscript_(v71, v101, @"segmentationStrokes", v102, v103, v104);
            v110 = objc_msgSend_objectForKeyedSubscript_(v71, v106, @"annotatedCutPoints", v107, v108, v109);
            v119 = objc_msgSend_objectForKeyedSubscript_(v71, v111, @"type", v112, v113, v114);
            if (!v119 || (objc_msgSend_objectForKeyedSubscript_(v71, v115, @"type", v116, v117, v118), v120 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v120, v121, @"text", v122, v123, v124), v120, v119, isEqualToString))
            {
              v126 = objc_msgSend_objectForKeyedSubscript_(v71, v115, @"unicodeCodePoints", v116, v117, v118);
              if (objc_msgSend_indexOfObjectPassingTest_(v126, v127, &unk_1EF1C0138, v128, v129, v130) == 0x7FFFFFFFFFFFFFFFLL)
              {
                v135 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v131, 0, v78, v133, v134);
                v137 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v136, v135, v69, v257, 1);
                objc_msgSend_addObject_(v258, v138, v137, v139, v140, v141);

                v146 = objc_msgSend_objectForKeyedSubscript_(v71, v142, @"string", v143, v144, v145);
                objc_msgSend_addObject_(v256, v147, v146, v148, v149, v150);
                goto LABEL_26;
              }

              v162 = objc_msgSend_objectForKeyedSubscript_(v71, v131, @"segmentationCodePoints", v132, v133, v134);
              v167 = objc_msgSend_indexesOfObjectsPassingTest_(v162, v163, &unk_1EF1C0158, v164, v165, v166);
              v173 = objc_msgSend_mutableCopy(v167, v168, v169, v170, v171, v172);

              objc_msgSend_addIndex_(v173, v174, 0x7FFFFFFFLL, v175, v176, v177);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              v289 = 0;
              v274[0] = MEMORY[0x1E69E9820];
              v274[1] = 3221225472;
              v274[2] = sub_1839BC04C;
              v274[3] = &unk_1E6DE0DD0;
              v281 = buf;
              v275 = v105;
              v276 = v258;
              v282 = v69;
              v277 = v257;
              v278 = v256;
              v279 = v110;
              v146 = v162;
              v280 = v146;
              objc_msgSend_enumerateIndexesUsingBlock_(v173, v178, v274, v179, v180, v181);

LABEL_25:
              _Block_object_dispose(buf, 8);

LABEL_26:
              goto LABEL_27;
            }

            v182 = objc_msgSend_objectForKeyedSubscript_(v71, v115, @"type", v116, v117, v118);
            v187 = objc_msgSend_isEqualToString_(v182, v183, @"math", v184, v185, v186);

            if (v187)
            {
              if (objc_msgSend_containsString_(v261, v188, @"\\\\", v189, v190, v191) && (objc_msgSend_containsString_(v261, v192, @"\\hline"", v193, v194, v195) & 1) == 0)
              {
                v212 = objc_msgSend_objectForKeyedSubscript_(v71, v192, @"inkElements", v196, v194, v195);
                v218 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v213, v214, v215, v216, v217);
                v223 = objc_msgSend_componentsSeparatedByCharactersInSet_(v261, v219, v218, v220, v221, v222);

                v228 = objc_msgSend_indexesOfObjectsPassingTest_(v223, v224, &unk_1EF1C0198, v225, v226, v227);
                v173 = objc_msgSend_mutableCopy(v228, v229, v230, v231, v232, v233);

                objc_msgSend_addIndex_(v173, v234, 0x7FFFFFFFLL, v235, v236, v237);
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                v289 = 0;
                v273[0] = 0;
                v273[1] = v273;
                v273[2] = 0x2020000000;
                v273[3] = -1;
                v262[0] = MEMORY[0x1E69E9820];
                v262[1] = 3221225472;
                v262[2] = sub_1839BC470;
                v262[3] = &unk_1E6DE0DF8;
                v146 = v223;
                v263 = v146;
                v270 = v273;
                v271 = buf;
                v264 = v105;
                v126 = v212;
                v265 = v126;
                v266 = v258;
                v272 = v69;
                v267 = v257;
                v268 = v256;
                v269 = v110;
                objc_msgSend_enumerateIndexesUsingBlock_(v173, v238, v262, v239, v240, v241);

                _Block_object_dispose(v273, 8);
                goto LABEL_25;
              }

              v197 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v192, 0, v78, v194, v195);
              v199 = objc_msgSend_strokeGroupFromStrokeIndexes_offset_strokeProvider_classification_(CHTestUtilities, v198, v197, v69, v257, 3);
              objc_msgSend_addObject_(v258, v200, v199, v201, v202, v203);

              v126 = objc_msgSend_objectForKeyedSubscript_(v71, v204, @"string", v205, v206, v207);
              objc_msgSend_addObject_(v256, v208, v126, v209, v210, v211);
LABEL_27:
            }
          }

LABEL_29:

          v69 += v78;
        }

        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v65, &v283, v290, 16, v68);
      }

      while (v64);
    }

    if (a4)
    {
      v247 = v257;
      *a4 = v257;
    }

    if (a5)
    {
      *a5 = objc_msgSend_copy(v256, v242, v243, v244, v245, v246);
    }

    v61 = objc_msgSend_copy(v258, v242, v243, v244, v245, v246);
  }

  return v61;
}

+ (id)strokeGroupFromStrokeIndexes:(id)a3 offset:(int64_t)a4 strokeProvider:(id)a5 classification:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1839BCC34;
  v63 = sub_1839BCC44;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1839BCC34;
  v57 = sub_1839BCC44;
  v58 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x5012000000;
  v48 = sub_1839BCC4C;
  v49 = nullsub_79;
  v50 = &unk_183A5AC72;
  v17 = *(MEMORY[0x1E695F050] + 16);
  v51 = *MEMORY[0x1E695F050];
  v52 = v17;
  v38 = 0;
  v39 = &v38;
  v40 = 0x4012000000;
  v41 = sub_1839BCC5C;
  v42 = nullsub_80;
  v43 = &unk_183A5AC72;
  v44 = *MEMORY[0x1E695EFF8];
  v18 = @"text-strategy";
  if (a6 == 3)
  {
    v18 = @"math-strategy";
  }

  v19 = v18;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1839BCC6C;
  v30[3] = &unk_1E6DE0E20;
  v37 = a4;
  v20 = v10;
  v31 = v20;
  v21 = v16;
  v32 = v21;
  v33 = &v59;
  v34 = &v38;
  v35 = &v53;
  v36 = &v45;
  objc_msgSend_enumerateIndexesUsingBlock_(v9, v22, v30, v23, v24, v25);
  v26 = [CHStrokeGroup alloc];
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v26, v27, v21, v60[5], v54[5], a6, v19, v46[6], v46[7], v46[8], v46[9], 1.0, v39[6], v39[7]);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin;
}

@end