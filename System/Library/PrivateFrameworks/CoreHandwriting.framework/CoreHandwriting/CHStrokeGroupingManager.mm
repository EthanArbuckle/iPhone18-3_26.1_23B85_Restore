@interface CHStrokeGroupingManager
+ (id)identifyStableStrokeIdentifiersUsingOrderedStrokeIdentifiers:(id)identifiers prevOrderedStrokeIdentifiers:(id)strokeIdentifiers strokeClassificationResult:(id)result prevStrokeClassificationResult:(id)classificationResult;
+ (id)mergeableStrokeGroupClustersFromSortedStrokeGroups:(id)groups;
+ (id)sortedGroupsBySizeDescending:(id)descending;
- (CHStrokeGroupingManager)initWithStrokeProvider:(id)provider locales:(id)locales isInlineContinuousMode:(BOOL)mode inlineContinuousModeTargets:(id)targets;
- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup;
- (id)simpleDrawingForStrokeGroup:(id)group originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds;
- (id)strokesForIdentifiers:(id)identifiers;
- (id)updateGroupingResult:(id)result addingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers orderedStrokeIdentifiers:(id)strokeIdentifiers lastOrderedStrokeIdentifiers:(id)orderedStrokeIdentifiers strokeClassificationResult:(id)classificationResult lastStrokeClassificationResult:(id)strokeClassificationResult mathStrokeGroupingResult:(id)self0 cancellationBlock:(id)self1;
@end

@implementation CHStrokeGroupingManager

- (CHStrokeGroupingManager)initWithStrokeProvider:(id)provider locales:(id)locales isInlineContinuousMode:(BOOL)mode inlineContinuousModeTargets:(id)targets
{
  modeCopy = mode;
  v113 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  localesCopy = locales;
  targetsCopy = targets;
  v111.receiver = self;
  v111.super_class = CHStrokeGroupingManager;
  v103 = [(CHStrokeGroupingManager *)&v111 init];
  if (v103)
  {
    objc_storeStrong(&v103->_strokeProvider, provider);
    objc_storeStrong(&v103->_locales, locales);
    v103->_isInlineContinuousMode = modeCopy;
    objc_storeStrong(&v103->_textInputTargets, targets);
    v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v12, v13, v14, v15, v16);
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC430, v18, &v107, v112, 16, v19);
    if (v25)
    {
      v26 = *v108;
      do
      {
        v27 = 0;
        do
        {
          if (*v108 != v26)
          {
            objc_enumerationMutation(&unk_1EF1EC430);
          }

          v28 = *(*(&v107 + 1) + 8 * v27);
          v29 = objc_msgSend_integerValue(v28, v20, v21, v22, v23, v24);
          v35 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31, v32, v33, v34);
          if (modeCopy)
          {
            v36 = [CHTopDownStrokeGroupingStrategy alloc];
            v42 = objc_msgSend_firstObject(localesCopy, v37, v38, v39, v40, v41);
            v45 = objc_msgSend_initWithStrokeProvider_locale_textInputTargets_(v36, v43, providerCopy, v42, targetsCopy, v44);

            v51 = objc_msgSend_strategyIdentifier(v45, v46, v47, v48, v49, v50);
            objc_msgSend_setObject_forKey_(v35, v52, v45, v51, v53, v54);
          }

          else if (v29 == 3)
          {
            v55 = [CHMathStrokeGroupingStrategy alloc];
            v45 = objc_msgSend_initWithStrokeProvider_(v55, v56, providerCopy, v57, v58, v59);
            v51 = objc_msgSend_strategyIdentifier(v45, v60, v61, v62, v63, v64);
            objc_msgSend_setObject_forKey_(v35, v65, v45, v51, v66, v67);
          }

          else
          {
            v68 = [CHBottomUpStrokeGroupingStrategy alloc];
            if (v29 == 2)
            {
              isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v68, v69, providerCopy, 2, localesCopy, 0, targetsCopy);
            }

            else
            {
              isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v68, v69, providerCopy, 1, localesCopy, 0, targetsCopy);
            }

            v45 = isInlineContinuousMode_inlineContinuousModeTargets;
            v51 = objc_msgSend_strategyIdentifier(isInlineContinuousMode_inlineContinuousModeTargets, v71, v72, v73, v74, v75);
            objc_msgSend_setObject_forKey_(v35, v76, v45, v51, v77, v78);
          }

          if (!objc_msgSend_count(v35, v79, v80, v81, v82, v83))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v89 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v89, OS_LOG_TYPE_ERROR, "At least one stroke grouping strategy must be set.", buf, 2u);
            }
          }

          if (!objc_msgSend_count(v35, v84, v85, v86, v87, v88))
          {
            if (qword_1EA84DC48 != -1)
            {
              dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            }

            v95 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18366B000, v95, OS_LOG_TYPE_FAULT, "At least one stroke grouping strategy must be set.", buf, 2u);
            }
          }

          v96 = objc_msgSend_copy(v35, v90, v91, v92, v93, v94);
          objc_msgSend_setObject_forKeyedSubscript_(v17, v97, v96, v28, v98, v99);

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1EF1EC430, v20, &v107, v112, 16, v24);
      }

      while (v25);
    }

    v100 = objc_msgSend_copy(v17, v20, v21, v22, v23, v24);
    groupingStrategiesByIdentifierForTextStrokeClasses = v103->_groupingStrategiesByIdentifierForTextStrokeClasses;
    v103->_groupingStrategiesByIdentifierForTextStrokeClasses = v100;
  }

  return v103;
}

+ (id)sortedGroupsBySizeDescending:(id)descending
{
  v6 = objc_msgSend_allObjects(descending, a2, descending, v3, v4, v5);
  v11 = objc_msgSend_sortedArrayUsingComparator_(v6, v7, &unk_1EF1BC618, v8, v9, v10);
  v17 = objc_msgSend_mutableCopy(v11, v12, v13, v14, v15, v16);

  return v17;
}

+ (id)mergeableStrokeGroupClustersFromSortedStrokeGroups:(id)groups
{
  groupsCopy = groups;
  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  if (objc_msgSend_count(groupsCopy, v10, v11, v12, v13, v14))
  {
    v20 = 0;
    v21 = -1;
    while (v20 < objc_msgSend_count(groupsCopy, v15, v16, v17, v18, v19) - 1)
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v22, v20, v24, v25, v26);
      v32 = objc_msgSend_objectAtIndexedSubscript_(groupsCopy, v28, v20 + 1, v29, v30, v31);
      v38 = objc_msgSend_classification(v27, v33, v34, v35, v36, v37);
      if (objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v39, v38, v40, v41, v42))
      {
        v48 = objc_msgSend_classification(v32, v43, v44, v45, v46, v47);
        if (objc_msgSend_isStrokeClassificationTextOrMath_(CHStrokeUtilities, v49, v48, v50, v51, v52) & 1) != 0 && (objc_msgSend_isStrokeGroup_inlineWithNextGroup_(CHStrokeUtilities, v53, v27, v32, v54, v55))
        {
          if (v21 == -1 || (objc_msgSend_objectAtIndexedSubscript_(v9, v56, v21, v57, v58, v59), v60 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend_containsObject_(v60, v61, v27, v62, v63, v64), v60, (v65 & 1) == 0))
          {
            v66 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DF70], v56, v27, v57, v58, v59, v32, 0);
            objc_msgSend_addObject_(v9, v71, v66, v72, v73, v74);
            ++v21;
          }

          else
          {
            v66 = objc_msgSend_objectAtIndexedSubscript_(v9, v56, v21, v57, v58, v59);
            objc_msgSend_addObject_(v66, v67, v32, v68, v69, v70);
          }
        }
      }

      ++v20;
    }

    v75 = objc_msgSend_copy(v9, v22, v23, v24, v25, v26);
  }

  else
  {
    v75 = v9;
  }

  v76 = v75;

  return v76;
}

