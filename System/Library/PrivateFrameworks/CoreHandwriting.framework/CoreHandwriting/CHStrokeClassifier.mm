@interface CHStrokeClassifier
+ (double)containerSupportForPoints:(const void *)a3 withBounds:(CGRect)a4;
+ (id)nonTextCandidateForStroke:(id)a3 withSubstrokes:(id)a4;
+ (id)resultWithRefinedNonTextCandidateInResult:(id)a3 changedSupportStrokesByStrokeIdentifiers:(id)a4 strokeProvider:(id)a5;
+ (id)resultWithStrokeClassesFromScriptClassesInResult:(id)a3 strokeProvider:(id)a4 outChangedSupportStrokes:(id *)a5;
+ (id)scriptClassificationRawResultsForOneScriptClassification:(int64_t)a3 scriptCodeMap:(id)a4;
+ (int64_t)fallbackTextScriptClassificationForMathGroup:(id)a3 strokeClassificationResult:(id)a4 fromTopNCandidate:(int64_t)a5;
- (CHStrokeClassifier)initWithStrokeProvider:(id)a3 forceClass:(int64_t)a4;
- (id)updateResult:(id)a3 addingStrokes:(id)a4 removingStrokeIdentifiers:(id)a5 clutterFilter:(id)a6 affectedClutterStrokeIDs:(id)a7 cancellationBlock:(id)a8;
@end

@implementation CHStrokeClassifier

- (CHStrokeClassifier)initWithStrokeProvider:(id)a3 forceClass:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CHStrokeClassifier;
  v8 = [(CHStrokeClassifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strokeProvider, a3);
    v9->_forcedStrokeClass = a4;
  }

  return v9;
}

- (id)updateResult:(id)a3 addingStrokes:(id)a4 removingStrokeIdentifiers:(id)a5 clutterFilter:(id)a6 affectedClutterStrokeIDs:(id)a7 cancellationBlock:(id)a8
{
  v243 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v200 = a4;
  v201 = a5;
  v15 = a6;
  v16 = a7;
  v207 = a8;
  v209 = self;
  v22 = objc_msgSend_strokeProvider(self, v17, v18, v19, v20, v21, v16);
  v204 = objc_msgSend_orderedStrokes(v22, v23, v24, v25, v26, v27);

  if (v14)
  {
    v206 = objc_msgSend_mutableCopy(v14, v28, v29, v30, v31, v32);
  }

  else
  {
    v206 = objc_alloc_init(CHMutableStrokeClassificationResult);
  }

  v208 = objc_msgSend_set(MEMORY[0x1E695DFA8], v33, v34, v35, v36, v37);
  v210 = objc_msgSend_set(MEMORY[0x1E695DFA8], v38, v39, v40, v41, v42);
  v211 = objc_msgSend_mutableCopy(v201, v43, v44, v45, v46, v47);
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v48 = v16;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v228, v242, 16, v50);
  if (v56)
  {
    v57 = *v229;
    do
    {
      v58 = 0;
      do
      {
        if (*v229 != v57)
        {
          objc_enumerationMutation(v48);
        }

        v59 = *(*(&v228 + 1) + 8 * v58);
        v60 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v14, v51, v52, v53, v54, v55);
        v65 = objc_msgSend_objectForKeyedSubscript_(v60, v61, v59, v62, v63, v64);

        v71 = objc_msgSend_integerValue(v65, v66, v67, v68, v69, v70);
        isHighDensityStroke = objc_msgSend_isHighDensityStroke_(v15, v72, v59, v73, v74, v75);
        if (v71 == 8)
        {
          v81 = 0;
        }

        else
        {
          v81 = isHighDensityStroke;
        }

        if (v81 == 1)
        {
          objc_msgSend_addObject_(v210, v77, v59, v78, v79, v80);
          objc_msgSend_addObject_(v211, v82, v59, v83, v84, v85);
        }

        else
        {
          if (v71 == 8)
          {
            v86 = isHighDensityStroke;
          }

          else
          {
            v86 = 1;
          }

          if ((v86 & 1) == 0)
          {
            v87 = objc_opt_class();
            v93 = objc_msgSend_strokeProvider(v209, v88, v89, v90, v91, v92);
            v97 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v87, v94, v59, v93, v95, v96);

            if (v97)
            {
              objc_msgSend_addObject_(v208, v98, v97, v99, v100, v101);
            }

            else
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v102 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v237 = v59;
                _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_ERROR, "Unexpected nil stroke in updatedStrokeClassificationResultByAddingStrokes, encoded stroke identifier is %@. Skipping", buf, 0xCu);
              }

              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v103 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412290;
                v237 = v59;
                _os_log_impl(&dword_18366B000, v103, OS_LOG_TYPE_FAULT, "Unexpected nil stroke in updatedStrokeClassificationResultByAddingStrokes, encoded stroke identifier is %@. Skipping", buf, 0xCu);
              }
            }
          }
        }

        ++v58;
      }

      while (v56 != v58);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v51, &v228, v242, 16, v55);
    }

    while (v56);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v104 = qword_1EA84DCB0;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v110 = v104;
    v111 = objc_msgSend_count(v200, v105, v106, v107, v108, v109);
    v117 = objc_msgSend_count(v201, v112, v113, v114, v115, v116);
    v123 = objc_msgSend_count(v210, v118, v119, v120, v121, v122);
    v129 = objc_msgSend_count(v208, v124, v125, v126, v127, v128);
    *buf = 134218496;
    v237 = v111;
    v238 = 2048;
    v239 = v117;
    v240 = 2048;
    v241 = v129 + v123;
    v104 = v110;
    _os_log_impl(&dword_18366B000, v110, OS_LOG_TYPE_DEFAULT, "updatedStrokeClassificationResult with %ld added strokes, %ld removed strokes, %ld transitioned strokes", buf, 0x20u);
  }

  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  obj = v201;
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v130, &v224, v235, 16, v131);
  if (v132)
  {
    v133 = *v225;
    while (2)
    {
      for (i = 0; i != v132; ++i)
      {
        if (*v225 != v133)
        {
          objc_enumerationMutation(obj);
        }

        v135 = *(*(&v224 + 1) + 8 * i);
        if (v207[2]())
        {
          v141 = 1;
          goto LABEL_46;
        }

        objc_msgSend_updateByRemovingStrokeIdentifier_withRemovedAndClutterStrokeIDs_(v206, v136, v135, v211, v137, v138);
      }

      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v139, &v224, v235, 16, v140);
      if (v132)
      {
        continue;
      }

      break;
    }
  }

  v141 = 0;
