@interface CHDocumentLayoutAnalysisManager
- (CHDocumentLayoutAnalysisManager)initWithStrokeProvider:(id)a3 documentLayoutAnalyzer:(id)a4 locales:(id)a5;
- (id)subjectStrokeGroupingResult:(id)a3 allOrderedStrokeIdentifiers:(id)a4 lastGroupingResult:(id)a5 lastDocumentLayoutAnalysisResult:(id)a6 lastStrokeClassificationResult:(id)a7 cancellationBlock:(id)a8;
- (id)updatedStrokeClassificationResult:(id)a3 subjectStrokeIdentifiers:(id)a4 lastStrokeClassificationResult:(id)a5 lastTilingResult:(id)a6 lastDocumentLayoutAnalysisResult:(id)a7 lastGroupingResult:(id)a8 outTilingResult:(id *)a9 outDocumentLayoutAnalysisResult:(id *)a10 outStrokeGroupingResult:(id *)a11 shouldRebuildResult:(BOOL)a12 cancellationBlock:(id)a13;
@end

@implementation CHDocumentLayoutAnalysisManager

- (CHDocumentLayoutAnalysisManager)initWithStrokeProvider:(id)a3 documentLayoutAnalyzer:(id)a4 locales:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v41.receiver = self;
  v41.super_class = CHDocumentLayoutAnalysisManager;
  v12 = [(CHDocumentLayoutAnalysisManager *)&v41 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_strokeProvider, a3);
    objc_storeStrong(&v13->_documentLayoutAnalyzer, a4);
    v14 = [CHTilingManager alloc];
    v19 = objc_msgSend_initWithStrokeProvider_(v14, v15, v9, v16, v17, v18);
    tilingManager = v13->_tilingManager;
    v13->_tilingManager = v19;

    v21 = [CHBottomUpStrokeGroupingStrategy alloc];
    isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v21, v22, v9, 1, v11, 0, 0);
    leftToRightBottomUpStrategy = v13->_leftToRightBottomUpStrategy;
    v13->_leftToRightBottomUpStrategy = isInlineContinuousMode_inlineContinuousModeTargets;

    v25 = [CHBottomUpStrokeGroupingStrategy alloc];
    v27 = objc_msgSend_initWithStrokeProvider_defaultWritingOrientation_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v25, v26, v9, 2, v11, 0, 0);
    rightToLeftBottomUpStrategy = v13->_rightToLeftBottomUpStrategy;
    v13->_rightToLeftBottomUpStrategy = v27;

    v13->_maxNumStrokesPerTile = objc_msgSend_maxNumStrokesForDecoderName_(CHDocumentLayoutAnalysisModel, v29, @"stroke_processor_decoder.bundle", v30, v31, v32);
    v38 = objc_msgSend_scriptCodeMap(CHDocumentLayoutAnalysisModel, v33, v34, v35, v36, v37);
    scriptCodeMap = v13->_scriptCodeMap;
    v13->_scriptCodeMap = v38;
  }

  return v13;
}

- (id)updatedStrokeClassificationResult:(id)a3 subjectStrokeIdentifiers:(id)a4 lastStrokeClassificationResult:(id)a5 lastTilingResult:(id)a6 lastDocumentLayoutAnalysisResult:(id)a7 lastGroupingResult:(id)a8 outTilingResult:(id *)a9 outDocumentLayoutAnalysisResult:(id *)a10 outStrokeGroupingResult:(id *)a11 shouldRebuildResult:(BOOL)a12 cancellationBlock:(id)a13
{
  v1726 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v1587 = a4;
  v1633 = a5;
  v1590 = a6;
  v1601 = a7;
  v1585 = a8;
  v1618 = a13;
  v1611 = v19;
  if (!v19)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v102 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v102, OS_LOG_TYPE_ERROR, "Input stroke classification result in document layout analysis can't be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v103 = qword_1EA84DC50[0];
    obj = v103;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v103, OS_LOG_TYPE_FAULT, "Input stroke classification result in document layout analysis can't be nil.", buf, 2u);
    }

    v104 = 0;
    goto LABEL_361;
  }

  v1630 = self;
  v1584 = objc_msgSend_orderedStrokes(self->_strokeProvider, v20, v21, v22, v23, v24);
  if (v1587)
  {
    v1685[0] = MEMORY[0x1E69E9820];
    v1685[1] = 3221225472;
    v1685[2] = sub_1838AFBFC;
    v1685[3] = &unk_1E6DDF690;
    v1686 = v1587;
    v34 = objc_msgSend_indexesOfObjectsPassingTest_(v1584, v30, v1685, v31, v32, v33);
    v39 = objc_msgSend_objectsAtIndexes_(v1584, v35, v34, v36, v37, v38);

    v1584 = v39;
  }

  v1604 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26, v27, v28, v29);
  v1593 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41, v42, v43, v44);
  v1610 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46, v47, v48, v49);
  v1603 = objc_msgSend_array(MEMORY[0x1E695DF70], v50, v51, v52, v53, v54);
  v1602 = objc_msgSend_array(MEMORY[0x1E695DF70], v55, v56, v57, v58, v59);
  v1592 = objc_msgSend_set(MEMORY[0x1E695DFA8], v60, v61, v62, v63, v64);
  v1612 = objc_msgSend_set(MEMORY[0x1E695DFA8], v65, v66, v67, v68, v69);
  v75 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1633, v70, v71, v72, v73, v74);
  v81 = objc_msgSend_allKeys(v75, v76, v77, v78, v79, v80);
  objc_msgSend_addObjectsFromArray_(v1612, v82, v81, v83, v84, v85);

  v1619 = objc_msgSend_set(MEMORY[0x1E695DFA8], v86, v87, v88, v89, v90);
  if (v1601)
  {
    v96 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v1601, v91, v92, v93, v94, v95);
    v1634 = objc_msgSend_mutableCopy(v96, v97, v98, v99, v100, v101);
  }

  else
  {
    v1634 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v91, v92, v93, v94, v95);
  }

  v1684 = 0u;
  v1683 = 0u;
  v1682 = 0u;
  v1681 = 0u;
  obj = v1584;
  v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v105, &v1681, v1718, 16, v106);
  if (v112)
  {
    v113 = *v1682;
LABEL_18:
    v114 = 0;
    while (1)
    {
      if (*v1682 != v113)
      {
        objc_enumerationMutation(obj);
      }

      v115 = *(*(&v1681 + 1) + 8 * v114);
      if (v1618 && (v1618[2]() & 1) != 0)
      {
        break;
      }

      v116 = objc_msgSend_encodedStrokeIdentifier(v115, v107, v108, v109, v110, v111);
      objc_msgSend_removeObject_(v1612, v117, v116, v118, v119, v120);
      v126 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v19, v121, v122, v123, v124, v125);
      v131 = objc_msgSend_objectForKeyedSubscript_(v126, v127, v116, v128, v129, v130);

      if (objc_msgSend_integerValue(v131, v132, v133, v134, v135, v136) == 8)
      {
        objc_msgSend_addObject_(v1604, v137, v115, v138, v139, v140);
        v146 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1633, v141, v142, v143, v144, v145);
        v151 = objc_msgSend_objectForKeyedSubscript_(v146, v147, v116, v148, v149, v150);

        if (v151)
        {
          if (objc_msgSend_integerValue(v151, v152, v153, v154, v155, v156) != 8)
          {
            objc_msgSend_addObject_(v1592, v157, v116, v158, v159, v160);
          }

          goto LABEL_33;
        }

        objc_msgSend_addObject_(v1593, v152, v115, v154, v155, v156);
        objc_msgSend_boundsForStroke_usingCache_(CHStrokeUtilities, v183, v115, v1634, v184, v185);
      }

      else
      {
        objc_msgSend_addObject_(v1610, v137, v115, v138, v139, v140);
        objc_msgSend_addObject_(v1603, v161, v116, v162, v163, v164);
        v170 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1633, v165, v166, v167, v168, v169);
        v151 = objc_msgSend_objectForKeyedSubscript_(v170, v171, v116, v172, v173, v174);

        if (v151 && objc_msgSend_integerValue(v151, v175, v176, v177, v178, v179) != 8)
        {
          goto LABEL_33;
        }

        objc_msgSend_addObject_(v1602, v175, v115, v177, v178, v179);
        if (v151)
        {
          goto LABEL_33;
        }

        objc_msgSend_boundsForStroke_usingCache_(CHStrokeUtilities, v180, v115, v1634, v181, v182);
      }

      v151 = 0;