- (id)updateGroupingResult:(id)result addingStrokes:(id)strokes removingStrokeIdentifiers:(id)identifiers orderedStrokeIdentifiers:(id)strokeIdentifiers lastOrderedStrokeIdentifiers:(id)orderedStrokeIdentifiers strokeClassificationResult:(id)classificationResult lastStrokeClassificationResult:(id)strokeClassificationResult mathStrokeGroupingResult:(id)self0 cancellationBlock:(id)self1
{
  v1124 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  strokesCopy = strokes;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  orderedStrokeIdentifiersCopy = orderedStrokeIdentifiers;
  classificationResultCopy = classificationResult;
  strokeClassificationResultCopy = strokeClassificationResult;
  groupingResultCopy = groupingResult;
  blockCopy = block;
  selfCopy = self;
  v981 = objc_msgSend_strokeProvider(self, v17, v18, v19, v20, v21);
  if (!v981)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "strokeProvider cannot be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v24 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v24 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_FAULT, "strokeProvider cannot be nil.", buf, 2u);
    goto LABEL_9;
  }

LABEL_10:
  v996 = objc_msgSend_identifyStableStrokeIdentifiersUsingOrderedStrokeIdentifiers_prevOrderedStrokeIdentifiers_strokeClassificationResult_prevStrokeClassificationResult_(CHStrokeGroupingManager, v22, strokeIdentifiersCopy, orderedStrokeIdentifiersCopy, classificationResultCopy, strokeClassificationResultCopy);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v25 = qword_1EA84DC60;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_msgSend_count(strokeIdentifiersCopy, v26, v27, v28, v29, v30);
    v37 = objc_msgSend_count(orderedStrokeIdentifiersCopy, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_strokeGroups(resultCopy, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_count(v43, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_count(v996, v50, v51, v52, v53, v54);
    *buf = 134218752;
    v1117 = v31;
    v1118 = 2048;
    v1119 = v37;
    v1120 = 2048;
    v1121 = v49;
    v1122 = 2048;
    v1123 = v55;
    _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_DEFAULT, "Update grouping for %ld strokes, last strokes %ld, input groups = %ld, with %ld stable identifiers.", buf, 0x2Au);
  }

  v995 = objc_msgSend_differenceFromResult_removedStrokeIds_(classificationResultCopy, v56, strokeClassificationResultCopy, identifiersCopy, v57, v58);
  v982 = objc_msgSend_set(MEMORY[0x1E695DFA8], v59, v60, v61, v62, v63);
  v983 = objc_msgSend_set(MEMORY[0x1E695DFA8], v64, v65, v66, v67, v68);
  v984 = objc_msgSend_set(MEMORY[0x1E695DFA8], v69, v70, v71, v72, v73);
  v992 = objc_msgSend_set(MEMORY[0x1E695DFA8], v74, v75, v76, v77, v78);
  v993 = objc_msgSend_set(MEMORY[0x1E695DFA8], v79, v80, v81, v82, v83);
  v994 = objc_msgSend_set(MEMORY[0x1E695DFA8], v84, v85, v86, v87, v88);
  v997 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v89, v90, v91, v92, v93);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1018 = resultCopy;
    v99 = objc_msgSend_groupingResultsByStrategyIdentifier(v1018, v94, v95, v96, v97, v98);
    objc_msgSend_addEntriesFromDictionary_(v997, v100, v99, v101, v102, v103);
  }

  else
  {
    v1018 = 0;
  }

  v999 = (blockCopy + 2);
  if (blockCopy[2]())
  {
    goto LABEL_97;
  }

  v1006 = classificationResultCopy;
  v1015 = v995;
  v1003 = strokeClassificationResultCopy;
  v1008 = v1018;
  v1039 = v982;
  v1035 = v983;
  v1001 = v984;
  v979 = blockCopy;
  if (!self)
  {
    goto LABEL_96;
  }

  v973 = objc_msgSend_set(MEMORY[0x1E695DFA8], v109, v110, v111, v112, v113);
  v977 = objc_msgSend_set(MEMORY[0x1E695DFA8], v114, v115, v116, v117, v118);
  v124 = objc_msgSend_addedNonTextStrokeIdentifiers(v1015, v119, v120, v121, v122, v123);
  v1098[0] = MEMORY[0x1E69E9820];
  v1098[1] = 3221225472;
  v1098[2] = sub_18373DC1C;
  v1098[3] = &unk_1E6DDD178;
  v125 = v1006;
  v1099 = v125;
  v126 = v973;
  v1100 = v126;
  v127 = v977;
  v1101 = v127;
  objc_msgSend_enumerateObjectsUsingBlock_(v124, v128, v1098, v129, v130, v131);

  v972 = objc_msgSend_set(MEMORY[0x1E695DFA8], v132, v133, v134, v135, v136);
  v971 = objc_msgSend_set(MEMORY[0x1E695DFA8], v137, v138, v139, v140, v141);
  v147 = objc_msgSend_removedNonTextStrokeIdentifiers(v1015, v142, v143, v144, v145, v146);
  v1094[0] = MEMORY[0x1E69E9820];
  v1094[1] = 3221225472;
  v1094[2] = sub_18373DD08;
  v1094[3] = &unk_1E6DDD178;
  v148 = v1003;
  v1095 = v148;
  v149 = v972;
  v1096 = v149;
  v150 = v971;
  v1097 = v150;
  objc_msgSend_enumerateObjectsUsingBlock_(v147, v151, v1094, v152, v153, v154);

  v1090 = 0;
  v1091 = &v1090;
  v1092 = 0x2020000000;
  v1093 = 0;
  v160 = objc_msgSend_transitionedNonTextStrokeIdentifiers(v1015, v155, v156, v157, v158, v159);
  *&v1083 = MEMORY[0x1E69E9820];
  *(&v1083 + 1) = 3221225472;
  *&v1084 = sub_18373DDF4;
  *(&v1084 + 1) = &unk_1E6DDD1A0;
  v1030 = v125;
  *&v1085 = v1030;
  *(&v1085 + 1) = v148;
  v978 = v149;
  *&v1086 = v978;
  v161 = v127;
  *(&v1086 + 1) = v161;
  v989 = v150;
  v1087 = v989;
  v1012 = v126;
  v1088 = v1012;
  v1089 = &v1090;
  objc_msgSend_enumerateObjectsUsingBlock_(v160, v162, &v1083, v163, v164, v165);

  if ((v1091[3] & 1) == 0 && !objc_msgSend_count(v1012, v166, v167, v168, v169, v170))
  {
    v416 = objc_msgSend_count(v978, v166, v167, v168, v169, v170) != 0;
    *(v1091 + 24) = v416;
    if (!v1008)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  *(v1091 + 24) = 1;
  if (v1008)
  {
LABEL_22:
    v171 = objc_msgSend_strokeGroups(v1008, v166, v167, v168, v169, v170);
    v1072 = MEMORY[0x1E69E9820];
    v1073 = 3221225472;
    v1074 = sub_18373DFE8;
    v1075 = &unk_1E6DDD1C8;
    v1082 = &v1090;
    v1076 = v989;
    v1077 = v1001;
    v1078 = v1015;
    v1079 = v1030;
    v1080 = v1012;
    v1081 = v161;
    v176 = objc_msgSend_objectsPassingTest_(v171, v172, &v1072, v173, v174, v175);
    objc_msgSend_unionSet_(v1039, v177, v176, v178, v179, v180);
  }

LABEL_23:
  v1042 = objc_msgSend_strokeProvider(selfCopy, v166, v167, v168, v169, v170);
  v1070 = 0u;
  v1071 = 0u;
  v1068 = 0u;
  v1069 = 0u;
  obj = v161;
  v186 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v181, &v1068, buf, 16, v182);
  if (!v186)
  {
    goto LABEL_59;
  }

  v187 = *v1069;
  do
  {
    v188 = 0;
    do
    {
      if (*v1069 != v187)
      {
        objc_enumerationMutation(obj);
      }

      v189 = *(*(&v1068 + 1) + 8 * v188);
      v190 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(CHStrokeUtilities, v183, v189, v1042, v184, v185);
      v196 = v190;
      if (v190)
      {
        v202 = objc_msgSend_encodedStrokeIdentifier(v190, v191, v192, v193, v194, v195);
        if (!v202 || (objc_msgSend_encodedStrokeIdentifier(v196, v197, v198, v199, v200, v201), v203 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v203, v204, v189, v205, v206, v207), v203, v202, (isEqual & 1) == 0))
        {
          if (qword_1EA84DC48 == -1)
          {
            v214 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_33;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v214 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
            {
LABEL_33:
              v220 = objc_msgSend_encodedStrokeIdentifier(v196, v215, v216, v217, v218, v219);
              *v1112 = 138412546;
              *&v1112[4] = v220;
              *&v1112[12] = 2112;
              *&v1112[14] = v189;
              _os_log_impl(&dword_18366B000, v214, OS_LOG_TYPE_ERROR, "Unexpected mismatch encodedStrokeIdentifier in _handleNonTextStrokes, encoded stroke identifier is %@, encoded stroke identifier in strokeProvider is %@.", v1112, 0x16u);
            }
          }
        }

        v226 = objc_msgSend_encodedStrokeIdentifier(v196, v209, v210, v211, v212, v213);
        if (!v226 || (objc_msgSend_encodedStrokeIdentifier(v196, v221, v222, v223, v224, v225), v227 = objc_claimAutoreleasedReturnValue(), v232 = objc_msgSend_isEqual_(v227, v228, v189, v229, v230, v231), v227, v226, (v232 & 1) == 0))
        {
          if (qword_1EA84DC48 == -1)
          {
            v238 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_39;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v238 = qword_1EA84DC50[0];
            if (os_log_type_enabled(v238, OS_LOG_TYPE_FAULT))
            {
LABEL_39:
              v244 = objc_msgSend_encodedStrokeIdentifier(v196, v239, v240, v241, v242, v243);
              *v1112 = 138412546;
              *&v1112[4] = v244;
              *&v1112[12] = 2112;
              *&v1112[14] = v189;
              _os_log_impl(&dword_18366B000, v238, OS_LOG_TYPE_FAULT, "Unexpected mismatch encodedStrokeIdentifier in _handleNonTextStrokes, encoded stroke identifier is %@, encoded stroke identifier in strokeProvider is %@.", v1112, 0x16u);
            }
          }
        }

        v245 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1030, v233, v234, v235, v236, v237);
        v250 = objc_msgSend_objectForKey_(v245, v246, v189, v247, v248, v249);
        v256 = objc_msgSend_integerValue(v250, v251, v252, v253, v254, v255);

        v257 = [CHStrokeGroup alloc];
        v262 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v258, v189, v259, v260, v261);
        objc_msgSend_bounds(v196, v263, v264, v265, v266, v267);
        v269 = v268;
        v271 = v270;
        v273 = v272;
        v275 = v274;
        objc_msgSend_bounds(v196, v276, v277, v278, v279, v280);
        StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v257, v281, v262, v189, v189, v256, @"groupingManagerNonText", v269, v271, v273, v275, 1.0, v282, v283);

        objc_msgSend_addObject_(v1039, v285, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v286, v287, v288);
        objc_msgSend_addObject_(v1035, v289, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v290, v291, v292);
        goto LABEL_48;
      }

      if (qword_1EA84DC48 == -1)
      {
        v293 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_45;
        }