LABEL_46:

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v203 = v210;
  v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v142, &v220, v234, 16, v143);
  if (v144)
  {
    v145 = *v221;
    while (2)
    {
      for (j = 0; j != v144; ++j)
      {
        if (*v221 != v145)
        {
          objc_enumerationMutation(v203);
        }

        v147 = *(*(&v220 + 1) + 8 * j);
        if (v207[2]())
        {
          v141 = 1;
          goto LABEL_56;
        }

        objc_msgSend_updateByTransitionedClutterStrokeIdentifier_withRemovedAndClutterStrokeIDs_(v206, v148, v147, v211, v149, v150);
      }

      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(v203, v151, &v220, v234, 16, v152);
      if (v144)
      {
        continue;
      }

      break;
    }

    v141 = 0;
  }

LABEL_56:

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v202 = v200;
  v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v153, &v216, v233, 16, v154);
  if (v155)
  {
    v156 = *v217;
    while (2)
    {
      for (k = 0; k != v155; ++k)
      {
        if (*v217 != v156)
        {
          objc_enumerationMutation(v202);
        }

        v160 = *(*(&v216 + 1) + 8 * k);
        if (v207[2]())
        {
          v141 = 1;
          goto LABEL_69;
        }

        v166 = objc_msgSend_encodedStrokeIdentifier(v160, v161, v162, v163, v164, v165);
        v171 = objc_msgSend_isHighDensityStroke_(v15, v167, v166, v168, v169, v170);

        if (v171)
        {
          objc_msgSend_updateByAddingClutterStroke_(v206, v172, v160, v174, v175, v176);
        }

        else
        {
          v177 = objc_msgSend_forcedStrokeClass(v209, v172, v173, v174, v175, v176);
          objc_msgSend_updateByAddingNonClutterStroke_withAllStrokes_forceClass_(v206, v178, v160, v204, v177, v179);
        }
      }

      v155 = objc_msgSend_countByEnumeratingWithState_objects_count_(v202, v158, &v216, v233, 16, v159);
      if (v155)
      {
        continue;
      }

      break;
    }

    v141 = 0;
  }

LABEL_69:

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v180 = v208;
  v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v181, &v212, v232, 16, v182);
  if (v183)
  {
    v184 = *v213;
    while (2)
    {
      for (m = 0; m != v183; ++m)
      {
        if (*v213 != v184)
        {
          objc_enumerationMutation(v180);
        }

        v186 = *(*(&v212 + 1) + 8 * m);
        if (v207[2]())
        {

          goto LABEL_80;
        }

        v192 = objc_msgSend_forcedStrokeClass(v209, v187, v188, v189, v190, v191);
        objc_msgSend_updateByAddingNonClutterStroke_withAllStrokes_forceClass_(v206, v193, v186, v204, v192, v194);
      }

      v183 = objc_msgSend_countByEnumeratingWithState_objects_count_(v180, v195, &v212, v232, 16, v196);
      if (v183)
      {
        continue;
      }

      break;
    }

    v197 = v206;
  }

  else
  {

    v197 = v206;
    if (v141)
    {
LABEL_80:
      v197 = 0;
    }
  }

  v198 = v197;

  return v197;
}