LABEL_33:

      if (v112 == ++v114)
      {
        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v107, &v1681, v1718, 16, v111);
        if (v112)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  objc_msgSend_unionSet_(v1592, v186, v1612, v187, v188, v189);
  v1680 = 0u;
  v1679 = 0u;
  v1678 = 0u;
  v1677 = 0u;
  v1632 = v1592;
  v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1632, v190, &v1677, v1717, 16, v191);
  if (v197)
  {
    v198 = *v1678;
    do
    {
      for (i = 0; i != v197; ++i)
      {
        if (*v1678 != v198)
        {
          objc_enumerationMutation(v1632);
        }

        v200 = *(*(&v1677 + 1) + 8 * i);
        v201 = objc_msgSend_strokeClassificationsByStrokeIdentifier(v1633, v192, v193, v194, v195, v196);
        v206 = objc_msgSend_objectForKeyedSubscript_(v201, v202, v200, v203, v204, v205);

        if (v206 && objc_msgSend_integerValue(v206, v207, v208, v209, v210, v211) != 8)
        {
          objc_msgSend_addObject_(v1619, v212, v200, v213, v214, v215);
        }
      }

      v197 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1632, v192, &v1677, v1717, 16, v196);
    }

    while (v197);
  }

  v216 = v1590;
  v227 = 0x1E695D000uLL;
  if (!objc_msgSend_count(v1602, v217, v218, v219, v220, v221) && !objc_msgSend_count(v1632, v222, v223, v224, v225, v226))
  {
    v1586 = v1590;
    DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier = v1601;
    if (v1593)
    {
      if (v1633)
      {
        v934 = objc_msgSend_mutableCopy(v1633, v929, v930, v931, v932, v933);
      }

      else
      {
        v934 = objc_msgSend_mutableCopy(v19, v929, v930, v931, v932, v933);
      }

      v1478 = v934;
      if (v1585)
      {
        v1479 = objc_msgSend_strokeGroups(v1585, v935, v936, v937, v938, v939);
        v1629 = objc_msgSend_mutableCopy(v1479, v1480, v1481, v1482, v1483, v1484);

        v227 = 0x1E695D000;
      }

      else
      {
        v1629 = objc_msgSend_set(MEMORY[0x1E695DFA8], v935, v936, v937, v938, v939);
      }

      v1490 = objc_msgSend_set(*(v227 + 4008), v1485, v1486, v1487, v1488, v1489);
      v1637 = 0u;
      v1638 = 0u;
      v1635 = 0u;
      v1636 = 0u;
      v1491 = v1593;
      v1626 = v1491;
      v1498 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1491, v1492, &v1635, v1707, 16, v1493);
      if (v1498)
      {
        v1499 = *v1636;
        do
        {
          for (j = 0; j != v1498; ++j)
          {
            if (*v1636 != v1499)
            {
              objc_enumerationMutation(v1626);
            }

            v1501 = *(*(&v1635 + 1) + 8 * j);
            objc_msgSend_updateByAddingClutterStroke_(v1478, v1494, v1501, v1495, v1496, v1497);
            v1507 = objc_msgSend_encodedStrokeIdentifier(v1501, v1502, v1503, v1504, v1505, v1506);
            v1511 = objc_msgSend_scriptClassificationRawResultsForOneScriptClassification_scriptCodeMap_(CHStrokeClassifier, v1508, 8, v1630->_scriptCodeMap, v1509, v1510);
            objc_msgSend_updateStrokeIdentifier_withClassificationRawResult_(v1478, v1512, v1507, v1511, v1513, v1514);

            v1520 = objc_msgSend_encodedStrokeIdentifier(v1501, v1515, v1516, v1517, v1518, v1519);
            v1525 = objc_msgSend_objectForKeyedSubscript_(v1634, v1521, v1520, v1522, v1523, v1524);
            objc_msgSend_ch_CGRectValue(v1525, v1526, v1527, v1528, v1529, v1530);
            v1532 = v1531;
            v1534 = v1533;
            v1536 = v1535;
            v1538 = v1537;

            v1539 = [CHStrokeGroup alloc];
            v1544 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v1540, v1520, v1541, v1542, v1543);
            StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v1539, v1545, v1544, v1520, v1520, 8, @"groupingManagerNonText", v1532, v1534, v1536, v1538, 1.0, v1532, v1534);

            objc_msgSend_addObject_(v1629, v1547, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v1548, v1549, v1550);
            objc_msgSend_addObject_(v1490, v1551, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin, v1552, v1553, v1554);
          }

          v1491 = v1626;
          v1498 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1626, v1494, &v1635, v1707, 16, v1497);
        }

        while (v1498);
      }

      v1462 = objc_msgSend_copy(v1478, v1555, v1556, v1557, v1558, v1559);
      v1560 = [CHStrokeGroupingResult alloc];
      v1615 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v1560, v1561, v1629, v1490, 0, v1562);
    }

    else
    {
      v1474 = [CHStrokeGroupingResult alloc];
      if (v1585)
      {
        objc_msgSend_strokeGroups(v1585, v1469, v1470, v1471, v1472, v1473);
      }

      else
      {
        objc_msgSend_set(MEMORY[0x1E695DFD8], v1469, v1470, v1471, v1472, v1473);
      }
      v1475 = ;
      v1615 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v1474, v1476, v1475, 0, 0, v1477);

      v1563 = v1633;
      if (!v1633)
      {
        v1563 = v19;
      }

      v1462 = v1563;
    }

    v1601 = DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier;
    v1590 = v1586;
    v1463 = v1462;
    if (a9)
    {
      goto LABEL_354;
    }

    goto LABEL_355;
  }

  v228 = objc_msgSend_count(v1610, v222, v223, v224, v225, v226);
  v234 = objc_msgSend_count(v1619, v229, v230, v231, v232, v233);
  v245 = v234 + v228 - objc_msgSend_count(v1602, v235, v236, v237, v238, v239);
  if (v1590)
  {
    v1676 = 0u;
    v1675 = 0u;
    v1674 = 0u;
    v1673 = 0u;
    v246 = objc_msgSend_documentTiles(v1590, v240, v241, v242, v243, v244);
    v252 = objc_msgSend_allValues(v246, v247, v248, v249, v250, v251);

    v255 = 0;
    v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v253, &v1673, v1716, 16, v254);
    if (v261)
    {
      v262 = *v1674;
      do
      {
        for (k = 0; k != v261; ++k)
        {
          if (*v1674 != v262)
          {
            objc_enumerationMutation(v252);
          }

          v264 = *(*(&v1673 + 1) + 8 * k);
          if (objc_msgSend_hasSubtiles(v264, v256, v257, v258, v259, v260))
          {
            v270 = objc_msgSend_subtilePositions(v264, v265, v266, v267, v268, v269);
            v276 = objc_msgSend_count(v270, v271, v272, v273, v274, v275) == 2;

            if (!v276)
            {

              goto LABEL_68;
            }
          }

          else
          {
            v277 = objc_msgSend_contentStrokeIdentifiers(v264, v265, v266, v267, v268, v269);
            v283 = objc_msgSend_count(v277, v278, v279, v280, v281, v282);

            v255 += v283;
          }
        }

        v261 = objc_msgSend_countByEnumeratingWithState_objects_count_(v252, v256, &v1673, v1716, 16, v260);
      }

      while (v261);
    }

    v216 = v1590;
    if (v255 != v245)
    {
LABEL_68:
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v293 = qword_1EA84DCB8;
      if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v294 = "Last tiling result is invalid. Discarding along with the last document layout analysis result.";
LABEL_76:
        _os_log_impl(&dword_18366B000, v293, OS_LOG_TYPE_ERROR, v294, buf, 2u);
      }

LABEL_77:

      v1601 = 0;
      v1590 = 0;
      if (qword_1EA84DC48 == -1)
      {
        goto LABEL_78;
      }

      goto LABEL_289;
    }
  }

  if (!v1601)
  {
    v1601 = 0;
    v1590 = v216;
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_78;
    }

    goto LABEL_289;
  }

  v284 = objc_msgSend_strokeClassificationMatrix(v1601, v240, v241, v242, v243, v244);
  if (0xAAAAAAAAAAAAAAABLL * ((v284[1] - *v284) >> 3) != v245)
  {
LABEL_72:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v293 = qword_1EA84DCB8;
    if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v294 = "Last document layout analysis result is invalid. Discarding along with the last tiling result.";
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v290 = objc_msgSend_strokeClassificationMatrix(v1601, v285, v286, v287, v288, v289);
  v291 = *v290;
  if (*v290 != *(v290 + 8))
  {
    v292 = v291[1];
    if (v292 != *v291)
    {
      if (((v292 - *v291) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369761C();
    }

    goto LABEL_72;
  }

  if (qword_1EA84DC48 == -1)
  {
    goto LABEL_78;
  }

LABEL_289:
  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
LABEL_78:
  v295 = qword_1EA84DC88;
  v296 = os_signpost_id_generate(v295);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v297 = qword_1EA84DC88;
  v298 = v297;
  v299 = v296 - 1;
  if (v296 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v297))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v298, OS_SIGNPOST_INTERVAL_BEGIN, v296, "CHDocumentLayoutAnalysisManagerTiling", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v300 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v300, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisManagerTiling", buf, 2u);
  }

  tilingManager = v1630->_tilingManager;
  maxNumStrokesPerTile = v1630->_maxNumStrokesPerTile;
  if (v1590)
  {
    objc_msgSend_updatedTilingResult_addingStrokes_removingStrokeIdentifiers_allStrokes_strokeBoundsPerStrokeIdentifier_maxTileSize_(tilingManager, v301, v1590, v1602, v1632, v1610, v1634, maxNumStrokesPerTile);
  }

  else
  {
    objc_msgSend_updatedTilingResult_addingStrokes_removingStrokeIdentifiers_allStrokes_strokeBoundsPerStrokeIdentifier_maxTileSize_(tilingManager, v301, 0, v1610, 0, v1610, v1634, maxNumStrokesPerTile);
  }
  v1586 = ;
  if (qword_1EA84DC48 == -1)
  {
    v304 = qword_1EA84DC88;
    if (v299 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_94;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v304 = qword_1EA84DC88;
    if (v299 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_94;
    }
  }

  if (os_signpost_enabled(v304))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v304, OS_SIGNPOST_INTERVAL_END, v296, "CHDocumentLayoutAnalysisManagerTiling", "", buf, 2u);
  }