LABEL_44:
        *v1112 = 138412290;
        *&v1112[4] = v189;
        _os_log_impl(&dword_18366B000, v293, OS_LOG_TYPE_ERROR, "Unexpected nil stroke in _handleNonTextStrokes, encoded stroke identifier is %@. Skipping", v1112, 0xCu);
        goto LABEL_45;
      }

      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v293 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

LABEL_45:

      if (qword_1EA84DC48 == -1)
      {
        StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = qword_1EA84DC50[0];
        if (!os_log_type_enabled(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_48;
        }

LABEL_47:
        *v1112 = 138412290;
        *&v1112[4] = v189;
        _os_log_impl(&dword_18366B000, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, OS_LOG_TYPE_FAULT, "Unexpected nil stroke in _handleNonTextStrokes, encoded stroke identifier is %@. Skipping", v1112, 0xCu);
        goto LABEL_48;
      }

      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = qword_1EA84DC50[0];
      if (os_log_type_enabled(StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_47;
      }

LABEL_48:

      ++v188;
    }

    while (v186 != v188);
    v294 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v183, &v1068, buf, 16, v185);
    v186 = v294;
  }

  while (v294);
LABEL_59:

  if (*(v1091 + 24) == 1)
  {
    v300 = MEMORY[0x1E695DF70];
    v301 = objc_msgSend_count(v1012, v295, v296, v297, v298, v299);
    v306 = objc_msgSend_arrayWithCapacity_(v300, v302, v301, v303, v304, v305);
    *v1112 = MEMORY[0x1E69E9820];
    *&v1112[8] = 3221225472;
    *&v1112[16] = sub_18373E2B4;
    v1113 = &unk_1E6DDD1F0;
    v307 = v1042;
    v1114 = v307;
    v976 = v306;
    v1115 = v976;
    objc_msgSend_enumerateObjectsUsingBlock_(v1012, v308, v1112, v309, v310, v311);
    v312 = [CHFastStrokeGroupingStrategy alloc];
    v318 = objc_msgSend_locales(selfCopy, v313, v314, v315, v316, v317);
    v975 = objc_msgSend_initWithStrokeProvider_locales_clutterFilter_(v312, v319, v307, v318, 0, v320);

    v970 = objc_msgSend_groupingResultUsingStrokes_distanceMetric_mergingDistanceThreshold_clusteringLinkage_anchorPoints_shouldCancel_(v975, v321, v976, 0, 1, 1, v979, 125.0);
    v327 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1030, v322, v323, v324, v325, v326);
    v328 = v970;
    v1031 = v976;
    v1024 = v327;
    v974 = v328;
    v1010 = objc_msgSend_set(MEMORY[0x1E695DFA8], v329, v330, v331, v332, v333);
    if (v328)
    {
      objc_msgSend_fastGroupingClusters(v328, v334, v335, v336, v337, v338);
      v343 = __p;
      if (v1103 != __p)
      {
        v344 = 0;
        do
        {
          v1021 = v344;
          v345 = &v343[72 * v344];
          v350 = objc_msgSend_setWithCapacity_(MEMORY[0x1E695DFA8], v339, *(v345 + 7), v340, v341, v342);
          v351 = v345 + 48;
          v352 = *(v345 + 5);
          if (v352 == v345 + 48)
          {
            v353 = 0;
            v368 = 0;
          }

          else
          {
            v353 = 0;
            v354 = 0;
            v355 = 0;
            v356 = *MEMORY[0x1E695EFF8];
            v357 = *(MEMORY[0x1E695EFF8] + 8);
            x = *MEMORY[0x1E695F050];
            y = *(MEMORY[0x1E695F050] + 8);
            width = *(MEMORY[0x1E695F050] + 16);
            height = *(MEMORY[0x1E695F050] + 24);
            do
            {
              v362 = objc_msgSend_objectAtIndexedSubscript_(v1031, v346, *(v352 + 4), v347, v348, v349);
              v368 = objc_msgSend_encodedStrokeIdentifier(v362, v363, v364, v365, v366, v367);
              v373 = objc_msgSend_objectForKey_(v1024, v369, v368, v370, v371, v372);
              v379 = objc_msgSend_integerValue(v373, v374, v375, v376, v377, v378);

              if (v355)
              {
                v384 = v355;
              }

              else
              {
                v384 = v379;
              }

              if (v384 == v379)
              {
                v355 = v384;
              }

              else
              {
                v355 = 5;
              }

              objc_msgSend_addObject_(v350, v380, v368, v381, v382, v383);
              if (!v353)
              {
                v353 = v368;
                objc_msgSend_bounds(v362, v390, v391, v392, v393, v394);
                v356 = v395;
                v357 = v396;
              }

              objc_msgSend_bounds(v362, v385, v386, v387, v388, v389);
              v1128.origin.x = v397;
              v1128.origin.y = v398;
              v1128.size.width = v399;
              v1128.size.height = v400;
              v1126.origin.x = x;
              v1126.origin.y = y;
              v1126.size.width = width;
              v1126.size.height = height;
              v1127 = CGRectUnion(v1126, v1128);
              x = v1127.origin.x;
              y = v1127.origin.y;
              width = v1127.size.width;
              height = v1127.size.height;

              v401 = *(v352 + 1);
              if (v401)
              {
                do
                {
                  v402 = v401;
                  v401 = *v401;
                }

                while (v401);
              }

              else
              {
                do
                {
                  v402 = *(v352 + 2);
                  v403 = *v402 == v352;
                  v352 = v402;
                }

                while (!v403);
              }

              v354 = v368;
              v352 = v402;
            }

            while (v402 != v351);
            if (v353 && v368)
            {
              v404 = [CHStrokeGroup alloc];
              v406 = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v404, v405, v350, v353, v368, v355, @"groupingManagerNonText", x, y, width, height, 1.0, v356, v357);
              objc_msgSend_addObject_(v1010, v407, v406, v408, v409, v410);
            }
          }

          v344 = v1021 + 1;
          v343 = __p;
        }

        while (v1021 + 1 < 0x8E38E38E38E38E39 * ((v1103 - __p) >> 3));
      }

      v411 = v1010;
      v412 = v1010;
      if (v343)
      {
        v413 = v343;
        if (v1103 != v343)
        {
          v414 = (v1103 - 32);
          do
          {
            v415 = (v414 - 40);
            sub_18368D56C(v414, *(v414 + 8));
            sub_18368A374(v414 - 40, *(v414 - 32));
            v414 -= 72;
          }

          while (v415 != v343);
          v413 = __p;
        }

        v1103 = v343;
        operator delete(v413);
        v411 = v1010;
      }
    }

    else
    {
      v411 = v1010;
      v417 = v1010;
    }

    v418 = [CHCTLD alloc];
    v423 = objc_msgSend_initWithType_(v418, v419, 2, v420, v421, v422);
    v429 = objc_msgSend_allObjects(v1010, v424, v425, v426, v427, v428);
    v434 = objc_msgSend_mergeStrokeGroups_(v423, v430, v429, v431, v432, v433);

    objc_msgSend_addObjectsFromArray_(v1039, v435, v434, v436, v437, v438);
    objc_msgSend_addObjectsFromArray_(v1035, v439, v434, v440, v441, v442);
  }

  _Block_object_dispose(&v1090, 8);