+ (id)resultWithStrokeClassesFromScriptClassesInResult:(id)a3 strokeProvider:(id)a4 outChangedSupportStrokes:(id *)a5
{
  v144 = *MEMORY[0x1E69E9840];
  v131 = a4;
  v11 = objc_msgSend_mutableCopy(a3, v6, v7, v8, v9, v10);
  v128 = objc_msgSend_set(MEMORY[0x1E695DFA8], v12, v13, v14, v15, v16);
  v127 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = objc_msgSend_scriptClassificationsByStrokeIdentifier(v11, v22, v23, v24, v25, v26);
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v136, v143, 16, v28);
  if (v34)
  {
    v130 = *v137;
    do
    {
      v35 = 0;
      do
      {
        if (*v137 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v136 + 1) + 8 * v35);
        v37 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v11, v29, v30, v31, v32, v33);
        v42 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v36, v39, v40, v41);
        v48 = objc_msgSend_integerValue(v42, v43, v44, v45, v46, v47);

        v49 = objc_opt_class();
        v58 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v49, v50, v36, v131, v51, v52);
        if (v58)
        {
          v59 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v11, v53, v54, v55, v56, v57);
          v65 = objc_msgSend_encodedStrokeIdentifier(v58, v60, v61, v62, v63, v64);
          v70 = objc_msgSend_objectForKeyedSubscript_(v59, v66, v65, v67, v68, v69);
          v76 = objc_msgSend_integerValue(v70, v71, v72, v73, v74, v75);

          if (v48 == 1)
          {
            sub_183960388(v11, v58, 2);
            v81 = objc_opt_class();
            isStrokeClassificationText = objc_msgSend_isStrokeClassificationText_(v81, v82, v76, v83, v84, v85);
LABEL_20:
            if (isStrokeClassificationText)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v77, v48, v78, v79, v80))
            {
              sub_183960388(v11, v58, 3);
              v92 = objc_opt_class();
              isStrokeClassificationText = objc_msgSend_isStrokeClassificationMath_(v92, v93, v76, v94, v95, v96);
              goto LABEL_20;
            }

            if (v48 != 8)
            {
              sub_183960388(v11, v58, 1);
              v97 = objc_opt_class();
              isStrokeClassificationText = objc_msgSend_isStrokeClassificationText_(v97, v98, v76, v99, v100, v101);
              goto LABEL_20;
            }

            if ((v76 - 9) > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_22;
            }

            sub_183960388(v11, v58, 5);
          }

          objc_msgSend_addObject_(v127, v87, v36, v88, v89, v90);
          goto LABEL_22;
        }

        objc_msgSend_addObject_(v128, v53, v36, v55, v56, v57);
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v91 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v142 = v36;
          _os_log_impl(&dword_18366B000, v91, OS_LOG_TYPE_ERROR, "Unexpected nil stroke in Stroke Classification, encoded stoke identifier is %@. Skipping.", buf, 0xCu);
        }

LABEL_22:
        ++v35;
      }

      while (v34 != v35);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v136, v143, 16, v33);
    }

    while (v34);
  }

  if (objc_msgSend_count(v128, v102, v103, v104, v105, v106))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v107 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v113 = objc_msgSend_count(v128, v108, v109, v110, v111, v112);
      *buf = 134217984;
      v142 = v113;
      _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_ERROR, "Removing %lu invalid nil strokes in Stroke Classification", buf, 0xCu);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v114 = v128;
    v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, &v132, v140, 16, v116);
    if (v120)
    {
      v121 = *v133;
      do
      {
        for (i = 0; i != v120; ++i)
        {
          if (*v133 != v121)
          {
            objc_enumerationMutation(v114);
          }

          objc_msgSend_updateByRemovingStrokeIdentifier_withRemovedAndClutterStrokeIDs_(v11, v117, *(*(&v132 + 1) + 8 * i), v114, v118, v119);
        }

        v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v117, &v132, v140, 16, v119);
      }

      while (v120);
    }
  }

  v123 = v127;
  if (a5)
  {
    v124 = v127;
    v123 = v127;
    *a5 = v127;
  }

  return v11;
}