LABEL_94:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v305 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v305, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisManagerTiling", buf, 2u);
  }

  v1672 = 0u;
  v1671 = 0u;
  v1670 = 0u;
  v1669 = 0u;
  v306 = v1612;
  v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(v306, v307, &v1669, v1715, 16, v308);
  if (v313)
  {
    v314 = *v1670;
    do
    {
      for (m = 0; m != v313; ++m)
      {
        if (*v1670 != v314)
        {
          objc_enumerationMutation(v306);
        }

        objc_msgSend_removeObjectForKey_(v1634, v309, *(*(&v1669 + 1) + 8 * m), v310, v311, v312);
      }

      v313 = objc_msgSend_countByEnumeratingWithState_objects_count_(v306, v309, &v1669, v1715, 16, v312);
    }

    while (v313);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v316 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v316);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v317 = qword_1EA84DC88;
  v318 = v317;
  v319 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v317))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v318, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHDocumentLayoutAnalysisManagerInference", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v320 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v320, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v320, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisManagerInference", buf, 2u);
  }

  v1609 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v321, v322, v323, v324, v325);
  v1589 = objc_msgSend_set(MEMORY[0x1E695DFA8], v326, v327, v328, v329, v330);
  v1668 = 0u;
  v1667 = 0u;
  v1665 = 0u;
  v1666 = 0u;
  v336 = objc_msgSend_documentTiles(v1586, v331, v332, v333, v334, v335);
  v1615 = objc_msgSend_allValues(v336, v337, v338, v339, v340, v341);

  v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1615, v342, &v1665, v1714, 16, v343);
  if (v349)
  {
    v350 = *v1666;
LABEL_118:
    v351 = 0;
    while (1)
    {
      if (*v1666 != v350)
      {
        objc_enumerationMutation(v1615);
      }

      v352 = *(*(&v1665 + 1) + 8 * v351);
      if (v1618 && (v1618[2]() & 1) != 0)
      {
        goto LABEL_142;
      }

      if ((objc_msgSend_hasSubtiles(v352, v344, v345, v346, v347, v348) & 1) == 0)
      {
        v353 = objc_msgSend_contentStrokeIdentifiers(v352, v344, v345, v346, v347, v348);
        v359 = objc_msgSend_count(v353, v354, v355, v356, v357, v358) == 0;

        if (!v359)
        {
          break;
        }
      }

LABEL_119:
      if (v349 == ++v351)
      {
        v349 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1615, v344, &v1665, v1714, 16, v348);
        if (v349)
        {
          goto LABEL_118;
        }

        goto LABEL_142;
      }
    }

    v360 = objc_msgSend_layoutAnalysisResultsPerTile(v1601, v344, v345, v346, v347, v348);
    v365 = objc_msgSend_objectForKeyedSubscript_(v360, v361, v352, v362, v363, v364);

    if (v365)
    {
LABEL_140:
      objc_msgSend_setObject_forKeyedSubscript_(v1609, v366, v365, v352, v369, v370);

      goto LABEL_119;
    }

    v371 = objc_msgSend_orderedStrokeIdentifiers(v352, v366, v367, v368, v369, v370);
    v1623 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v372, v371, v1630->_strokeProvider, v373, v374);

    v376 = objc_msgSend_createDrawingForStrokes_interpolationType_resolution_cancellationBlock_(CHStrokeUtilities, v375, v1623, 0, 1, v1618);
    objc_msgSend_bounds(v376, v377, v378, v379, v380, v381);
    v383 = v382;
    objc_msgSend_bounds(v376, v384, v385, v386, v387, v388);
    v390 = v389;
    objc_msgSend_scale(v352, v391, v392, v393, v394, v395);
    v1620 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v376, v396, v397, v398, v399, v400, -v383, -v390, v401);

    if (v1618 && (v1618[2]() & 1) != 0)
    {
      v365 = 0;
      goto LABEL_139;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    documentLayoutAnalyzer = v1630->_documentLayoutAnalyzer;
    if (isKindOfClass)
    {
      v413 = objc_msgSend_orderedStrokeIdentifiers(v352, v407, v408, v409, v410, v411);
      v419 = objc_msgSend_contextStrokeIdentifiers(v352, v414, v415, v416, v417, v418);
      v1664 = 0;
      v365 = objc_msgSend_analyzeDrawing_strokeIdentifiers_contextStrokeIdentifiers_options_error_(documentLayoutAnalyzer, v420, v1620, v413, v419, 0, &v1664);
      v421 = v1664;

      if (!v421)
      {
LABEL_138:

LABEL_139:
        objc_msgSend_addObject_(v1589, v402, v352, v403, v404, v405);

        if (!v365)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v1468 = qword_1EA84DC70;
          if (os_log_type_enabled(v1468, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v1723 = v352;
            _os_log_impl(&dword_18366B000, v1468, OS_LOG_TYPE_ERROR, "Document layout analysis failed for tile %@, bailing out the whole analysis.", buf, 0xCu);
          }

          v104 = 0;
          DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier = v1609;
          goto LABEL_360;
        }

        goto LABEL_140;
      }

      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v422 = qword_1EA84DC70;
      if (os_log_type_enabled(v422, OS_LOG_TYPE_ERROR))
      {
        v428 = objc_msgSend_description(v421, v423, v424, v425, v426, v427);
        *buf = 138412290;
        v1723 = v428;
        _os_log_impl(&dword_18366B000, v422, OS_LOG_TYPE_ERROR, "Remote Recognition error: %@", buf, 0xCu);
      }
    }

    else
    {
      v421 = objc_msgSend_orderedStrokeIdentifiers(v352, v407, v408, v409, v410, v411);
      v422 = objc_msgSend_contextStrokeIdentifiers(v352, v429, v430, v431, v432, v433);
      v365 = objc_msgSend_analyzeDrawing_strokeIdentifiers_contextStrokeIdentifiers_options_shouldCancel_(documentLayoutAnalyzer, v434, v1620, v421, v422, 0, v1618);
    }

    goto LABEL_138;
  }

LABEL_142:

  if (qword_1EA84DC48 == -1)
  {
    v435 = qword_1EA84DC88;
    if (v319 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_146;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v435 = qword_1EA84DC88;
    if (v319 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_146;
    }
  }

  if (os_signpost_enabled(v435))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v435, OS_SIGNPOST_INTERVAL_END, spid, "CHDocumentLayoutAnalysisManagerInference", "", buf, 2u);
  }