LABEL_96:

LABEL_97:
  v1066 = 0u;
  v1067 = 0u;
  v1064 = 0u;
  v1065 = 0u;
  if (selfCopy)
  {
    objc_msgSend_allKeys(selfCopy->_groupingStrategiesByIdentifierForTextStrokeClasses, v104, v105, v106, v107, v108);
  }

  else
  {
    objc_msgSend_allKeys(0, v104, v105, v106, v107, v108);
  }
  v443 = ;
  v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v443, v444, &v1064, v1111, 16, v445);
  if (v446)
  {
    v447 = *v1065;
    if (groupingResultCopy)
    {
LABEL_101:
      v448 = 0;
      while (1)
      {
        if (*v1065 != v447)
        {
          objc_enumerationMutation(v443);
        }

        v449 = *(*(&v1064 + 1) + 8 * v448);
        if (blockCopy[2]())
        {
          break;
        }

        if (objc_msgSend_integerValue(v449, v450, v451, v452, v453, v454) == 3)
        {
          v1109 = @"CHMathStrokeGroupingStrategy";
          v1110 = groupingResultCopy;
          v457 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v455, &v1110, &v1109, 1, v456);
        }

        else
        {
          v457 = 0;
        }

        sub_18373C698(&selfCopy->super.isa, v449, classificationResultCopy, v995, strokeClassificationResultCopy, v1018, v996, v992, v993, v994, v997, v457, blockCopy);

        if (v446 == ++v448)
        {
          v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v443, v458, &v1064, v1111, 16, v459);
          if (v446)
          {
            goto LABEL_101;
          }

          break;
        }
      }
    }

    else
    {
LABEL_111:
      v460 = 0;
      while (1)
      {
        if (*v1065 != v447)
        {
          objc_enumerationMutation(v443);
        }

        v461 = *(*(&v1064 + 1) + 8 * v460);
        if (blockCopy[2]())
        {
          break;
        }

        sub_18373C698(&selfCopy->super.isa, v461, classificationResultCopy, v995, strokeClassificationResultCopy, v1018, v996, v992, v993, v994, v997, 0, blockCopy);
        if (v446 == ++v460)
        {
          v446 = objc_msgSend_countByEnumeratingWithState_objects_count_(v443, v462, &v1064, v1111, 16, v463);
          if (v446)
          {
            goto LABEL_111;
          }

          break;
        }
      }
    }
  }

  v990 = v992;
  v1009 = v993;
  v1007 = v994;
  v1043 = v997;
  v1002 = classificationResultCopy;
  v1004 = blockCopy;
  if (selfCopy)
  {
    v1025 = objc_msgSend_sortedGroupsBySizeDescending_(CHStrokeGroupingManager, v464, v990, v465, v466, v467);
    v1016 = objc_msgSend_set(MEMORY[0x1E695DFA8], v468, v469, v470, v471, v472);
    v1040 = objc_msgSend_set(MEMORY[0x1E695DFA8], v473, v474, v475, v476, v477);
    if (((*v999)(v1004) & 1) == 0)
    {
      v1034 = 1;
      for (i = 0; ; ++i)
      {
        v716 = objc_msgSend_count(v1025, v478, v479, v480, v481, v482);
        v479 = i;
        if (i >= v716)
        {
          break;
        }

        v717 = objc_msgSend_objectAtIndexedSubscript_(v1025, v478, i, v480, v481, v482);
        v718 = selfCopy->_groupingStrategiesByIdentifierForTextStrokeClasses;
        v719 = MEMORY[0x1E696AD98];
        v725 = objc_msgSend_classification(v717, v720, v721, v722, v723, v724);
        v730 = objc_msgSend_numberWithInteger_(v719, v726, v725, v727, v728, v729);
        v735 = objc_msgSend_objectForKeyedSubscript_(v718, v731, v730, v732, v733, v734);
        v741 = objc_msgSend_strategyIdentifier(v717, v736, v737, v738, v739, v740);
        v746 = objc_msgSend_objectForKeyedSubscript_(v735, v742, v741, v743, v744, v745);

        v747 = objc_opt_class();
        v757 = v1034;
        if (objc_msgSend_isMemberOfClass_(v746, v748, v747, v749, v750, v751))
        {
          while (v757 < objc_msgSend_count(v1025, v752, v753, v754, v755, v756))
          {
            v762 = objc_msgSend_objectAtIndexedSubscript_(v1025, v758, v757, v759, v760, v761);
            v763 = selfCopy->_groupingStrategiesByIdentifierForTextStrokeClasses;
            v764 = MEMORY[0x1E696AD98];
            v770 = objc_msgSend_classification(v762, v765, v766, v767, v768, v769);
            v775 = objc_msgSend_numberWithInteger_(v764, v771, v770, v772, v773, v774);
            v780 = objc_msgSend_objectForKeyedSubscript_(v763, v776, v775, v777, v778, v779);
            v786 = objc_msgSend_strategyIdentifier(v762, v781, v782, v783, v784, v785);
            v791 = objc_msgSend_objectForKeyedSubscript_(v780, v787, v786, v788, v789, v790);

            v792 = objc_opt_class();
            isMemberOfClass = objc_msgSend_isMemberOfClass_(v791, v793, v792, v794, v795, v796);
            if (v746 == v791)
            {
              v802 = 0;
            }

            else
            {
              v802 = isMemberOfClass;
            }

            if ((v802 & 1) != 0 && (objc_msgSend_containsObject_(v1040, v798, v717, v799, v800, v801) & 1) == 0 && (objc_msgSend_containsObject_(v1040, v803, v762, v804, v805, v806) & 1) == 0)
            {
              objc_msgSend_relativeOverlapOfGroup_withGroup_(v746, v807, v717, v762, v808, v809);
              if (v815 > 0.4)
              {
                v816 = objc_msgSend_strategyIdentifier(v717, v810, v811, v812, v813, v814);
                v821 = objc_msgSend_objectForKeyedSubscript_(v1043, v817, v816, v818, v819, v820);
                v827 = objc_msgSend_substrokesByStrokeIdentifier(v1002, v822, v823, v824, v825, v826);
                v829 = objc_msgSend_regroupedStrokeGroup_fromResult_withAdversarialGroup_allSubstrokesByStrokeIdentifier_cancellationBlock_(v746, v828, v717, v821, v762, v827, v1004);

                if (objc_msgSend_count(v829, v830, v831, v832, v833, v834) >= 2)
                {
                  objc_msgSend_unionSet_(v1016, v835, v829, v837, v838, v839);
                  objc_msgSend_addObject_(v1040, v840, v717, v841, v842, v843);
                  v848 = objc_msgSend_sortedGroupsBySizeDescending_(CHStrokeGroupingManager, v844, v829, v845, v846, v847);
                  objc_msgSend_addObjectsFromArray_(v1025, v849, v848, v850, v851, v852);
                }

                v853 = objc_msgSend_strategyIdentifier(v762, v835, v836, v837, v838, v839);
                v858 = objc_msgSend_objectForKeyedSubscript_(v1043, v854, v853, v855, v856, v857);
                v864 = objc_msgSend_substrokesByStrokeIdentifier(v1002, v859, v860, v861, v862, v863);
                v866 = objc_msgSend_regroupedStrokeGroup_fromResult_withAdversarialGroup_allSubstrokesByStrokeIdentifier_cancellationBlock_(v791, v865, v762, v858, v717, v864, v1004);

                if (objc_msgSend_count(v866, v867, v868, v869, v870, v871) >= 2)
                {
                  objc_msgSend_unionSet_(v1016, v872, v866, v873, v874, v875);
                  objc_msgSend_addObject_(v1040, v876, v762, v877, v878, v879);
                  v884 = objc_msgSend_sortedGroupsBySizeDescending_(CHStrokeGroupingManager, v880, v866, v881, v882, v883);
                  objc_msgSend_addObjectsFromArray_(v1025, v885, v884, v886, v887, v888);
                }
              }
            }

            ++v757;
          }
        }

        ++v1034;
      }
    }

    v1013 = objc_msgSend_mutableCopy(v1040, v478, v479, v480, v481, v482);
    objc_msgSend_minusSet_(v1013, v483, v1016, v484, v485, v486);
    objc_msgSend_minusSet_(v1013, v487, v1009, v488, v489, v490);
    objc_msgSend_minusSet_(v1016, v491, v1040, v492, v493, v494);
    v1086 = 0u;
    v1084 = 0u;
    v1085 = 0u;
    v1083 = 0u;
    v500 = objc_msgSend_allKeys(v1043, v495, v496, v497, v498, v499);
    v1022 = v500;
    v503 = objc_msgSend_countByEnumeratingWithState_objects_count_(v500, v501, &v1083, buf, 16, v502);
    if (v503)
    {
      obja = *v1084;
      do
      {
        v1032 = v503;
        for (j = 0; j != v1032; ++j)
        {
          if (*v1084 != obja)
          {
            objc_enumerationMutation(v1022);
          }

          v509 = *(*(&v1083 + 1) + 8 * j);
          v510 = objc_msgSend_objectForKeyedSubscript_(v1043, v504, v509, v505, v506, v507);
          v511 = objc_opt_class();
          if (objc_msgSend_isMemberOfClass_(v510, v512, v511, v513, v514, v515))
          {
            v521 = objc_msgSend_strokeGroups(v510, v516, v517, v518, v519, v520);
            v526 = objc_msgSend_intersectsSet_(v1040, v522, v521, v523, v524, v525);

            if (v526)
            {
              v532 = objc_msgSend_strokeGroups(v510, v527, v528, v529, v530, v531);
              v1036 = objc_msgSend_mutableCopy(v532, v533, v534, v535, v536, v537);

              v543 = objc_msgSend_createdStrokeGroups(v510, v538, v539, v540, v541, v542);
              v549 = objc_msgSend_mutableCopy(v543, v544, v545, v546, v547, v548);

              v555 = objc_msgSend_deletedStrokeGroups(v510, v550, v551, v552, v553, v554);
              v561 = objc_msgSend_mutableCopy(v555, v556, v557, v558, v559, v560);

              v1072 = MEMORY[0x1E69E9820];
              v1073 = 3221225472;
              v1074 = sub_18373E820;
              v1075 = &unk_1E6DDD240;
              v1076 = v509;
              v566 = objc_msgSend_objectsPassingTest_(v1016, v562, &v1072, v563, v564, v565);
              *&v1068 = MEMORY[0x1E69E9820];
              *(&v1068 + 1) = 3221225472;
              *&v1069 = sub_18373E874;
              *(&v1069 + 1) = &unk_1E6DDD240;
              *&v1070 = v509;
              v571 = objc_msgSend_objectsPassingTest_(v1013, v567, &v1068, v568, v569, v570);
              objc_msgSend_minusSet_(v1036, v572, v1040, v573, v574, v575);
              objc_msgSend_unionSet_(v1036, v576, v566, v577, v578, v579);
              objc_msgSend_minusSet_(v549, v580, v1040, v581, v582, v583);
              objc_msgSend_unionSet_(v549, v584, v566, v585, v586, v587);
              objc_msgSend_unionSet_(v561, v588, v571, v589, v590, v591);
              v592 = [CHBottomUpStrokeGroupingResult alloc];
              v598 = objc_msgSend_substrokePlacementsByStrokeIdentifier(v510, v593, v594, v595, v596, v597);
              v600 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(v592, v599, v1036, v549, v561, v598);

              objc_msgSend_setObject_forKeyedSubscript_(v1043, v601, v600, v509, v602, v603);
            }
          }
        }

        v500 = v1022;
        v503 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1022, v504, &v1083, buf, 16, v507);
      }

      while (v503);
    }

    objc_msgSend_minusSet_(v990, v604, v1040, v605, v606, v607);
    objc_msgSend_unionSet_(v990, v608, v1016, v609, v610, v611);
    objc_msgSend_minusSet_(v1009, v612, v1040, v613, v614, v615);
    objc_msgSend_unionSet_(v1009, v616, v1016, v617, v618, v619);
    objc_msgSend_unionSet_(v1007, v620, v1013, v621, v622, v623);
  }

  if (((*v999)(v1004) & 1) == 0)
  {
    objb = objc_msgSend_array(MEMORY[0x1E695DF70], v624, v625, v626, v627, v628);
    v1062 = 0u;
    v1063 = 0u;
    v1060 = 0u;
    v1061 = 0u;
    if (selfCopy)
    {
      objc_msgSend_allValues(selfCopy->_groupingStrategiesByIdentifierForTextStrokeClasses, v629, v630, v631, v632, v633);
    }

    else
    {
      objc_msgSend_allValues(0, v629, v630, v631, v632, v633);
    }
    v1011 = ;
    v1014 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1011, v634, &v1060, v1108, 16, v635);
    if (v1014)
    {
      v1041 = 0;
      v1026 = 0;
      v1023 = 0;
      v1017 = *v1061;
      do
      {
        for (k = 0; k != v1014; ++k)
        {
          if (*v1061 != v1017)
          {
            objc_enumerationMutation(v1011);
          }

          v641 = *(*(&v1060 + 1) + 8 * k);
          v1056 = 0u;
          v1057 = 0u;
          v1058 = 0u;
          v1059 = 0u;
          v1037 = objc_msgSend_allValues(v641, v636, v637, v638, v639, v640);
          v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1037, v642, &v1056, v1107, 16, v643);
          if (v644)
          {
            v645 = *v1057;
            do
            {
              v646 = 0;
              v1033 = v644;
              do
              {
                if (*v1057 != v645)
                {
                  objc_enumerationMutation(v1037);
                }

                v647 = *(*(&v1056 + 1) + 8 * v646);
                v648 = objc_opt_class();
                if (objc_msgSend_isMemberOfClass_(v647, v649, v648, v650, v651, v652))
                {
                  objc_msgSend_addObject_(objb, v653, v647, v654, v655, v656);
                  v662 = objc_msgSend_strategyIdentifier(v647, v657, v658, v659, v660, v661);
                  v667 = objc_msgSend_objectForKeyedSubscript_(v1043, v663, v662, v664, v665, v666);
                  v673 = objc_msgSend_strokeGroups(v667, v668, v669, v670, v671, v672);
                  v679 = objc_msgSend_count(v673, v674, v675, v676, v677, v678) == 0;

                  if (!v679)
                  {
                    v1054 = 0u;
                    v1055 = 0u;
                    v1052 = 0u;
                    v1053 = 0u;
                    v683 = objc_msgSend_strategyIdentifier(v647, v653, v680, v681, v682, v656);
                    v688 = objc_msgSend_objectForKeyedSubscript_(v1043, v684, v683, v685, v686, v687);
                    v694 = objc_msgSend_strokeGroups(v688, v689, v690, v691, v692, v693);

                    v697 = 0;
                    v703 = objc_msgSend_countByEnumeratingWithState_objects_count_(v694, v695, &v1052, v1106, 16, v696);
                    if (v703)
                    {
                      v704 = *v1053;
                      do
                      {
                        for (m = 0; m != v703; ++m)
                        {
                          if (*v1053 != v704)
                          {
                            objc_enumerationMutation(v694);
                          }

                          v706 = objc_msgSend_strokeIdentifiers(*(*(&v1052 + 1) + 8 * m), v698, v699, v700, v701, v702);
                          v712 = objc_msgSend_count(v706, v707, v708, v709, v710, v711);

                          v697 += v712;
                        }

                        v703 = objc_msgSend_countByEnumeratingWithState_objects_count_(v694, v698, &v1052, v1106, 16, v702);
                      }

                      while (v703);
                    }

                    ++v1041;
                    if (v697 > v1026)
                    {
                      v713 = v647;

                      v1026 = v697;
                      v1023 = v713;
                    }
                  }

                  v644 = v1033;
                }

                ++v646;
              }

              while (v646 != v644);
              v644 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1037, v653, &v1056, v1107, 16, v656);
            }

            while (v644);
          }
        }

        v1014 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1011, v636, &v1060, v1108, 16, v640);
      }

      while (v1014);

      if (v1023 && v1041 >= 2)
      {
        objc_msgSend_mergeGroupsPostProcessing_createdGroups_deletedGroups_availableGroupingStrategies_allowOppositeOrientations_groupStatistics_(v1023, v714, v990, v1009, v1007, objb, 1, 0);
      }

      v715 = v1023;
    }

    else
    {

      v715 = 0;
    }
  }

  if ((*v999)(v1004))
  {
    v894 = 0;
  }

  else
  {
    objc_msgSend_removeAllObjects(v1009, v889, v890, v891, v892, v893);
    objc_msgSend_removeAllObjects(v1007, v895, v896, v897, v898, v899);
    v1050 = 0u;
    v1051 = 0u;
    v1048 = 0u;
    v1049 = 0u;
    v900 = v990;
    v908 = objc_msgSend_countByEnumeratingWithState_objects_count_(v900, v901, &v1048, v1105, 16, v902);
    if (v908)
    {
      v909 = *v1049;
      do
      {
        for (n = 0; n != v908; ++n)
        {
          if (*v1049 != v909)
          {
            objc_enumerationMutation(v900);
          }

          v911 = *(*(&v1048 + 1) + 8 * n);
          v912 = objc_msgSend_strokeGroups(v1018, v903, v904, v905, v906, v907);
          v917 = objc_msgSend_containsObject_(v912, v913, v911, v914, v915, v916);

          if ((v917 & 1) == 0)
          {
            objc_msgSend_addObject_(v1009, v903, v911, v905, v906, v907);
          }
        }

        v908 = objc_msgSend_countByEnumeratingWithState_objects_count_(v900, v903, &v1048, v1105, 16, v907);
      }

      while (v908);
    }

    v1046 = 0u;
    v1047 = 0u;
    v1044 = 0u;
    v1045 = 0u;
    v923 = objc_msgSend_textStrokeGroups(v1018, v918, v919, v920, v921, v922);
    v930 = objc_msgSend_countByEnumeratingWithState_objects_count_(v923, v924, &v1044, v1104, 16, v925);
    if (v930)
    {
      v931 = *v1045;
      do
      {
        for (ii = 0; ii != v930; ++ii)
        {
          if (*v1045 != v931)
          {
            objc_enumerationMutation(v923);
          }

          v933 = *(*(&v1044 + 1) + 8 * ii);
          if ((objc_msgSend_containsObject_(v900, v926, v933, v927, v928, v929) & 1) == 0)
          {
            objc_msgSend_addObject_(v1007, v926, v933, v927, v928, v929);
          }
        }

        v930 = objc_msgSend_countByEnumeratingWithState_objects_count_(v923, v926, &v1044, v1104, 16, v929);
      }

      while (v930);
    }

    v938 = objc_msgSend_setByAddingObjectsFromSet_(v900, v934, v982, v935, v936, v937);
    v944 = objc_msgSend_mutableCopy(v938, v939, v940, v941, v942, v943);

    v949 = objc_msgSend_setByAddingObjectsFromSet_(v1009, v945, v983, v946, v947, v948);
    v955 = objc_msgSend_mutableCopy(v949, v950, v951, v952, v953, v954);

    v960 = objc_msgSend_setByAddingObjectsFromSet_(v1007, v956, v984, v957, v958, v959);
    v966 = objc_msgSend_mutableCopy(v960, v961, v962, v963, v964, v965);

    v967 = [CHMergedStrokeGroupingResults alloc];
    v894 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_groupingResultsByStrategyIdentifier_(v967, v968, v944, v955, v966, v1043);
  }

  return v894;
}