+ (id)resultWithRefinedNonTextCandidateInResult:(id)a3 changedSupportStrokesByStrokeIdentifiers:(id)a4 strokeProvider:(id)a5
{
  v393 = *MEMORY[0x1E69E9840];
  v346 = a4;
  v360 = a5;
  v12 = objc_msgSend_mutableCopy(a3, v7, v8, v9, v10, v11);
  v381 = 0u;
  v382 = 0u;
  v379 = 0u;
  v380 = 0u;
  v362 = v12;
  v18 = objc_msgSend_nontextCandidates(v12, v13, v14, v15, v16, v17);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v379, v392, 16, v20);
  if (v26)
  {
    v27 = *v380;
    do
    {
      v28 = 0;
      do
      {
        if (*v380 != v27)
        {
          objc_enumerationMutation(v18);
        }

        v29 = *(*(&v379 + 1) + 8 * v28);
        v30 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v12, v21, v22, v23, v24, v25);
        if (v29)
        {
          v31 = v29[11];
        }

        else
        {
          v31 = 0;
        }

        v32 = v31;
        v37 = objc_msgSend_objectForKeyedSubscript_(v30, v33, v32, v34, v35, v36);
        v43 = objc_msgSend_integerValue(v37, v38, v39, v40, v41, v42);

        if (v43 == 1)
        {
          v12 = v362;
          objc_msgSend_setFallbackClassification_(v29, v44, 2, v45, v46, v47);
        }

        else
        {
          v12 = v362;
          if (v43 == 8)
          {
            objc_msgSend_setFallbackClassification_(v29, v44, 5, v45, v46, v47);
          }

          else if (objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v44, v43, v45, v46, v47))
          {
            objc_msgSend_setFallbackClassification_(v29, v48, 3, v49, v50, v51);
          }

          else
          {
            objc_msgSend_setFallbackClassification_(v29, v48, 1, v49, v50, v51);
          }
        }

        ++v28;
      }

      while (v26 != v28);
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v379, v392, 16, v25);
      v26 = v52;
    }

    while (v52);
  }

  v377 = 0u;
  v378 = 0u;
  v375 = 0u;
  v376 = 0u;
  obj = v346;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v375, v391, 16, v54);
  v60 = v362;
  if (v59)
  {
    v61 = *v376;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v376 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = objc_msgSend_strokeIdentifierFromData_(v360, v55, *(*(&v375 + 1) + 8 * i), v56, v57, v58);
        v68 = objc_msgSend_strokeForIdentifier_(v360, v64, v63, v65, v66, v67);
        objc_msgSend_updateNonTextCandidatesSupportFromStroke_(v60, v69, v68, v70, v71, v72);

        v60 = v362;
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v375, v391, 16, v58);
    }

    while (v59);
  }

  v347 = objc_msgSend_array(MEMORY[0x1E695DF70], v73, v74, v75, v76, v77);
  v373 = 0u;
  v374 = 0u;
  v371 = 0u;
  v372 = 0u;
  v353 = objc_msgSend_nontextCandidates(v362, v78, v79, v80, v81, v82);
  v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v353, v83, &v371, v390, 16, v84);
  if (!v356)
  {
    goto LABEL_128;
  }

  v355 = *v372;
  do
  {
    v90 = 0;
    while (2)
    {
      if (*v372 != v355)
      {
        objc_enumerationMutation(v353);
      }

      v358 = v90;
      v91 = *(*(&v371 + 1) + 8 * v90);
      if (!v91 || *(v91 + 40) != 6 || fabs(*(v91 + 72)) > 0.785398163 || *(v91 + 80) <= 105.0)
      {
        goto LABEL_30;
      }

      v92 = objc_msgSend_allKeys(*(v91 + 8), v85, v86, v87, v88, v89);
      v385 = &v384;
      v386 = 0x2020000000;
      v387 = 0;
      v383[0] = MEMORY[0x1E69E9820];
      v383[1] = 3221225472;
      v383[2] = sub_183731100;
      v383[3] = &unk_1E6DDCFA8;
      v383[4] = v91;
      v383[5] = &v384;
      v384 = 0;
      objc_msgSend_enumerateObjectsUsingBlock_(v92, v93, v383, v94, v95, v96);
      v102 = objc_msgSend_count(v92, v97, v98, v99, v100, v101);
      v108 = v385[3];
      if (v102)
      {
        v108 = v108 / objc_msgSend_count(v92, v103, v104, v105, v106, v107);
      }

      _Block_object_dispose(&v384, 8);

      if (v108 < 0.15)
      {
        goto LABEL_30;
      }

      v109 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v362, v85, v86, v87, v88, v89);
      v110 = *(v91 + 88);
      v115 = objc_msgSend_objectForKey_(v109, v111, v110, v112, v113, v114);
      v352 = objc_msgSend_integerValue(v115, v116, v117, v118, v119, v120);

      v126 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v362, v121, v122, v123, v124, v125);
      v127 = *(v91 + 88);
      v351 = objc_msgSend_objectForKey_(v126, v128, v127, v129, v130, v131);

      v137 = objc_msgSend_probabilityByScriptClassifications(v351, v132, v133, v134, v135, v136);
      v142 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v138, v352, v139, v140, v141);
      v147 = objc_msgSend_objectForKeyedSubscript_(v137, v143, v142, v144, v145, v146);
      objc_msgSend_floatValue(v147, v148, v149, v150, v151, v152);
      v154 = v153;

      v160 = objc_msgSend_orderedScriptClassification(v351, v155, v156, v157, v158, v159);
      LOBYTE(v127) = objc_msgSend_count(v160, v161, v162, v163, v164, v165) == 0;

      if (v127)
      {
        v177 = 0;
        v178 = v154;
        v179 = v352;
        if (v352 == 16)
        {
LABEL_42:
          v180 = 1;
LABEL_43:
          v181 = 0;
          v183 = v352 == 8 && v177 == 15;
          v185 = v352 != 8 && v177 == 8;
          if (v178 >= 0.8)
          {
            v185 = 0;
          }

          if (!v180)
          {
            goto LABEL_75;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v171 = objc_msgSend_scriptClassificationAtIndex_(v351, v166, 1, v168, v169, v170);
        v177 = objc_msgSend_integerValue(v171, v172, v173, v174, v175, v176);

        v178 = v154;
        v179 = v352;
        if (v352 == 16)
        {
          goto LABEL_42;
        }
      }

      if (v179 == 8 || v177 != 16 || v178 >= 0.8)
      {
        v180 = v108 > 0.7 && v352 == 7;
        if (v352 != 15)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v180 = 1;
        if (v352 != 15)
        {
          goto LABEL_43;
        }
      }

      v181 = 1;
      v183 = 1;
      v185 = v177 == 8;
      if (v178 >= 0.8)
      {
        v185 = 0;
      }

      if (!v180)
      {
LABEL_75:
        if (!v183 && !v185)
        {
          goto LABEL_29;
        }
      }

LABEL_77:
      v359 = objc_msgSend_array(MEMORY[0x1E695DF70], v166, v167, v168, v169, v170);
      v361 = objc_msgSend_array(MEMORY[0x1E695DF70], v187, v188, v189, v190, v191);
      v349 = v180;
      v350 = v183;
      v348 = v181;
      v357 = objc_msgSend_array(MEMORY[0x1E695DF70], v192, v193, v194, v195, v196);
      v202 = objc_msgSend_array(MEMORY[0x1E695DF70], v197, v198, v199, v200, v201);
      v369 = 0u;
      v370 = 0u;
      v367 = 0u;
      v368 = 0u;
      v208 = objc_msgSend_allKeys(*(v91 + 8), v203, v204, v205, v206, v207);
      v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v209, &v367, v389, 16, v210);
      if (!v216)
      {
        goto LABEL_97;
      }

      v217 = *v368;
      do
      {
        for (j = 0; j != v216; ++j)
        {
          if (*v368 != v217)
          {
            objc_enumerationMutation(v208);
          }

          v219 = *(*(&v367 + 1) + 8 * j);
          v220 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v362, v211, v212, v213, v214, v215);
          v225 = objc_msgSend_objectForKey_(v220, v221, v219, v222, v223, v224);
          v231 = objc_msgSend_integerValue(v225, v226, v227, v228, v229, v230);

          isScriptClassificationMath = objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v232, v231, v233, v234, v235);
          if (v231 == 8)
          {
            v237 = 1;
          }

          else
          {
            v237 = isScriptClassificationMath;
          }

          v238 = v202;
          if ((v237 & 1) == 0)
          {
LABEL_80:
            objc_msgSend_addObject_(v238, v211, v219, v213, v214, v215);
            continue;
          }

          if ((v231 & 0xFFFFFFFFFFFFFFFELL) == 0xE)
          {
            v239 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v211, v219, v360, v214, v215);
            objc_msgSend_bounds(v239, v240, v241, v242, v243, v244);
            MinX = CGRectGetMinX(v395);
            v251 = v361;
            if (MinX >= CGRectGetMinX(*(v91 + 96)))
            {
              objc_msgSend_bounds(v239, v246, v247, v248, v249, v250);
              MaxX = CGRectGetMaxX(v396);
              v251 = v361;
              if (MaxX <= CGRectGetMaxX(*(v91 + 96)))
              {
                v251 = v357;
              }
            }

            objc_msgSend_addObject_(v251, v253, v219, v254, v255, v256);
          }

          else if ((v231 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            objc_msgSend_addObject_(v361, v211, v219, v213, v214, v215);
            v238 = v359;
            if (v231 == 13)
            {
              goto LABEL_80;
            }
          }
        }

        v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v208, v211, &v367, v389, 16, v215);
      }

      while (v216);