LABEL_146:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v436 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v436, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisManagerInference", buf, 2u);
  }

  if (!objc_msgSend_count(v1609, v437, v438, v439, v440, v441) || v1618 && (v1618[2]() & 1) != 0)
  {
    DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier = 0;
    goto LABEL_194;
  }

  if (!v1601 || a12 || objc_msgSend_count(v1632, v442, v443, v444, v445, v446) || (v452 = objc_msgSend_count(v1589, v447, v448, v449, v450, v451), v452 >= objc_msgSend_count(v1609, v453, v454, v455, v456, v457) >> 1))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v571 = qword_1EA84DCB8;
    if (os_log_type_enabled(v571, OS_LOG_TYPE_DEBUG))
    {
      v577 = objc_msgSend_count(v1609, v572, v573, v574, v575, v576);
      *buf = 134217984;
      v1723 = v577;
      _os_log_impl(&dword_18366B000, v571, OS_LOG_TYPE_DEBUG, "Building document layout analysis result from scratch merging %lu tile results.", buf, 0xCu);
    }

    v578 = [CHDocumentLayoutAnalysisResult alloc];
    v463 = objc_msgSend_copy(v1634, v579, v580, v581, v582, v583);
    DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier = objc_msgSend_initWithLayoutAnalysisResultsPerTile_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier_(v578, v584, v1609, v1603, v463, v585);
  }

  else
  {
    v463 = objc_msgSend_set(MEMORY[0x1E695DFA8], v458, v459, v460, v461, v462);
    v1662 = 0u;
    v1663 = 0u;
    v1660 = 0u;
    v1661 = 0u;
    v464 = v1589;
    v472 = objc_msgSend_countByEnumeratingWithState_objects_count_(v464, v465, &v1660, v1713, 16, v466);
    if (v472)
    {
      v473 = *v1661;
      do
      {
        for (n = 0; n != v472; ++n)
        {
          if (*v1661 != v473)
          {
            objc_enumerationMutation(v464);
          }

          v475 = *(*(&v1660 + 1) + 8 * n);
          v476 = objc_msgSend_contentStrokeIdentifiers(v475, v467, v468, v469, v470, v471);
          objc_msgSend_unionSet_(v463, v477, v476, v478, v479, v480);

          v486 = objc_msgSend_overlapStrokeIdentifiers(v475, v481, v482, v483, v484, v485);
          objc_msgSend_unionSet_(v463, v487, v486, v488, v489, v490);
        }

        v472 = objc_msgSend_countByEnumeratingWithState_objects_count_(v464, v467, &v1660, v1713, 16, v471);
      }

      while (v472);
    }

    v1627 = objc_msgSend_mutableCopy(v464, v491, v492, v493, v494, v495);
    v1658 = 0u;
    v1659 = 0u;
    v1656 = 0u;
    v1657 = 0u;
    v501 = objc_msgSend_allKeys(v1609, v496, v497, v498, v499, v500);
    v508 = objc_msgSend_countByEnumeratingWithState_objects_count_(v501, v502, &v1656, v1712, 16, v503);
    if (v508)
    {
      v509 = *v1657;
      do
      {
        for (ii = 0; ii != v508; ++ii)
        {
          if (*v1657 != v509)
          {
            objc_enumerationMutation(v501);
          }

          v511 = *(*(&v1656 + 1) + 8 * ii);
          if ((objc_msgSend_containsObject_(v464, v504, v511, v505, v506, v507) & 1) == 0)
          {
            v513 = objc_msgSend_contentStrokeIdentifiers(v511, v504, v512, v505, v506, v507);
            if (objc_msgSend_intersectsSet_(v513, v514, v463, v515, v516, v517))
            {

LABEL_169:
              objc_msgSend_addObject_(v1627, v504, v511, v505, v506, v507);
              continue;
            }

            v523 = objc_msgSend_overlapStrokeIdentifiers(v511, v518, v519, v520, v521, v522);
            v528 = objc_msgSend_intersectsSet_(v523, v524, v463, v525, v526, v527);

            if (v528)
            {
              goto LABEL_169;
            }
          }
        }

        v508 = objc_msgSend_countByEnumeratingWithState_objects_count_(v501, v504, &v1656, v1712, 16, v507);
      }

      while (v508);
    }

    v534 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v529, v530, v531, v532, v533);
    v1654 = 0u;
    v1655 = 0u;
    v1652 = 0u;
    v1653 = 0u;
    v535 = v1627;
    v542 = objc_msgSend_countByEnumeratingWithState_objects_count_(v535, v536, &v1652, v1711, 16, v537);
    if (v542)
    {
      v543 = *v1653;
      do
      {
        for (jj = 0; jj != v542; ++jj)
        {
          if (*v1653 != v543)
          {
            objc_enumerationMutation(v535);
          }

          v545 = *(*(&v1652 + 1) + 8 * jj);
          v546 = objc_msgSend_objectForKeyedSubscript_(v1609, v538, v545, v539, v540, v541);
          objc_msgSend_setObject_forKeyedSubscript_(v534, v547, v546, v545, v548, v549);
        }

        v542 = objc_msgSend_countByEnumeratingWithState_objects_count_(v535, v538, &v1652, v1711, 16, v541);
      }

      while (v542);
    }

    v550 = sub_183761FE4(13);
    if (os_log_type_enabled(v550, OS_LOG_TYPE_DEBUG))
    {
      v556 = objc_msgSend_layoutAnalysisResultsPerTile(v1601, v551, v552, v553, v554, v555);
      v562 = objc_msgSend_count(v556, v557, v558, v559, v560, v561);
      *buf = 134218240;
      v1723 = v562;
      v1724 = 2048;
      v1725 = v535;
      _os_log_impl(&dword_18366B000, v550, OS_LOG_TYPE_DEBUG, "Updating last document layout analysis result having %lu tiles with %lu affected tile results.", buf, 0x16u);
    }

    v563 = [CHDocumentLayoutAnalysisResult alloc];
    v569 = objc_msgSend_copy(v1634, v564, v565, v566, v567, v568);
    DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier = objc_msgSend_initWithLastDocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier_(v563, v570, v1601, v534, v1609, v463, v1603, v569);
  }

LABEL_194:
  v1628 = objc_msgSend_mutableCopy(v1611, v442, v443, v444, v445, v446);
  if (!DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier)
  {
    if (!v1618)
    {
      if (!a11)
      {
LABEL_287:
        v1615 = 0;
        v1578 = 0;
        goto LABEL_353;
      }

LABEL_351:
      v1454 = [CHStrokeGroupingResult alloc];
      v1568 = objc_msgSend_set(MEMORY[0x1E695DFD8], v1455, v1456, v1457, v1458, v1459);
      v1615 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v1454, v1460, v1568, 0, 0, v1461);
      v1578 = 0;
      goto LABEL_352;
    }

LABEL_283:
    v927 = v1618[2]();
    if (a11)
    {
      v928 = v927;
    }

    else
    {
      v928 = 1;
    }

    if (v928)
    {
      goto LABEL_287;
    }

    goto LABEL_351;
  }

  if (v1618 && (v1618[2]() & 1) != 0)
  {
    goto LABEL_283;
  }

  v1650 = 0u;
  v1651 = 0u;
  v1648 = 0u;
  v1649 = 0u;
  v586 = v1604;
  v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v586, v587, &v1648, v1710, 16, v588);
  if (v594)
  {
    v595 = *v1649;
    do
    {
      for (kk = 0; kk != v594; ++kk)
      {
        if (*v1649 != v595)
        {
          objc_enumerationMutation(v586);
        }

        v597 = objc_msgSend_encodedStrokeIdentifier(*(*(&v1648 + 1) + 8 * kk), v589, v590, v591, v592, v593);
        v601 = objc_msgSend_scriptClassificationRawResultsForOneScriptClassification_scriptCodeMap_(CHStrokeClassifier, v598, 8, v1630->_scriptCodeMap, v599, v600);
        objc_msgSend_updateStrokeIdentifier_withClassificationRawResult_(v1628, v602, v597, v601, v603, v604);
      }

      v594 = objc_msgSend_countByEnumeratingWithState_objects_count_(v586, v589, &v1648, v1710, 16, v593);
    }

    while (v594);
  }

  v610 = 0;
  v1599 = (v1618 + 2);
  while (v610 < objc_msgSend_count(v1610, v605, v606, v607, v608, v609) && (!v1618 || (v1618[2]() & 1) == 0))
  {
    v615 = objc_msgSend_objectAtIndexedSubscript_(v1610, v611, v610, v612, v613, v614);
    v1607 = v1628;
    v1624 = v615;
    spida = DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier;
    v1621 = v1633;
    if (!v1630)
    {
      goto LABEL_236;
    }

    v1616 = objc_msgSend_probabilityByScriptClassificationsForStrokeIndex_scriptCodeMap_(spida, v616, v610, v1630->_scriptCodeMap, v617, v618);
    v624 = objc_msgSend_scriptClassificationRawResultsByStrokeIdentifier(v1621, v619, v620, v621, v622, v623);
    v630 = objc_msgSend_encodedStrokeIdentifier(v1624, v625, v626, v627, v628, v629);
    v635 = objc_msgSend_objectForKeyedSubscript_(v624, v631, v630, v632, v633, v634);

    if (v635 && (objc_msgSend_probabilityByScriptClassifications(v635, v636, v637, v638, v639, v640), v641 = objc_claimAutoreleasedReturnValue(), isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v1616, v642, v641, v643, v644, v645), v641, isEqualToDictionary))
    {
      v647 = v635;
      v653 = objc_msgSend_scriptClassificationsByStrokeIdentifier(v1621, v648, v649, v650, v651, v652);
      v659 = objc_msgSend_encodedStrokeIdentifier(v1624, v654, v655, v656, v657, v658);
      v664 = objc_msgSend_objectForKeyedSubscript_(v653, v660, v659, v661, v662, v663);
      v670 = objc_msgSend_integerValue(v664, v665, v666, v667, v668, v669);
    }

    else
    {
      v671 = [CHScriptClassificationRawResult alloc];
      v676 = objc_msgSend_initWithProbabilityByScriptClassifications_(v671, v672, v1616, v673, v674, v675);
      v682 = objc_msgSend_orderedScriptClassification(v676, v677, v678, v679, v680, v681);
      v688 = objc_msgSend_count(v682, v683, v684, v685, v686, v687) == 0;

      if (v688)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v693 = qword_1EA84DCB0;
        if (os_log_type_enabled(v693, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v693, OS_LOG_TYPE_ERROR, "Update stroke classification failed with empty orderedScriptClassification.", buf, 2u);
        }

        v670 = 0;
      }

      else
      {
        v693 = objc_msgSend_scriptClassificationAtIndex_(v676, v689, 0, v690, v691, v692);
        v670 = objc_msgSend_integerValue(v693, v694, v695, v696, v697, v698);
      }

      v704 = objc_msgSend_probabilityByScriptClassifications(v676, v699, v700, v701, v702, v703);
      v709 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v705, v670, v706, v707, v708);
      v714 = objc_msgSend_objectForKeyedSubscript_(v704, v710, v709, v711, v712, v713);
      objc_msgSend_floatValue(v714, v715, v716, v717, v718, v719);
      v721 = v720;

      v732 = objc_msgSend_strokeAttributes(v1624, v722, v723, v724, v725, v726);
      if ((v732 & 4) != 0 && v670 == 8)
      {
        v734 = objc_msgSend_fallbackTextScriptClassificationForNonText(v676, v727, v728, v729, v730, v731);
        v670 = objc_msgSend_integerValue(v734, v735, v736, v737, v738, v739);
      }

      if ((v732 & 8) != 0 && v670 == 4)
      {
        v733 = v721;
        if (v721 < 0.9)
        {
          objc_msgSend_mathScriptProbability(v676, v727, v728, v729, v730, v731, v733);
          v741 = v740;
          v746 = objc_msgSend_scriptClassificationAtIndex_(v676, v742, 1, v743, v744, v745);
          v752 = objc_msgSend_integerValue(v746, v747, v748, v749, v750, v751);

          if (((v741 > 0.1) & (objc_msgSend_isScriptClassificationMath_(CHStrokeUtilities, v753, v752, v754, v755, v756) | (v752 == 11))) != 0)
          {
            v670 = 12;
          }

          else
          {
            v670 = 4;
          }
        }
      }

      if ((v732 & 2) != 0 && (objc_msgSend_isValidScriptClassificationForShapeStroke(v676, v727, v728, v729, v730, v731, v733) & 1) == 0)
      {
        v670 = 8;
LABEL_234:
        v647 = v676;
        goto LABEL_235;
      }

      if (v670 != 11)
      {
        goto LABEL_234;
      }

      v653 = objc_msgSend_fallbackScriptClassificationForWeakLabel(v676, v727, v728, v729, v730, v731, v733);
      v670 = objc_msgSend_integerValue(v653, v757, v758, v759, v760, v761);
      v647 = v676;
    }