+ (id)identifyStableStrokeIdentifiersUsingOrderedStrokeIdentifiers:(id)identifiers prevOrderedStrokeIdentifiers:(id)strokeIdentifiers strokeClassificationResult:(id)result prevStrokeClassificationResult:(id)classificationResult
{
  v152 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  resultCopy = result;
  classificationResultCopy = classificationResult;
  v137 = objc_msgSend_set(MEMORY[0x1E695DFA8], v11, v12, v13, v14, v15);
  for (i = 0; ; ++i)
  {
    v22 = objc_msgSend_count(identifiersCopy, v16, v17, v18, v19, v20);
    v33 = v22 >= objc_msgSend_count(strokeIdentifiersCopy, v23, v24, v25, v26, v27) ? objc_msgSend_count(strokeIdentifiersCopy, v28, v29, v30, v31, v32) : objc_msgSend_count(identifiersCopy, v28, v29, v30, v31, v32);
    if (i >= v33)
    {
      break;
    }

    v38 = objc_msgSend_objectAtIndexedSubscript_(identifiersCopy, v34, i, v35, v36, v37);
    v43 = objc_msgSend_objectAtIndexedSubscript_(strokeIdentifiersCopy, v39, i, v40, v41, v42);
    v49 = objc_msgSend_strokeClassificationsByStrokeIdentifier(resultCopy, v44, v45, v46, v47, v48);
    v54 = objc_msgSend_objectForKey_(v49, v50, v38, v51, v52, v53);

    v60 = objc_msgSend_strokeClassificationsByStrokeIdentifier(classificationResultCopy, v55, v56, v57, v58, v59);
    v65 = objc_msgSend_objectForKey_(v60, v61, v43, v62, v63, v64);

    v66 = objc_opt_class();
    v72 = objc_msgSend_integerValue(v54, v67, v68, v69, v70, v71);
    isStrokeClassificationTextOrMath = objc_msgSend_isStrokeClassificationTextOrMath_(v66, v73, v72, v74, v75, v76);
    v78 = objc_opt_class();
    v84 = objc_msgSend_integerValue(v65, v79, v80, v81, v82, v83);
    v89 = objc_msgSend_isStrokeClassificationTextOrMath_(v78, v85, v84, v86, v87, v88);
    v95 = v89;
    if ((isStrokeClassificationTextOrMath & v89) == 1)
    {
      v96 = objc_msgSend_integerValue(v54, v90, v91, v92, v93, v94);
      v102 = v96 != objc_msgSend_integerValue(v65, v97, v98, v99, v100, v101);
    }

    else
    {
      v102 = isStrokeClassificationTextOrMath ^ v89;
    }

    if (v102 & 1 | ((objc_msgSend_isEqual_(v38, v90, v43, v92, v93, v94) & 1) == 0))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v107 = qword_1EA84DC68;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v136 = v107;
        v113 = objc_msgSend_count(identifiersCopy, v108, v109, v110, v111, v112);
        if (v113 >= objc_msgSend_count(strokeIdentifiersCopy, v114, v115, v116, v117, v118))
        {
          v124 = objc_msgSend_count(strokeIdentifiersCopy, v119, v120, v121, v122, v123);
        }

        else
        {
          v124 = objc_msgSend_count(identifiersCopy, v119, v120, v121, v122, v123);
        }

        *buf = 134219264;
        v141 = i;
        v142 = 2048;
        v143 = v124;
        v144 = 1024;
        v145 = isStrokeClassificationTextOrMath;
        v146 = 1024;
        v147 = v95;
        v148 = 2048;
        v107 = v136;
        v149 = objc_msgSend_integerValue(v54, v125, v126, v127, v128, v129);
        v150 = 2048;
        v151 = objc_msgSend_integerValue(v65, v130, v131, v132, v133, v134);
        _os_log_impl(&dword_18366B000, v136, OS_LOG_TYPE_DEFAULT, "Found unstable stroke at index %ld / %ld, isText ? %d, wasText ? %d, class %ld, old class %ld", buf, 0x36u);
      }

      break;
    }

    objc_msgSend_addObject_(v137, v103, v38, v104, v105, v106);
  }

  return v137;
}