LABEL_97:

      objc_msgSend_support(v91, v257, v258, v259, v260, v261);
      if (v267 >= 0.0)
      {
        goto LABEL_119;
      }

      if (!objc_msgSend_count(v361, v262, v263, v264, v265, v266))
      {
        v279 = 0.0;
        if (v349)
        {
          goto LABEL_100;
        }

LABEL_104:
        if (!v350)
        {
          goto LABEL_126;
        }

        if (objc_msgSend_count(v359, v268, v269, v270, v271, v272))
        {
          v288 = sub_183730D74(v91, v359);
          v267 = v288 / objc_msgSend_count(v359, v289, v290, v291, v292, v293);
          if (v279 == 0.0)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v267 = 0.0;
          if (v279 == 0.0)
          {
LABEL_119:
            v287 = 1;
            goto LABEL_120;
          }
        }

        v267 = v267 / v279;
        v287 = v267 <= 0.7;
        goto LABEL_120;
      }

      v273 = sub_183730D74(v91, v361);
      v279 = v273 / objc_msgSend_count(v361, v274, v275, v276, v277, v278);
      if (!v349)
      {
        goto LABEL_104;
      }

LABEL_100:
      if (objc_msgSend_count(v202, v268, v269, v270, v271, v272) && (v285 = sub_183730D74(v91, v202), v285 > 0.0))
      {
        objc_msgSend_support(v91, v280, v281, v282, v283, v284);
        v287 = v285 / fabs(v286) > 0.15;
      }

      else
      {
        v287 = 0;
      }

      if (objc_msgSend_count(v357, v280, v281, v282, v283, v284))
      {
        v299 = sub_183730D74(v91, v357);
        v305 = v299 / objc_msgSend_count(v357, v300, v301, v302, v303, v304);
      }

      else
      {
        v305 = 0.0;
      }

      if (!objc_msgSend_count(v361, v294, v295, v296, v297, v298) && objc_msgSend_count(v357, v262, v306, v264, v265, v266))
      {
        goto LABEL_119;
      }

      if (v279 != 0.0)
      {
        v267 = v305 / v279;
        v287 |= v305 / v279 > 0.32;
      }