LABEL_235:
    objc_msgSend_updateScriptByAddingNonClutterStroke_withClassification_classificationRawResult_(v1607, v727, v1624, v670, v647, v731);

LABEL_236:
    ++v610;
  }

  strokeProvider = v1630->_strokeProvider;
  v1647 = 0;
  v763 = objc_msgSend_resultWithStrokeClassesFromScriptClassesInResult_strokeProvider_outChangedSupportStrokes_(CHStrokeClassifier, v611, v1628, strokeProvider, &v1647, v614);
  v1568 = v1647;
  v1578 = objc_msgSend_resultWithRefinedNonTextCandidateInResult_changedSupportStrokesByStrokeIdentifiers_strokeProvider_(CHStrokeClassifier, v764, v763, v1568, v1630->_strokeProvider, v765);

  v1625 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v766, v767, v768, v769, v770);
  v1645 = 0u;
  v1646 = 0u;
  v1643 = 0u;
  v1644 = 0u;
  v776 = objc_msgSend_strokeGroups(v1585, v771, v772, v773, v774, v775);
  v784 = objc_msgSend_countByEnumeratingWithState_objects_count_(v776, v777, &v1643, v1709, 16, v778);
  if (v784)
  {
    v785 = *v1644;
    do
    {
      for (mm = 0; mm != v784; ++mm)
      {
        if (*v1644 != v785)
        {
          objc_enumerationMutation(v776);
        }

        v787 = *(*(&v1643 + 1) + 8 * mm);
        v788 = objc_msgSend_strokeIdentifiers(v787, v779, v780, v781, v782, v783);
        objc_msgSend_setObject_forKeyedSubscript_(v1625, v789, v787, v788, v790, v791);
      }

      v784 = objc_msgSend_countByEnumeratingWithState_objects_count_(v776, v779, &v1643, v1709, 16, v783);
    }

    while (v784);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v792 = qword_1EA84DC88;
  v1564 = os_signpost_id_generate(v792);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v793 = qword_1EA84DC88;
  v794 = v793;
  if (v1564 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v793))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v794, OS_SIGNPOST_INTERVAL_BEGIN, v1564, "CHDocumentLayoutAnalysisManagerClustering", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v795 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v795, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v795, OS_LOG_TYPE_DEFAULT, "BEGIN CHDocumentLayoutAnalysisManagerClustering", buf, 2u);
  }

  v1566 = sub_1838AFC54(v1630, v1610, @"text-math", v1578, v1633, DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier, v1634, v1625);
  v1567 = sub_1838AFC54(v1630, v1610, @"non-text", v1578, v1633, DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier, v1634, v1625);
  v1622 = objc_msgSend_mutableCopy(v1566, v796, v797, v798, v799, v800);
  objc_msgSend_unionSet_(v1622, v801, v1567, v802, v803, v804);
  v1641 = 0u;
  v1642 = 0u;
  v1639 = 0u;
  v1640 = 0u;
  v805 = v586;
  v813 = objc_msgSend_countByEnumeratingWithState_objects_count_(v805, v806, &v1639, v1708, 16, v807);
  if (v813)
  {
    v814 = *v1640;
    do
    {
      for (nn = 0; nn != v813; ++nn)
      {
        if (*v1640 != v814)
        {
          objc_enumerationMutation(v805);
        }

        v816 = objc_msgSend_encodedStrokeIdentifier(*(*(&v1639 + 1) + 8 * nn), v808, v809, v810, v811, v812);
        v821 = objc_msgSend_objectForKeyedSubscript_(v1634, v817, v816, v818, v819, v820);
        objc_msgSend_ch_CGRectValue(v821, v822, v823, v824, v825, v826);
        v828 = v827;
        v830 = v829;
        v832 = v831;
        v834 = v833;

        v835 = [CHStrokeGroup alloc];
        v840 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v836, v816, v837, v838, v839);
        v842 = objc_msgSend_initWithStrokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v835, v841, v840, v816, v816, 8, @"groupingManagerNonText", v828, v830, v832, v834, 1.0, v828, v830);

        objc_msgSend_addObject_(v1622, v843, v842, v844, v845, v846);
      }

      v813 = objc_msgSend_countByEnumeratingWithState_objects_count_(v805, v808, &v1639, v1708, 16, v812);
    }

    while (v813);
  }

  v847 = v1585;
  v1569 = v1622;
  v1565 = obj;
  v1591 = v1618;
  v1600 = v847;
  if (v1630)
  {
    v1631 = objc_msgSend_set(MEMORY[0x1E695DFA8], v848, v849, v850, v851, v852);
    v858 = objc_msgSend_set(MEMORY[0x1E695DFA8], v853, v854, v855, v856, v857);
    v1706 = 0u;
    v1705 = 0u;
    v1704 = 0u;
    v1703 = 0u;
    v864 = objc_msgSend_strokeGroups(v847, v859, v860, v861, v862, v863);
    v872 = objc_msgSend_countByEnumeratingWithState_objects_count_(v864, v865, &v1703, buf, 16, v866);
    if (v872)
    {
      v873 = *v1704;
      do
      {
        for (i1 = 0; i1 != v872; ++i1)
        {
          if (*v1704 != v873)
          {
            objc_enumerationMutation(v864);
          }

          v875 = objc_msgSend_strokeIdentifiers(*(*(&v1703 + 1) + 8 * i1), v867, v868, v869, v870, v871);
          objc_msgSend_unionSet_(v858, v876, v875, v877, v878, v879);
        }

        v872 = objc_msgSend_countByEnumeratingWithState_objects_count_(v864, v867, &v1703, buf, 16, v871);
      }

      while (v872);
    }

    v1702 = 0u;
    v1701 = 0u;
    v1700 = 0u;
    v1699 = 0u;
    v880 = v1565;
    v888 = objc_msgSend_countByEnumeratingWithState_objects_count_(v880, v881, &v1699, v1721, 16, v882);
    if (v888)
    {
      v889 = *v1700;
      do
      {
        for (i2 = 0; i2 != v888; ++i2)
        {
          if (*v1700 != v889)
          {
            objc_enumerationMutation(v880);
          }

          v891 = objc_msgSend_encodedStrokeIdentifier(*(*(&v1699 + 1) + 8 * i2), v883, v884, v885, v886, v887);
          if (objc_msgSend_containsObject_(v858, v892, v891, v893, v894, v895))
          {
            objc_msgSend_removeObject_(v858, v896, v891, v897, v898, v899);
          }

          else
          {
            objc_msgSend_addObject_(v1631, v896, v891, v897, v898, v899);
          }
        }

        v888 = objc_msgSend_countByEnumeratingWithState_objects_count_(v880, v883, &v1699, v1721, 16, v887);
      }

      while (v888);
    }

    v1608 = v858;
    v900 = MEMORY[0x1E695DFA8];
    v906 = objc_msgSend_count(v1569, v901, v902, v903, v904, v905);
    v1597 = objc_msgSend_setWithCapacity_(v900, v907, v906, v908, v909, v910);
    v1594 = objc_msgSend_set(MEMORY[0x1E695DFA8], v911, v912, v913, v914, v915);
    if (v1600)
    {
      v921 = objc_msgSend_strokeGroups(v1600, v916, v917, v918, v919, v920);
      v1583 = objc_msgSend_mutableCopy(v921, v922, v923, v924, v925, v926);
    }

    else
    {
      v1583 = objc_msgSend_set(MEMORY[0x1E695DFA8], v916, v917, v918, v919, v920);
    }

    v1698 = 0u;
    v1697 = 0u;
    v1696 = 0u;
    v1695 = 0u;
    v1588 = v1569;
    v947 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1588, v940, &v1695, v1720, 16, v941);
    if (!v947)
    {
LABEL_333:

      if (v1618)
      {
        goto LABEL_336;
      }

      goto LABEL_338;
    }

    v1595 = *v1696;
    while (2)
    {
      v948 = 0;
      v1596 = v947;
LABEL_300:
      if (*v1696 != v1595)
      {
        objc_enumerationMutation(v1588);
      }

      v949 = *(*(&v1695 + 1) + 8 * v948);
      if (!v1618 || ((*v1599)(v1591) & 1) == 0)
      {
        v1605 = v948;
        v1694 = 0u;
        v1693 = 0u;
        v1692 = 0u;
        v1691 = 0u;
        v1617 = objc_msgSend_strokeGroups(v1600, v942, v943, v944, v945, v946);
        v957 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1617, v950, &v1691, v1719, 16, v951);
        if (!v957)
        {
LABEL_319:

          objc_msgSend_addObject_(v1597, v1063, v949, v1064, v1065, v1066);
          objc_msgSend_addObject_(v1594, v1067, v949, v1068, v1069, v1070);
LABEL_299:
          v948 = v1605 + 1;
          if (v1605 + 1 == v1596)
          {
            v947 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1588, v942, &v1695, v1720, 16, v946);
            if (!v947)
            {
              goto LABEL_333;
            }

            continue;
          }

          goto LABEL_300;
        }

        v958 = *v1692;
        while (2)
        {
          v959 = 0;
LABEL_308:
          if (*v1692 != v958)
          {
            objc_enumerationMutation(v1617);
          }

          v960 = *(*(&v1691 + 1) + 8 * v959);
          v961 = objc_msgSend_strokeIdentifiers(v949, v952, v953, v954, v955, v956);
          v967 = objc_msgSend_strokeIdentifiers(v960, v962, v963, v964, v965, v966);
          isEqualToSet = objc_msgSend_isEqualToSet_(v961, v968, v967, v969, v970, v971);

          if (isEqualToSet)
          {
            v1071 = objc_msgSend_classification(v960, v973, v974, v975, v976, v977);
            if (v1071 != objc_msgSend_classification(v949, v1072, v1073, v1074, v1075, v1076))
            {
              v1086 = objc_msgSend_strategyIdentifier(v949, v1077, v1078, v1079, v1080, v1081);
              v1092 = objc_msgSend_classification(v949, v1087, v1088, v1089, v1090, v1091);
              v1001 = objc_msgSend_strokeGroupWithUpdatedStrategyIdentifier_classification_(v960, v1093, v1086, v1092, v1094, v1095);

              objc_msgSend_addObject_(v1597, v1096, v1001, v1097, v1098, v1099);
              objc_msgSend_addObject_(v1594, v1100, v1001, v1101, v1102, v1103);
              goto LABEL_297;
            }

            objc_msgSend_addObject_(v1597, v1077, v960, v1079, v1080, v1081);
            objc_msgSend_removeObject_(v1583, v1082, v960, v1083, v1084, v1085);
LABEL_298:

            goto LABEL_299;
          }

          v978 = objc_msgSend_strokeIdentifiers(v960, v973, v974, v975, v976, v977);
          v984 = objc_msgSend_strokeIdentifiers(v949, v979, v980, v981, v982, v983);
          isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v978, v985, v984, v986, v987, v988);

          if (isSubsetOfSet)
          {
            v995 = objc_msgSend_strokeIdentifiers(v949, v990, v991, v992, v993, v994);
            v1001 = objc_msgSend_mutableCopy(v995, v996, v997, v998, v999, v1000);

            v1007 = objc_msgSend_strokeIdentifiers(v960, v1002, v1003, v1004, v1005, v1006);
            objc_msgSend_minusSet_(v1001, v1008, v1007, v1009, v1010, v1011);

            v1689[0] = MEMORY[0x1E69E9820];
            v1689[1] = 3221225472;
            v1689[2] = sub_1838B2DFC;
            v1689[3] = &unk_1E6DDF6B8;
            v1690 = v1631;
            v1016 = objc_msgSend_objectsPassingTest_(v1001, v1012, v1689, v1013, v1014, v1015);
            v1022 = objc_msgSend_count(v1016, v1017, v1018, v1019, v1020, v1021) == 0;

            if (v1022)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v1104 = v949;
                v1105 = [CHTextLineStrokeGroup alloc];
                v1576 = objc_msgSend_ancestorIdentifier(v960, v1106, v1107, v1108, v1109, v1110);
                v1116 = objc_msgSend_strokeIdentifiers(v1104, v1111, v1112, v1113, v1114, v1115);
                v1122 = objc_msgSend_firstStrokeIdentifier(v1104, v1117, v1118, v1119, v1120, v1121);
                v1128 = objc_msgSend_lastStrokeIdentifier(v1104, v1123, v1124, v1125, v1126, v1127);
                objc_msgSend_bounds(v1104, v1129, v1130, v1131, v1132, v1133);
                v1572 = v1135;
                v1574 = v1134;
                v1137 = v1136;
                v1139 = v1138;
                v1570 = objc_msgSend_classification(v1104, v1140, v1141, v1142, v1143, v1144);
                v1579 = objc_msgSend_strategyIdentifier(v1104, v1145, v1146, v1147, v1148, v1149);
                v1581 = objc_msgSend_writingDirectionSortedSubstrokes(v1104, v1150, v1151, v1152, v1153, v1154);
                objc_msgSend_averageWritingOrientation(v1104, v1155, v1156, v1157, v1158, v1159);
                v1161 = v1160;
                v1163 = v1162;
                objc_msgSend_averageStrokeDeviation(v1104, v1164, v1165, v1166, v1167, v1168);
                v1170 = v1169;
                v1172 = v1171;
                v1178 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(v1104, v1173, v1174, v1175, v1176, v1177);
                v1184 = objc_msgSend_localStrokeWritingOrientations(v1104, v1179, v1180, v1181, v1182, v1183);
                v1190 = objc_msgSend_coalescedLastSubstrokes(v1104, v1185, v1186, v1187, v1188, v1189);
                objc_msgSend_groupingConfidence(v1104, v1191, v1192, v1193, v1194, v1195);
                v1197 = v1196;
                objc_msgSend_firstStrokeOrigin(v1104, v1198, v1199, v1200, v1201, v1202);
                StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin_(v1105, v1203, v1576, v1116, v1122, v1128, v1570, v1579, v1574, v1572, v1137, v1139, v1161, v1163, v1170, v1172, v1581, v1178, v1184, v1190, v1197, v1204, v1205);
              }

              else
              {
                v1207 = [CHStrokeGroup alloc];
                v1213 = objc_msgSend_ancestorIdentifier(v960, v1208, v1209, v1210, v1211, v1212);
                v1104 = objc_msgSend_strokeIdentifiers(v949, v1214, v1215, v1216, v1217, v1218);
                v1116 = objc_msgSend_firstStrokeIdentifier(v949, v1219, v1220, v1221, v1222, v1223);
                v1122 = objc_msgSend_lastStrokeIdentifier(v949, v1224, v1225, v1226, v1227, v1228);
                objc_msgSend_bounds(v949, v1229, v1230, v1231, v1232, v1233);
                v1235 = v1234;
                v1237 = v1236;
                v1239 = v1238;
                v1241 = v1240;
                v1247 = objc_msgSend_classification(v949, v1242, v1243, v1244, v1245, v1246);
                objc_msgSend_groupingConfidence(v949, v1248, v1249, v1250, v1251, v1252);
                v1254 = v1253;
                v1128 = objc_msgSend_strategyIdentifier(v949, v1255, v1256, v1257, v1258, v1259);
                objc_msgSend_firstStrokeOrigin(v949, v1260, v1261, v1262, v1263, v1264);
                StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v1207, v1265, v1213, v1104, v1116, v1122, v1247, v1128, v1235, v1237, v1239, v1241, v1254, v1266, v1267);
              }

              objc_msgSend_addObject_(v1597, v1268, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin, v1269, v1270, v1271);
              objc_msgSend_addObject_(v1594, v1272, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin, v1273, v1274, v1275);
              v1276 = &v1690;
              goto LABEL_331;
            }

            v1023 = &v1690;
            goto LABEL_317;
          }

          v1024 = objc_msgSend_strokeIdentifiers(v949, v990, v991, v992, v993, v994);
          v1030 = objc_msgSend_strokeIdentifiers(v960, v1025, v1026, v1027, v1028, v1029);
          v1035 = objc_msgSend_isSubsetOfSet_(v1024, v1031, v1030, v1032, v1033, v1034);

          if (v1035)
          {
            v1036 = objc_msgSend_strokeIdentifiers(v960, v952, v953, v954, v955, v956);
            v1001 = objc_msgSend_mutableCopy(v1036, v1037, v1038, v1039, v1040, v1041);

            v1047 = objc_msgSend_strokeIdentifiers(v949, v1042, v1043, v1044, v1045, v1046);
            objc_msgSend_minusSet_(v1001, v1048, v1047, v1049, v1050, v1051);

            v1687[0] = MEMORY[0x1E69E9820];
            v1687[1] = 3221225472;
            v1687[2] = sub_1838B2E38;
            v1687[3] = &unk_1E6DDF6B8;
            v1688 = v1608;
            v1056 = objc_msgSend_objectsPassingTest_(v1001, v1052, v1687, v1053, v1054, v1055);
            v1062 = objc_msgSend_count(v1056, v1057, v1058, v1059, v1060, v1061) == 0;

            if (v1062)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v1277 = v949;
                v1278 = [CHTextLineStrokeGroup alloc];
                v1577 = objc_msgSend_ancestorIdentifier(v960, v1279, v1280, v1281, v1282, v1283);
                v1289 = objc_msgSend_strokeIdentifiers(v1277, v1284, v1285, v1286, v1287, v1288);
                v1295 = objc_msgSend_firstStrokeIdentifier(v1277, v1290, v1291, v1292, v1293, v1294);
                v1301 = objc_msgSend_lastStrokeIdentifier(v1277, v1296, v1297, v1298, v1299, v1300);
                objc_msgSend_bounds(v1277, v1302, v1303, v1304, v1305, v1306);
                v1573 = v1308;
                v1575 = v1307;
                v1310 = v1309;
                v1312 = v1311;
                v1571 = objc_msgSend_classification(v1277, v1313, v1314, v1315, v1316, v1317);
                v1580 = objc_msgSend_strategyIdentifier(v1277, v1318, v1319, v1320, v1321, v1322);
                v1582 = objc_msgSend_writingDirectionSortedSubstrokes(v1277, v1323, v1324, v1325, v1326, v1327);
                objc_msgSend_averageWritingOrientation(v1277, v1328, v1329, v1330, v1331, v1332);
                v1334 = v1333;
                v1336 = v1335;
                objc_msgSend_averageStrokeDeviation(v1277, v1337, v1338, v1339, v1340, v1341);
                v1343 = v1342;
                v1345 = v1344;
                v1351 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(v1277, v1346, v1347, v1348, v1349, v1350);
                v1357 = objc_msgSend_localStrokeWritingOrientations(v1277, v1352, v1353, v1354, v1355, v1356);
                v1363 = objc_msgSend_coalescedLastSubstrokes(v1277, v1358, v1359, v1360, v1361, v1362);
                objc_msgSend_groupingConfidence(v1277, v1364, v1365, v1366, v1367, v1368);
                v1370 = v1369;
                objc_msgSend_firstStrokeOrigin(v1277, v1371, v1372, v1373, v1374, v1375);
                StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin_(v1278, v1376, v1577, v1289, v1295, v1301, v1571, v1580, v1575, v1573, v1310, v1312, v1334, v1336, v1343, v1345, v1582, v1351, v1357, v1363, v1370, v1377, v1378);
              }

              else
              {
                v1379 = [CHStrokeGroup alloc];
                v1385 = objc_msgSend_ancestorIdentifier(v960, v1380, v1381, v1382, v1383, v1384);
                v1277 = objc_msgSend_strokeIdentifiers(v949, v1386, v1387, v1388, v1389, v1390);
                v1289 = objc_msgSend_firstStrokeIdentifier(v949, v1391, v1392, v1393, v1394, v1395);
                v1295 = objc_msgSend_lastStrokeIdentifier(v949, v1396, v1397, v1398, v1399, v1400);
                objc_msgSend_bounds(v949, v1401, v1402, v1403, v1404, v1405);
                v1407 = v1406;
                v1409 = v1408;
                v1411 = v1410;
                v1413 = v1412;
                v1419 = objc_msgSend_classification(v949, v1414, v1415, v1416, v1417, v1418);
                objc_msgSend_groupingConfidence(v949, v1420, v1421, v1422, v1423, v1424);
                v1426 = v1425;
                v1301 = objc_msgSend_strategyIdentifier(v949, v1427, v1428, v1429, v1430, v1431);
                objc_msgSend_firstStrokeOrigin(v949, v1432, v1433, v1434, v1435, v1436);
                StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithAncestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_groupingConfidence_strategyIdentifier_firstStrokeOrigin_(v1379, v1437, v1385, v1277, v1289, v1295, v1419, v1301, v1407, v1409, v1411, v1413, v1426, v1438, v1439);
              }

              objc_msgSend_addObject_(v1597, v1440, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin, v1441, v1442, v1443);
              objc_msgSend_addObject_(v1594, v1444, StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin, v1445, v1446, v1447);
              v1276 = &v1688;