- (id)recognizableDrawingForStrokeGroup:(id)group translationVector:(CGVector)vector originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds rescalingFactor:(double *)factor replacementStrokeGroup:(id *)strokeGroup
{
  dy = vector.dy;
  dx = vector.dx;
  groupCopy = group;
  if (self)
  {
    groupingStrategiesByIdentifierForTextStrokeClasses = self->_groupingStrategiesByIdentifierForTextStrokeClasses;
  }

  else
  {
    groupingStrategiesByIdentifierForTextStrokeClasses = 0;
  }

  v16 = groupingStrategiesByIdentifierForTextStrokeClasses;
  v17 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_classification(groupCopy, v18, v19, v20, v21, v22);
  v28 = objc_msgSend_numberWithInteger_(v17, v24, v23, v25, v26, v27);
  v33 = objc_msgSend_objectForKeyedSubscript_(v16, v29, v28, v30, v31, v32);
  v39 = objc_msgSend_strategyIdentifier(groupCopy, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_objectForKey_(v33, v40, v39, v41, v42, v43);

  if (v44)
  {
    v47 = objc_msgSend_recognizableDrawingForStrokeGroup_translationVector_originalDrawing_orderedStrokesIDs_rescalingFactor_replacementStrokeGroup_(v44, v45, groupCopy, drawing, ds, factor, strokeGroup, dx, dy);
  }

  else
  {
    v47 = objc_msgSend_simpleDrawingForStrokeGroup_originalDrawing_orderedStrokesIDs_(self, v45, groupCopy, drawing, ds, v46);
    if (factor)
    {
      *factor = 1.0;
    }
  }

  return v47;
}

- (id)simpleDrawingForStrokeGroup:(id)group originalDrawing:(id *)drawing orderedStrokesIDs:(id *)ds
{
  v100 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  v87 = objc_alloc_init(CHDrawing);
  drawingCopy = drawing;
  if (drawing)
  {
    v12 = objc_alloc_init(CHDrawing);
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_bounds(groupCopy, v7, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v86 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18, v19, v20, v21);
  v27 = objc_msgSend_strokeProvider(self, v22, v23, v24, v25, v26);
  v33 = objc_msgSend_strokeIdentifiers(groupCopy, v28, v29, v30, v31, v32, v27);
  v39 = objc_msgSend_allObjects(v33, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_strokesForIdentifiers_(self, v40, v39, v41, v42, v43);

  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = sub_18373EFB0;
  v97[3] = &unk_1E6DDD268;
  v81 = v27;
  v98 = v81;
  objc_msgSend_sortedArrayUsingComparator_(v44, v45, v97, v46, v47, v48);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  obj = v94 = 0u;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v93, v99, 16, v50);
  if (v51)
  {
    v52 = *v94;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        v54 = v44;
        if (*v94 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v93 + 1) + 8 * i);
        v56 = objc_opt_class();
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = sub_18373F05C;
        v88[3] = &unk_1E6DDD290;
        v57 = v12;
        v89 = v57;
        v91 = v14;
        v92 = v16;
        v58 = v87;
        v90 = v58;
        objc_msgSend_enumeratePointsForStroke_interpolationType_resolution_usingBlock_(v56, v59, v55, 0, 1, v88);
        objc_msgSend_endStroke(v58, v60, v61, v62, v63, v64);
        if (v12)
        {
          objc_msgSend_endStroke(v57, v65, v66, v67, v68, v69);
        }

        v70 = objc_msgSend_encodedStrokeIdentifier(v55, v65, v66, v67, v68, v69);
        v44 = v54;
        objc_msgSend_addObject_(v86, v71, v70, v72, v73, v74);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v75, &v93, v99, 16, v76);
    }

    while (v51);
  }

  if (drawingCopy)
  {
    v77 = v12;
    *drawingCopy = v12;
  }

  if (ds)
  {
    v78 = v86;
    *ds = v86;
  }

  v79 = v87;

  return v87;
}