LABEL_120:
      if (v352 != 8 && (v287 & 1) != 0)
      {
        objc_msgSend_setFallbackClassification_(v91, v262, 5, v264, v265, v266, v267);
        v307 = *(v91 + 88);
        sub_1839602D8(v362, v307, 6);

        v308 = *(v91 + 88);
        objc_msgSend_addObject_(v347, v309, v308, v310, v311, v312);
        goto LABEL_125;
      }

      if (!(v348 & 1 | !v350 | v287 & 1))
      {
        objc_msgSend_setFallbackClassification_(v91, v262, 3, v264, v265, v266, v267);
        v313 = *(v91 + 88);
        sub_1839602D8(v362, v313, 3);

        v308 = *(v91 + 88);
        objc_msgSend_addObject_(v347, v314, v308, v315, v316, v317);
LABEL_125:
      }

LABEL_126:

LABEL_29:
LABEL_30:
      v90 = v358 + 1;
      if (v358 + 1 != v356)
      {
        continue;
      }

      break;
    }

    v356 = objc_msgSend_countByEnumeratingWithState_objects_count_(v353, v85, &v371, v390, 16, v89);
  }

  while (v356);
LABEL_128:

  v365 = 0u;
  v366 = 0u;
  v363 = 0u;
  v364 = 0u;
  v318 = v347;
  v325 = objc_msgSend_countByEnumeratingWithState_objects_count_(v318, v319, &v363, v388, 16, v320);
  v326 = v362;
  if (v325)
  {
    v327 = *v364;
    do
    {
      for (k = 0; k != v325; ++k)
      {
        if (*v364 != v327)
        {
          objc_enumerationMutation(v318);
        }

        v329 = objc_msgSend_strokeIdentifierFromData_(v360, v321, *(*(&v363 + 1) + 8 * k), v322, v323, v324);
        v334 = objc_msgSend_strokeForIdentifier_(v360, v330, v329, v331, v332, v333);
        objc_msgSend_updateNonTextCandidatesSupportFromStroke_(v326, v335, v334, v336, v337, v338);

        v326 = v362;
      }

      v325 = objc_msgSend_countByEnumeratingWithState_objects_count_(v318, v321, &v363, v388, 16, v324);
    }

    while (v325);
  }

  v344 = objc_msgSend_copy(v362, v339, v340, v341, v342, v343);

  return v344;
}

+ (id)scriptClassificationRawResultsForOneScriptClassification:(int64_t)a3 scriptCodeMap:(id)a4
{
  v5 = a4;
  v16 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7, v8, v9, v10);
  for (i = 0; objc_msgSend_count(v5, v11, v12, v13, v14, v15) > i; ++i)
  {
    v22 = objc_msgSend_objectAtIndexedSubscript_(v5, v18, i, v19, v20, v21);
    v28 = objc_msgSend_integerValue(v22, v23, v24, v25, v26, v27);

    if (v28 == a3)
    {
      v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, a3, v30, v31, v32);
      objc_msgSend_setObject_forKey_(v16, v34, &unk_1EF1EE090, v33, v35, v36);
    }

    else
    {
      v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, v28, v30, v31, v32);
      objc_msgSend_setObject_forKey_(v16, v37, &unk_1EF1EE0A0, v33, v38, v39);
    }
  }

  v40 = [CHScriptClassificationRawResult alloc];
  v45 = objc_msgSend_initWithProbabilityByScriptClassifications_(v40, v41, v16, v42, v43, v44);

  return v45;
}

+ (id)nonTextCandidateForStroke:(id)a3 withSubstrokes:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_msgSend_bounds(v5, v7, v8, v9, v10, v11);
  v13 = v12;
  objc_msgSend_bounds(v5, v14, v15, v16, v17, v18);
  v20 = v19;
  objc_msgSend_bounds(v5, v21, v22, v23, v24, v25);
  v27 = v26;
  objc_msgSend_bounds(v5, v28, v29, v30, v31, v32);
  if (sqrt(v27 * v33 + v13 * v20) <= 63.0)
  {
    v45 = 0;
  }

  else
  {
    v64 = 0;
    v65 = &v64;
    v66 = 0x4812000000;
    v67 = sub_183962D3C;
    v68 = sub_183962D60;
    v69 = &unk_183A5AC72;
    v71 = 0;
    v72 = 0;
    __p = 0;
    v34 = objc_opt_class();
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_183962D78;
    v63[3] = &unk_1E6DDCAC0;
    v63[4] = &v64;
    objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v34, v35, v5, 0, 1, v63);
    v62 = 0.0;
    v36 = objc_opt_class();
    objc_msgSend_lineOrientationForStrokePoints_error_(v36, v37, (v65 + 6), &v62, v38, v39);
    if (v62 >= 1.0)
    {
      v46 = objc_opt_class();
      v47 = v65;
      objc_msgSend_bounds(v5, v48, v49, v50, v51, v52);
      objc_msgSend_containerSupportForPoints_withBounds_(v46, v53, (v47 + 6), v54, v55, v56);
      v58 = v57;
      v59 = [CHMutableNonTextCandidateStroke alloc];
      v44 = objc_msgSend_initWithStroke_consistingOfSubstrokes_classificationAsNonText_lineOrientation_lineError_containerScore_fallbackClassification_(v59, v60, v5, v6, 7, 1, 0.0, 0.0, v58);
    }

    else
    {
      v41 = v40;
      v42 = [CHMutableNonTextCandidateStroke alloc];
      v44 = objc_msgSend_initWithStroke_consistingOfSubstrokes_classificationAsNonText_lineOrientation_lineError_containerScore_fallbackClassification_(v42, v43, v5, v6, 6, 1, v41, v62, 0.0);
    }

    v45 = v44;
    _Block_object_dispose(&v64, 8);
    if (__p)
    {
      v71 = __p;
      operator delete(__p);
    }
  }

  return v45;
}