LABEL_331:

LABEL_297:
              goto LABEL_298;
            }

            v1023 = &v1688;
LABEL_317:
          }

          if (v957 == ++v959)
          {
            v957 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1617, v952, &v1691, v1719, 16, v956);
            if (!v957)
            {
              goto LABEL_319;
            }

            continue;
          }

          goto LABEL_308;
        }
      }

      break;
    }

LABEL_336:
    if ((*v1599)(v1591))
    {
      v1615 = 0;
      goto LABEL_339;
    }

LABEL_338:
    v1448 = [CHStrokeGroupingResult alloc];
    v1615 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v1448, v1449, v1597, v1594, v1583, v1450);
LABEL_339:
  }

  else
  {
    v1615 = 0;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v1451 = qword_1EA84DC88;
  v1452 = v1451;
  if (v1564 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v1451))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v1452, OS_SIGNPOST_INTERVAL_END, v1564, "CHDocumentLayoutAnalysisManagerClustering", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v1453 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v1453, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v1453, OS_LOG_TYPE_DEFAULT, "END CHDocumentLayoutAnalysisManagerClustering", buf, 2u);
  }

LABEL_352:
LABEL_353:

  v1462 = v1578;
  v1463 = v1578;
  if (a9)
  {
LABEL_354:
    v1464 = v1586;
    *a9 = v1586;
    v1462 = v1463;
  }