- (id)strokesForIdentifiers:(id)identifiers
{
  v67 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v57 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = identifiersCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v58, v66, 16, v10);
  if (v16)
  {
    v17 = *v59;
    do
    {
      v18 = 0;
      do
      {
        if (*v59 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v58 + 1) + 8 * v18);
        v20 = objc_msgSend_strokeProvider(self, v11, v12, v13, v14, v15);
        v25 = objc_msgSend_strokeIdentifierFromData_(v20, v21, v19, v22, v23, v24);

        v31 = objc_msgSend_strokeProvider(self, v26, v27, v28, v29, v30);
        v36 = objc_msgSend_strokeForIdentifier_(v31, v32, v25, v33, v34, v35);

        if (v36)
        {
          objc_msgSend_addObject_(v57, v37, v36, v38, v39, v40);
        }

        else
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v41 = qword_1EA84DC68;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v47 = objc_msgSend_strokeProvider(self, v42, v43, v44, v45, v46);
            v53 = objc_msgSend_strokeProviderVersion(v47, v48, v49, v50, v51, v52);
            *buf = 138412546;
            v63 = v19;
            v64 = 2112;
            v65 = v53;
            _os_log_impl(&dword_18366B000, v41, OS_LOG_TYPE_DEFAULT, "Failed to get stroke with id: %@ from stroke provider version %@", buf, 0x16u);
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v58, v66, 16, v15);
    }

    while (v16);
  }

  return v57;
}

@end