+ (double)containerSupportForPoints:(const void *)a3 withBounds:(CGRect)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v4 = *(a3 + 1) - *a3;
  if (v4)
  {
    v5 = v4 >> 4;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (*a3 + 8);
    while (1)
    {
      v7 = fmin((*(v6 - 1) - a4.origin.x) / a4.size.width * 10.0, 9.0);
      v8 = (*v6 - a4.origin.y) / a4.size.height * 10.0;
      v9 = 10 * v8;
      if (v8 >= 9.0)
      {
        v9 = 90;
      }

      v10 = v9 + v7;
      if (v9 + v7 < 0)
      {
        break;
      }

      *(v56 + v10) = 1;
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DC68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v54 = 134217984;
      v55 = v10;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Index %ld out of bounds in normalized image for container support calculation.", &v54, 0xCu);
    }
  }

LABEL_15:
  v12 = 0;
  v13 = 0.0;
  v14 = &xmmword_1839DA218;
  v15.i32[1] = 255;
  do
  {
    v16 = v56[v12];
    v17.i32[0] = v16.u8[0];
    v17.i32[1] = v16.u8[1];
    v18 = vand_s8(v17, 0xFF000000FFLL);
    v19.i64[0] = v18.u32[0];
    v19.i64[1] = v18.u32[1];
    v20.i32[0] = v16.u8[2];
    v21 = vcvtq_f64_u64(v19);
    v20.i32[1] = v16.u8[3];
    v22 = vand_s8(v20, 0xFF000000FFLL);
    v19.i64[0] = v22.u32[0];
    v19.i64[1] = v22.u32[1];
    v23.i32[0] = v16.u8[4];
    v23.i32[1] = v16.u8[5];
    v24 = vcvtq_f64_u64(v19);
    v25 = vand_s8(v23, 0xFF000000FFLL);
    v19.i64[0] = v25.u32[0];
    v19.i64[1] = v25.u32[1];
    v26 = vcvtq_f64_u64(v19);
    v27.i32[0] = v16.u8[6];
    v27.i32[1] = v16.u8[7];
    v28 = vand_s8(v27, 0xFF000000FFLL);
    v19.i64[0] = v28.u32[0];
    v19.i64[1] = v28.u32[1];
    v29 = vcvtq_f64_u64(v19);
    v16.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
    v30.i32[0] = v16.u8[0];
    v30.i32[1] = v16.u8[1];
    v31 = vand_s8(v30, 0xFF000000FFLL);
    v19.i64[0] = v31.u32[0];
    v19.i64[1] = v31.u32[1];
    v32 = vcvtq_f64_u64(v19);
    v33.i32[0] = v16.u8[2];
    v33.i32[1] = v16.u8[3];
    v34 = vand_s8(v33, 0xFF000000FFLL);
    v19.i64[0] = v34.u32[0];
    v19.i64[1] = v34.u32[1];
    v35 = vcvtq_f64_u64(v19);
    v36.i32[0] = v16.u8[4];
    v36.i32[1] = v16.u8[5];
    v37 = vand_s8(v36, 0xFF000000FFLL);
    v19.i64[0] = v37.u32[0];
    v19.i64[1] = v37.u32[1];
    v38 = vcvtq_f64_u64(v19);
    v39.i32[0] = v16.u8[6];
    v39.i32[1] = v16.u8[7];
    *v16.i8 = vand_s8(v39, 0xFF000000FFLL);
    v19.i64[0] = v16.u32[0];
    v19.i64[1] = v16.u32[1];
    v40 = vmulq_f64(v14[7], vcvtq_f64_u64(v19));
    v41 = vmulq_f64(v14[6], v38);
    v42 = vmulq_f64(v14[5], v35);
    v43 = vmulq_f64(v14[4], v32);
    v44 = vmulq_f64(v14[3], v29);
    v45 = vmulq_f64(v14[2], v26);
    v46 = vmulq_f64(v14[1], v24);
    v47 = vmulq_f64(*v14, v21);
    v13 = v13 + v47.f64[0] + v47.f64[1] + v46.f64[0] + v46.f64[1] + v45.f64[0] + v45.f64[1] + v44.f64[0] + v44.f64[1] + v43.f64[0] + v43.f64[1] + v42.f64[0] + v42.f64[1] + v41.f64[0] + v41.f64[1] + v40.f64[0] + v40.f64[1];
    ++v12;
    v14 += 8;
  }

  while (v12 != 6);
  v15.i32[0] = v57;
  v48 = vmovl_u16(*&vmovl_u8(v15));
  v49 = vand_s8(*&vextq_s8(v48, v48, 8uLL), 0xFF000000FFLL);
  v50.i64[0] = v49.u32[0];
  v50.i64[1] = v49.u32[1];
  v51 = vcvtq_f64_u64(v50);
  *v48.i8 = vand_s8(*v48.i8, 0xFF000000FFLL);
  v50.i64[0] = v48.u32[0];
  v50.i64[1] = v48.u32[1];
  v52 = vcvtq_f64_u64(v50);
  return v13 + v52.f64[0] + v52.f64[1] + v51.f64[0] + v51.f64[1];
}