LABEL_355:
  if (a10)
  {
    v1465 = DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier;
    *a10 = DocumentLayoutAnalysisResult_affectedLayoutAnalysisResultsPerTile_allLayoutAnalysisResultsPerTile_updatedStrokeIdentifiers_orderedStrokeIdentifiers_strokeBoundsPerStrokeIdentifier;
    v1462 = v1463;
  }

  if (a11)
  {
    v1466 = v1615;
    *a11 = v1615;
    v1462 = v1463;
  }

  v104 = v1462;
  v1589 = v104;
LABEL_360:

LABEL_361:

  return v104;
}

- (id)subjectStrokeGroupingResult:(id)a3 allOrderedStrokeIdentifiers:(id)a4 lastGroupingResult:(id)a5 lastDocumentLayoutAnalysisResult:(id)a6 lastStrokeClassificationResult:(id)a7 cancellationBlock:(id)a8
{
  v338[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v303 = a4;
  v302 = a5;
  v305 = a6;
  v304 = a7;
  v310 = v13;
  v311 = a8;
  if (v13 && v302 && v305 && v304)
  {
    v307 = objc_msgSend_set(MEMORY[0x1E695DFA8], v14, v15, v16, v17, v18);
    v322 = 0u;
    v323 = 0u;
    v320 = 0u;
    v321 = 0u;
    obj = objc_msgSend_strokeGroups(v302, v19, v20, v21, v22, v23);
    v309 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v320, v337, 16, v25);
    if (v309)
    {
      v308 = *v321;
LABEL_7:
      v312 = 0;
      while (1)
      {
        if (*v321 != v308)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v320 + 1) + 8 * v312);
        if (v311)
        {
          if (v311[2]())
          {
            break;
          }
        }

        v32 = objc_msgSend_strokeIdentifiers(v31, v26, v27, v28, v29, v30);
        v313 = objc_msgSend_mutableCopy(v32, v33, v34, v35, v36, v37);

        objc_msgSend_intersectSet_(v313, v38, v310, v39, v40, v41);
        if (objc_msgSend_count(v313, v42, v43, v44, v45, v46))
        {
          v52 = objc_msgSend_strokeIdentifiers(v31, v47, v48, v49, v50, v51);
          isEqualToSet = objc_msgSend_isEqualToSet_(v313, v53, v52, v54, v55, v56);

          if (isEqualToSet)
          {
            objc_msgSend_addObject_(v307, v58, v31, v60, v61, v62);
          }

          else
          {
            v317 = objc_msgSend_classification(v31, v58, v59, v60, v61, v62);
            v314 = v313;
            v63 = v303;
            v318 = v304;
            v319 = v305;
            if (self)
            {
              v69 = objc_msgSend_count(v63, v64, v65, v66, v67, v68);
              v74 = v69;
              if ((v69 & 0x3F) != 0)
              {
                v75 = ((v69 >> 6) + 1);
              }

              else
              {
                v75 = (v69 >> 6);
              }

              *v335 = 0u;
              v336 = 0u;
              if (v75)
              {
                sub_18370D4C0(v335, v75);
              }

              v76 = 0;
              *(&v336 + 1) = v74;
              while (objc_msgSend_count(v63, v75, v70, v71, v72, v73) > v76)
              {
                v82 = objc_msgSend_objectAtIndexedSubscript_(v63, v77, v76, v79, v80, v81);
                v87 = objc_msgSend_containsObject_(v314, v83, v82, v84, v85, v86);

                if (v87)
                {
                  *(v335[0] + ((v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v76;
                }

                ++v76;
              }

              v332[0] = objc_msgSend_sparseAdjacencyMatrix(v319, v77, v78, v79, v80, v81);
              v332[1] = v335;
              v333 = 1061158912;
              v334 = 1;
              sub_1838B26FC(&__p, v332);
              v93 = 0;
              v330[0] = 0;
              v330[1] = 0;
              v329 = v330;
              v94 = __p;
              while (objc_msgSend_count(v63, v88, v89, v90, v91, v92) > v93)
              {
                v95 = v330[0];
                if (!v330[0])
                {
                  goto LABEL_35;
                }

                v96 = v94[v93];
                v97 = v330;
                do
                {
                  if (*(v95 + 8) >= v96)
                  {
                    v97 = v95;
                  }

                  v95 = v95[*(v95 + 8) < v96];
                }

                while (v95);
                if (v97 == v330 || v96 < *(v97 + 8))
                {
LABEL_35:
                  operator new();
                }

                v99 = v97[6];
                v98 = v97[7];
                if (v99 >= v98)
                {
                  v100 = v97[5];
                  v101 = v99 - v100;
                  v102 = (v99 - v100) >> 2;
                  v103 = v102 + 1;
                  if ((v102 + 1) >> 62)
                  {
                    sub_18368964C();
                  }

                  v104 = v98 - v100;
                  if (v104 >> 1 > v103)
                  {
                    v103 = v104 >> 1;
                  }

                  if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v105 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v105 = v103;
                  }

                  if (v105)
                  {
                    if (!(v105 >> 62))
                    {
                      operator new();
                    }

                    sub_183688F00();
                  }

                  v106 = (v99 - v100) >> 2;
                  v107 = (4 * v102);
                  v108 = (4 * v102 - 4 * v106);
                  *v107 = v93;
                  v109 = v107 + 1;
                  memcpy(v108, v100, v101);
                  v97[5] = v108;
                  v97[6] = v109;
                  v97[7] = 0;
                  if (v100)
                  {
                    operator delete(v100);
                  }

                  v97[6] = v109;
                  ++v93;
                }

                else
                {
                  *v99 = v93;
                  v97[6] = v99 + 4;
                  ++v93;
                }
              }

              v315 = objc_msgSend_set(MEMORY[0x1E695DFA8], v88, v89, v90, v91, v92);
              v115 = v329;
              if (v329 != v330)
              {
                do
                {
                  v120 = *(v115 + 8);
                  if (v120 < 0)
                  {
                    if (v120 == -1)
                    {
                      v177 = v115[5];
                      for (i = v115[6]; v177 != i; ++v177)
                      {
                        v178 = objc_msgSend_objectAtIndexedSubscript_(v63, v110, *v177, v112, v113, v114);
                        if (objc_msgSend_isStrokeClassificationText_(CHStrokeUtilities, v179, v317, v180, v181, v182))
                        {
                          v338[0] = v178;
                          v188 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v183, v338, 1, v186, v187);
                          v192 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v189, v188, self->_strokeProvider, v190, v191);
                        }

                        else
                        {
                          v192 = 0;
                        }

                        v193 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v319, v183, v184, v185, v186, v187);
                        v198 = objc_msgSend_objectForKeyedSubscript_(v193, v194, v178, v195, v196, v197);
                        objc_msgSend_ch_CGRectValue(v198, v199, v200, v201, v202, v203);
                        v205 = v204;
                        v207 = v206;
                        v209 = v208;
                        v211 = v210;

                        v216 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v212, v178, v213, v214, v215);
                        v217 = sub_1838B2530(v216, v318);

                        v222 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], v218, v178, v219, v220, v221);
                        v228 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v319, v223, v224, v225, v226, v227);
                        v234 = objc_msgSend_substrokesByStrokeIdentifier(v318, v229, v230, v231, v232, v233);
                        v235 = sub_1838B1FFC(self, v192, v222, v317, v217, v228, v234, v205, v207, v209, v211, v205, v207);

                        objc_msgSend_addObject_(v315, v236, v235, v237, v238, v239);
                      }
                    }
                  }

                  else
                  {
                    v125 = objc_msgSend_set(MEMORY[0x1E695DFA8], v110, v111, v112, v113, v114);
                    x = *MEMORY[0x1E695F050];
                    y = *(MEMORY[0x1E695F050] + 8);
                    width = *(MEMORY[0x1E695F050] + 16);
                    height = *(MEMORY[0x1E695F050] + 24);
                    v130 = v115[5];
                    for (j = v115[6]; v130 != j; ++v130)
                    {
                      v132 = objc_msgSend_objectAtIndexedSubscript_(v63, v121, *v130, v122, v123, v124);
                      objc_msgSend_addObject_(v125, v133, v132, v134, v135, v136);
                      v142 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v319, v137, v138, v139, v140, v141);
                      v147 = objc_msgSend_objectForKeyedSubscript_(v142, v143, v132, v144, v145, v146);
                      objc_msgSend_ch_CGRectValue(v147, v148, v149, v150, v151, v152);
                      v154 = v153;
                      v156 = v155;
                      v158 = v157;
                      v160 = v159;

                      v340.origin.x = x;
                      v340.origin.y = y;
                      v340.size.width = width;
                      v340.size.height = height;
                      v342.origin.x = v154;
                      v342.origin.y = v156;
                      v342.size.width = v158;
                      v342.size.height = v160;
                      v341 = CGRectUnion(v340, v342);
                      x = v341.origin.x;
                      y = v341.origin.y;
                      width = v341.size.width;
                      height = v341.size.height;
                    }

                    if (objc_msgSend_isStrokeClassificationText_(CHStrokeUtilities, v121, v317, v122, v123, v124))
                    {
                      v166 = objc_msgSend_allObjects(v125, v161, v162, v163, v164, v165);
                      v170 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v167, v166, self->_strokeProvider, v168, v169);

                      *buf = MEMORY[0x1E69E9820];
                      v325 = 3221225472;
                      v326 = sub_1838B2D4C;
                      v327 = &unk_1E6DDD268;
                      v328 = self;
                      v175 = objc_msgSend_sortedArrayUsingComparator_(v170, v171, buf, v172, v173, v174);
                    }

                    else
                    {
                      v175 = 0;
                    }

                    v240 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v319, v161, v162, v163, v164, v165);
                    v246 = objc_msgSend_firstObject(v175, v241, v242, v243, v244, v245);
                    v252 = objc_msgSend_encodedStrokeIdentifier(v246, v247, v248, v249, v250, v251);
                    v257 = objc_msgSend_objectForKeyedSubscript_(v240, v253, v252, v254, v255, v256);
                    objc_msgSend_ch_CGRectValue(v257, v258, v259, v260, v261, v262);
                    v264 = v263;
                    v266 = v265;

                    v267 = sub_1838B2530(v125, v318);
                    v273 = objc_msgSend_strokeBoundsPerStrokeIdentifier(v319, v268, v269, v270, v271, v272);
                    v279 = objc_msgSend_substrokesByStrokeIdentifier(v318, v274, v275, v276, v277, v278);
                    v280 = sub_1838B1FFC(self, v175, v125, v317, v267, v273, v279, x, y, width, height, v264, v266);

                    objc_msgSend_addObject_(v315, v281, v280, v282, v283, v284);
                  }

                  v285 = v115[1];
                  if (v285)
                  {
                    do
                    {
                      v286 = v285;
                      v285 = *v285;
                    }

                    while (v285);
                  }

                  else
                  {
                    do
                    {
                      v286 = v115[2];
                      v287 = *v286 == v115;
                      v115 = v286;
                    }

                    while (!v287);
                  }

                  v115 = v286;
                }

                while (v286 != v330);
              }

              sub_18368A374(&v329, v330[0]);
              if (__p)
              {
                operator delete(__p);
              }

              if (v335[0])
              {
                v335[1] = v335[0];
                operator delete(v335[0]);
              }
            }

            else
            {
              v315 = 0;
            }

            objc_msgSend_unionSet_(v307, v116, v315, v117, v118, v119);
          }
        }

        if (++v312 == v309)
        {
          v288 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v320, v337, 16, v30);
          v309 = v288;
          if (v288)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v289 = [CHStrokeGroupingResult alloc];
    v292 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_(v289, v290, v307, v307, 0, v291);
    goto LABEL_120;
  }

  if (!v13)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v293 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v293, OS_LOG_TYPE_ERROR, "Subject stroke identifiers in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v294 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v294, OS_LOG_TYPE_FAULT))
      {
LABEL_90:

        goto LABEL_91;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v294 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v294, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_90;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v294, OS_LOG_TYPE_FAULT, "Subject stroke identifiers in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
    goto LABEL_90;
  }

LABEL_91:
  if (v302)
  {
    goto LABEL_100;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v295 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v295, OS_LOG_TYPE_ERROR, "Last grouping result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v296 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

  v296 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v296, OS_LOG_TYPE_FAULT))
  {
LABEL_98:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v296, OS_LOG_TYPE_FAULT, "Last grouping result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
  }

LABEL_99:

LABEL_100:
  if (!v305)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v297 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v297, OS_LOG_TYPE_ERROR, "Last document layout analysis result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v298 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v298, OS_LOG_TYPE_FAULT))
      {
LABEL_108:

        goto LABEL_109;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v298 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v298, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_108;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v298, OS_LOG_TYPE_FAULT, "Last document layout analysis result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
    goto LABEL_108;
  }

LABEL_109:
  if (v304)
  {
    v292 = 0;
    goto LABEL_121;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v299 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v299, OS_LOG_TYPE_ERROR, "Last stroke classification result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v300 = qword_1EA84DC50[0];
  v307 = v300;
  if (os_log_type_enabled(v300, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v300, OS_LOG_TYPE_FAULT, "Last stroke classification result in re-grouping subject strokes in document layout analysis can't be nil.", buf, 2u);
  }

  v292 = 0;
LABEL_120:

LABEL_121:

  return v292;
}

@end