+ (int64_t)fallbackTextScriptClassificationForMathGroup:(id)a3 strokeClassificationResult:(id)a4 fromTopNCandidate:(int64_t)a5
{
  v169 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v150 = a4;
  v147 = v7;
  v13 = objc_msgSend_strokeIdentifiers(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_count(v13, v14, v15, v16, v17, v18);

  v25 = 7;
  if (v150 && v19)
  {
    v149 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21, v22, v23, v24);
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    obj = objc_msgSend_strokeIdentifiers(v7, v26, v27, v28, v29, v30);
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v164, v168, 16, v32);
    if (v38)
    {
      v39 = *v165;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v165 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v164 + 1) + 8 * i);
          v42 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v150, v33, v34, v35, v36, v37);
          v47 = objc_msgSend_objectForKey_(v42, v43, v41, v44, v45, v46);

          v53 = 0;
          while (1)
          {
            v54 = objc_msgSend_orderedScriptClassification(v47, v48, v49, v50, v51, v52);
            if (objc_msgSend_count(v54, v55, v56, v57, v58, v59) <= a5)
            {
              v70 = objc_msgSend_orderedScriptClassification(v47, v60, v61, v62, v63, v64);
              v65 = v53 < objc_msgSend_count(v70, v71, v72, v73, v74, v75);
            }

            else
            {
              v65 = v53 < a5;
            }

            if (!v65)
            {
              break;
            }

            v76 = objc_msgSend_scriptClassificationAtIndex_(v47, v66, v53, v67, v68, v69);
            v82 = objc_msgSend_integerValue(v76, v77, v78, v79, v80, v81);

            isScriptClassificationMath = objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v83, v82, v84, v85, v86);
            if (v82 == 8)
            {
              v88 = 1;
            }

            else
            {
              v88 = isScriptClassificationMath;
            }

            ++v53;
            if ((v88 & 1) == 0)
            {
              v89 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v48, v82, v50, v51, v52);
              v94 = objc_msgSend_objectForKeyedSubscript_(v149, v90, v89, v91, v92, v93);

              v100 = MEMORY[0x1E696AD98];
              if (v94)
              {
                v101 = objc_msgSend_intValue(v94, v95, v96, v97, v98, v99);
                v106 = objc_msgSend_numberWithInt_(v100, v102, (v101 + 1), v103, v104, v105);
                v111 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v107, v82, v108, v109, v110);
                objc_msgSend_setObject_forKeyedSubscript_(v149, v112, v106, v111, v113, v114);
              }

              else
              {
                v106 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v95, v82, v97, v98, v99);
                objc_msgSend_setObject_forKeyedSubscript_(v149, v115, &unk_1EF1EDB28, v106, v116, v117);
              }

              break;
            }
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v164, v168, 16, v37);
      }

      while (v38);
    }

    v158 = 0;
    v159 = &v158;
    v160 = 0x3032000000;
    v161 = sub_18396366C;
    v162 = sub_18396367C;
    v163 = 0;
    v152 = 0;
    v153 = &v152;
    v154 = 0x3032000000;
    v155 = sub_18396366C;
    v156 = sub_18396367C;
    v157 = &unk_1EF1EDB40;
    v151[0] = MEMORY[0x1E69E9820];
    v151[1] = 3221225472;
    v151[2] = sub_183963684;
    v151[3] = &unk_1E6DE0580;
    v151[4] = &v152;
    v151[5] = &v158;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v149, v118, v151, v119, v120, v121);
    if (v159[5] && (objc_msgSend_floatValue(v153[5], v122, v123, v124, v125, v126), v128 = v127, objc_msgSend_strokeIdentifiers(v147, v129, v130, v131, v132, v133), v134 = objc_claimAutoreleasedReturnValue(), v140 = (v128 / objc_msgSend_count(v134, v135, v136, v137, v138, v139)) > 0.6, v134, v140))
    {
      v25 = objc_msgSend_integerValue(v159[5], v141, v142, v143, v144, v145);
    }

    else
    {
      v25 = 7;
    }

    _Block_object_dispose(&v152, 8);

    _Block_object_dispose(&v158, 8);
  }

  return v25;
}

@end