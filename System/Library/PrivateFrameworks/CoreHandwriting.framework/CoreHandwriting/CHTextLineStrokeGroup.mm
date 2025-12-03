@interface CHTextLineStrokeGroup
- (CGPath)newEstimatedBaselineForStrokesWithTokens:(id)tokens tokenStrokeIdentifiers:(id)identifiers relaxedChecks:(BOOL)checks;
- (CGVector)averageStrokeDeviation;
- (CGVector)averageWritingOrientation;
- (CGVector)localWritingOrientationAtStrokeIndex:(int64_t)index;
- (CHTextLineStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification strategyIdentifier:(id)strategyIdentifier writingDirectionSortedSubstrokes:(id)self0 averageWritingOrientation:(CGVector)self1 averageStrokeDeviation:(CGVector)self2 writingDirectionSortedStrokeIdentifiers:(id)self3 localStrokeWritingOrientations:(const void *)self4 coalescedLastSubstrokes:(id)self5 groupingConfidence:(double)self6 firstStrokeOrigin:(CGPoint)self7;
- (CHTextLineStrokeGroup)initWithCoder:(id)coder;
- (CHTextLineStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification strategyIdentifier:(id)self0 writingDirectionSortedSubstrokes:(id)self1 averageWritingOrientation:(CGVector)self2 averageStrokeDeviation:(CGVector)self3 writingDirectionSortedStrokeIdentifiers:(id)self4 localStrokeWritingOrientations:(const void *)self5 coalescedLastSubstrokes:(id)self6 groupingConfidence:(double)self7 firstStrokeOrigin:(CGPoint)self8;
- (CHTextLineStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification;
- (id).cxx_construct;
- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds writingDirectionSortedSubstrokes:(id)substrokes averageWritingOrientation:(CGVector)orientation averageStrokeDeviation:(CGVector)self0 writingDirectionSortedStrokeIdentifiers:(id)self1 localStrokeWritingOrientations:(const void *)self2 coalescedLastSubstrokes:(id)self3 groupingConfidence:(double)self4 lastSubstrokeIndexBeforeMerge:(int64_t)self5 firstStrokeOrigin:(CGPoint)self6;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTextLineStrokeGroup

- (CHTextLineStrokeGroup)initWithAncestorIdentifier:(int64_t)identifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification strategyIdentifier:(id)strategyIdentifier writingDirectionSortedSubstrokes:(id)self0 averageWritingOrientation:(CGVector)self1 averageStrokeDeviation:(CGVector)self2 writingDirectionSortedStrokeIdentifiers:(id)self3 localStrokeWritingOrientations:(const void *)self4 coalescedLastSubstrokes:(id)self5 groupingConfidence:(double)self6 firstStrokeOrigin:(CGPoint)self7
{
  dy = orientation.dy;
  dx = orientation.dx;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifierCopy = strokeIdentifier;
  lastStrokeIdentifierCopy = lastStrokeIdentifier;
  strategyIdentifierCopy = strategyIdentifier;
  substrokesCopy = substrokes;
  strokeIdentifiersCopy = strokeIdentifiers;
  lastSubstrokesCopy = lastSubstrokes;
  v40.receiver = self;
  v40.super_class = CHTextLineStrokeGroup;
  v32 = [(CHStrokeGroup *)&v40 initWithAncestorIdentifier:identifier strokeIdentifiers:identifiersCopy firstStrokeIdentifier:strokeIdentifierCopy lastStrokeIdentifier:lastStrokeIdentifierCopy bounds:classification classification:strategyIdentifierCopy groupingConfidence:x strategyIdentifier:y firstStrokeOrigin:width, height, confidence, origin.x, origin.y];
  v33 = v32;
  if (v32)
  {
    objc_storeStrong(&v32->_writingDirectionSortedSubstrokes, substrokes);
    v33->_averageWritingOrientation.dx = dx;
    v33->_averageWritingOrientation.dy = dy;
    v33->_averageStrokeDeviation = deviation;
    objc_storeStrong(&v33->_writingDirectionSortedStrokeIdentifiers, strokeIdentifiers);
    if (&v33->_localStrokeWritingOrientations != orientations)
    {
      sub_1836FA644(&v33->_localStrokeWritingOrientations, *orientations, *(orientations + 1), (*(orientations + 1) - *orientations) >> 4);
    }

    v33->_lastSubstrokeIndexBeforeMerge = -1;
    objc_storeStrong(&v33->_coalescedLastSubstrokes, lastSubstrokes);
  }

  return v33;
}

- (CHTextLineStrokeGroup)initWithUniqueIdentifier:(int64_t)identifier ancestorIdentifier:(int64_t)ancestorIdentifier strokeIdentifiers:(id)identifiers firstStrokeIdentifier:(id)strokeIdentifier lastStrokeIdentifier:(id)lastStrokeIdentifier bounds:(CGRect)bounds classification:(int64_t)classification strategyIdentifier:(id)self0 writingDirectionSortedSubstrokes:(id)self1 averageWritingOrientation:(CGVector)self2 averageStrokeDeviation:(CGVector)self3 writingDirectionSortedStrokeIdentifiers:(id)self4 localStrokeWritingOrientations:(const void *)self5 coalescedLastSubstrokes:(id)self6 groupingConfidence:(double)self7 firstStrokeOrigin:(CGPoint)self8
{
  dy = orientation.dy;
  dx = orientation.dx;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifierCopy = strokeIdentifier;
  lastStrokeIdentifierCopy = lastStrokeIdentifier;
  strategyIdentifierCopy = strategyIdentifier;
  substrokesCopy = substrokes;
  strokeIdentifiersCopy = strokeIdentifiers;
  lastSubstrokesCopy = lastSubstrokes;
  v41.receiver = self;
  v41.super_class = CHTextLineStrokeGroup;
  strategyIdentifierCopy = [(CHStrokeGroup *)&v41 initWithUniqueIdentifier:identifier ancestorIdentifier:ancestorIdentifier strokeIdentifiers:identifiersCopy firstStrokeIdentifier:strokeIdentifierCopy lastStrokeIdentifier:lastStrokeIdentifierCopy bounds:classification classification:x groupingConfidence:y strategyIdentifier:width firstStrokeOrigin:height, confidence, origin.x, origin.y, strategyIdentifierCopy];
  v34 = strategyIdentifierCopy;
  if (strategyIdentifierCopy)
  {
    objc_storeStrong(&strategyIdentifierCopy->_writingDirectionSortedSubstrokes, substrokes);
    v34->_averageWritingOrientation.dx = dx;
    v34->_averageWritingOrientation.dy = dy;
    v34->_averageStrokeDeviation = deviation;
    objc_storeStrong(&v34->_writingDirectionSortedStrokeIdentifiers, strokeIdentifiers);
    if (&v34->_localStrokeWritingOrientations != orientations)
    {
      sub_1836FA644(&v34->_localStrokeWritingOrientations, *orientations, *(orientations + 1), (*(orientations + 1) - *orientations) >> 4);
    }

    v34->_lastSubstrokeIndexBeforeMerge = -1;
    objc_storeStrong(&v34->_coalescedLastSubstrokes, lastSubstrokes);
  }

  return v34;
}

- (id)groupByAddingStrokeIdentifiers:(id)identifiers removingStrokeIdentifiers:(id)strokeIdentifiers firstStrokeIdentifier:(id)identifier lastStrokeIdentifier:(id)strokeIdentifier bounds:(CGRect)bounds writingDirectionSortedSubstrokes:(id)substrokes averageWritingOrientation:(CGVector)orientation averageStrokeDeviation:(CGVector)self0 writingDirectionSortedStrokeIdentifiers:(id)self1 localStrokeWritingOrientations:(const void *)self2 coalescedLastSubstrokes:(id)self3 groupingConfidence:(double)self4 lastSubstrokeIndexBeforeMerge:(int64_t)self5 firstStrokeOrigin:(CGPoint)self6
{
  dy = orientation.dy;
  dx = orientation.dx;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  identifiersCopy = identifiers;
  strokeIdentifiersCopy = strokeIdentifiers;
  identifierCopy = identifier;
  strokeIdentifierCopy = strokeIdentifier;
  substrokesCopy = substrokes;
  sortedStrokeIdentifiersCopy = sortedStrokeIdentifiers;
  lastSubstrokesCopy = lastSubstrokes;
  v37 = objc_msgSend_classification(self, v32, v33, v34, v35, v36);
  v45.receiver = self;
  v45.super_class = CHTextLineStrokeGroup;
  v38 = [(CHStrokeGroup *)&v45 groupByAddingStrokeIdentifiers:identifiersCopy removingStrokeIdentifiers:strokeIdentifiersCopy firstStrokeIdentifier:identifierCopy lastStrokeIdentifier:strokeIdentifierCopy bounds:v37 classification:x groupingConfidence:y firstStrokeOrigin:width, height, confidence, origin.x, origin.y];
  objc_storeStrong((v38 + 136), substrokes);
  *(v38 + 144) = dx;
  *(v38 + 152) = dy;
  *(v38 + 160) = deviation;
  objc_storeStrong((v38 + 216), sortedStrokeIdentifiers);
  if ((v38 + 176) != orientations)
  {
    sub_1836FA644((v38 + 176), *orientations, *(orientations + 1), (*(orientations + 1) - *orientations) >> 4);
  }

  *(v38 + 200) = merge;
  v39 = *(v38 + 208);
  *(v38 + 208) = lastSubstrokesCopy;

  return v38;
}

- (CHTextLineStrokeGroup)strokeGroupWithUpdatedStrategyIdentifier:(id)identifier classification:(int64_t)classification
{
  identifierCopy = identifier;
  v107 = [CHTextLineStrokeGroup alloc];
  v10 = objc_msgSend_uniqueIdentifier(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_ancestorIdentifier(self, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_strokeIdentifiers(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_firstStrokeIdentifier(self, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_lastStrokeIdentifier(self, v29, v30, v31, v32, v33);
  objc_msgSend_bounds(self, v35, v36, v37, v38, v39);
  v106 = v40;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v52 = objc_msgSend_writingDirectionSortedSubstrokes(self, v47, v48, v49, v50, v51);
  objc_msgSend_averageWritingOrientation(self, v53, v54, v55, v56, v57);
  v59 = v58;
  v61 = v60;
  objc_msgSend_averageStrokeDeviation(self, v62, v63, v64, v65, v66);
  v68 = v67;
  v70 = v69;
  v76 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(self, v71, v72, v73, v74, v75);
  v82 = objc_msgSend_localStrokeWritingOrientations(self, v77, v78, v79, v80, v81);
  v88 = objc_msgSend_coalescedLastSubstrokes(self, v83, v84, v85, v86, v87);
  objc_msgSend_groupingConfidence(self, v89, v90, v91, v92, v93);
  v95 = v94;
  objc_msgSend_firstStrokeOrigin(self, v96, v97, v98, v99, v100);
  StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin_(v107, v101, v10, v16, v22, v28, v34, classification, v106, v42, v44, v46, v59, v61, v68, v70, identifierCopy, v52, v76, v82, v88, v95, v102, v103);

  return StrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin;
}

- (CGVector)localWritingOrientationAtStrokeIndex:(int64_t)index
{
  v3 = &self->_localStrokeWritingOrientations.__begin_[index];
  dx = v3->dx;
  dy = v3->dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)averageWritingOrientation
{
  dx = self->_averageWritingOrientation.dx;
  dy = self->_averageWritingOrientation.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)averageStrokeDeviation
{
  dx = self->_averageStrokeDeviation.dx;
  dy = self->_averageStrokeDeviation.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGPath)newEstimatedBaselineForStrokesWithTokens:(id)tokens tokenStrokeIdentifiers:(id)identifiers relaxedChecks:(BOOL)checks
{
  v507 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  identifiersCopy = identifiers;
  checksCopy = checks;
  if (!checks)
  {
    if (!objc_msgSend_count(identifiersCopy, v7, v8, v9, v10, v11))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v17 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_ERROR, "There needs to be at least one array of token stroke identifiers to get a baseline.", buf, 2u);
      }
    }

    if (!objc_msgSend_count(identifiersCopy, v12, v13, v14, v15, v16))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v18 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_FAULT, "There needs to be at least one array of token stroke identifiers to get a baseline.", buf, 2u);
      }
    }
  }

  if (tokensCopy)
  {
    v19 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(tokensCopy, v7, &stru_1EF1C0318, &unk_1EF1BD9A0, v10, v11);
    v25 = objc_msgSend_ch_possibleDescenderCharSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
    v30 = objc_msgSend_indexesOfCharacters_(v19, v26, v25, v27, v28, v29);

    v31 = MEMORY[0x1E695DF70];
    v37 = objc_msgSend_count(v30, v32, v33, v34, v35, v36);
    v42 = objc_msgSend_arrayWithCapacity_(v31, v38, v37, v39, v40, v41);
    v490[0] = MEMORY[0x1E69E9820];
    v490[1] = 3221225472;
    v490[2] = sub_18379BE3C;
    v490[3] = &unk_1E6DDE028;
    v440 = v42;
    v491 = v440;
    v43 = v19;
    v492 = v43;
    objc_msgSend_enumerateIndexesUsingBlock_(v30, v44, v490, v45, v46, v47);
  }

  else
  {
    v440 = 0;
  }

  v48 = MEMORY[0x1E695DF70];
  v49 = objc_msgSend_count(identifiersCopy, v7, v8, v9, v10, v11);
  v472 = objc_msgSend_arrayWithCapacity_(v48, v50, v49, v51, v52, v53);
  for (i = 0; i < objc_msgSend_count(identifiersCopy, v54, v55, v56, v57, v58); ++i)
  {
    v65 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v60, v61, v62, v63, v64);
    objc_msgSend_addObject_(v472, v66, v65, v67, v68, v69);
  }

  v70 = MEMORY[0x1E695DF70];
  v71 = objc_msgSend_writingDirectionSortedSubstrokes(self, v60, v61, v62, v63, v64);
  v77 = objc_msgSend_count(v71, v72, v73, v74, v75, v76);
  v477 = objc_msgSend_arrayWithCapacity_(v70, v78, v77, v79, v80, v81);

  if (!checksCopy)
  {
    v87 = objc_msgSend_writingDirectionSortedSubstrokes(self, v82, v83, v84, v85, v86);
    v93 = objc_msgSend_count(v87, v88, v89, v90, v91, v92) == 0;

    if (v93)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v99 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v99, OS_LOG_TYPE_ERROR, "There should be at least one substroke for a text line stroke group to get a baseline.", buf, 2u);
      }
    }

    v100 = objc_msgSend_writingDirectionSortedSubstrokes(self, v94, v95, v96, v97, v98);
    v106 = objc_msgSend_count(v100, v101, v102, v103, v104, v105) == 0;

    if (v106)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v107 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_FAULT, "There should be at least one substroke for a text line stroke group to get a baseline.", buf, 2u);
      }
    }
  }

  v488 = 0u;
  v489 = 0u;
  v487 = 0u;
  v486 = 0u;
  v108 = objc_msgSend_writingDirectionSortedSubstrokes(self, v82, v83, v84, v85, v86);
  v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v486, v500, 16, v110);
  if (v115)
  {
    v116 = *v487;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        if (*v487 != v116)
        {
          objc_enumerationMutation(v108);
        }

        v118 = *(*(&v486 + 1) + 8 * j);
        v485[0] = MEMORY[0x1E69E9820];
        v485[1] = 3221225472;
        v485[2] = sub_18379BEC8;
        v485[3] = &unk_1E6DDE050;
        v485[4] = v118;
        v119 = objc_msgSend_indexOfObjectPassingTest_(identifiersCopy, v111, v485, v112, v113, v114);
        if (v119 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_addObject_(v477, v111, v118, v112, v113, v114);
          v124 = objc_msgSend_objectAtIndexedSubscript_(v472, v120, v119, v121, v122, v123);
          v130 = objc_msgSend_count(v477, v125, v126, v127, v128, v129);
          objc_msgSend_addIndex_(v124, v131, v130 - 1, v132, v133, v134);
        }
      }

      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v111, &v486, v500, 16, v114);
    }

    while (v115);
  }

  if (!checksCopy)
  {
    if (!objc_msgSend_count(v477, v135, v136, v137, v138, v139))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v145 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v145, OS_LOG_TYPE_ERROR, "There should be at least one substroke covering one of the strokeIdentifiers.", buf, 2u);
      }
    }

    if (!objc_msgSend_count(v477, v140, v141, v142, v143, v144))
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v146 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v146, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18366B000, v146, OS_LOG_TYPE_FAULT, "There should be at least one substroke covering one of the strokeIdentifiers.", buf, 2u);
      }
    }
  }

  if (!objc_msgSend_count(v477, v135, v136, v137, v138, v139))
  {
    v160 = MEMORY[0x1E695DF70];
    v161 = objc_msgSend_writingDirectionSortedSubstrokes(self, v147, v148, v149, v150, v151);
    v167 = objc_msgSend_count(v161, v162, v163, v164, v165, v166);
    v172 = objc_msgSend_arrayWithCapacity_(v160, v168, v167, v169, v170, v171);

    v178 = objc_msgSend_writingDirectionSortedSubstrokes(self, v173, v174, v175, v176, v177);
    v483[0] = MEMORY[0x1E69E9820];
    v483[1] = 3221225472;
    v483[2] = sub_18379BF68;
    v483[3] = &unk_1E6DDE078;
    v179 = v172;
    v484 = v179;
    objc_msgSend_enumerateObjectsUsingBlock_(v178, v180, v483, v181, v182, v183);

    v189 = objc_msgSend_array(MEMORY[0x1E695DF70], v184, v185, v186, v187, v188);
    v481[0] = MEMORY[0x1E69E9820];
    v481[1] = 3221225472;
    v481[2] = sub_18379BFFC;
    v481[3] = &unk_1E6DDE0A0;
    v190 = v189;
    v482 = v190;
    objc_msgSend_enumerateObjectsUsingBlock_(identifiersCopy, v191, v481, v192, v193, v194);
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v195 = qword_1EA84DC58;
    if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
    {
      v200 = objc_msgSend_componentsJoinedByString_(v190, v196, @", ", v197, v198, v199);
      v205 = objc_msgSend_componentsJoinedByString_(v179, v201, @", ", v202, v203, v204);
      *buf = 138412546;
      v504 = v200;
      v505 = 2112;
      v506 = v205;
      _os_log_impl(&dword_18366B000, v195, OS_LOG_TYPE_ERROR, "Failed to match any substrokes with token stroke identifiers.\nToken Stroke Identifiers: %@\nSubstroke Stroke Identifiers: %@", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v206 = qword_1EA84DC58;
      if (!os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
      {
LABEL_66:

        v207 = 0;
        goto LABEL_203;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v206 = qword_1EA84DC58;
      if (!os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v206, OS_LOG_TYPE_ERROR, "Skipping baseline estimation since substroke count == 0", buf, 2u);
    goto LABEL_66;
  }

  v152 = v477;
  v444 = tokensCopy;
  v447 = v472;
  v442 = v440;
  v439 = v152;
  if (!self)
  {
    v207 = 0;
    goto LABEL_202;
  }

  memset(v499, 0, sizeof(v499));
  obj = v152;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v153, v499, buf, 16, v154))
  {
    objc_msgSend_orientedBounds(*v499[1], v155, v156, v157, v158, v159);
    operator new();
  }

  v213 = MEMORY[0x1E695EFD0];
  v214 = *(MEMORY[0x1E695EFD0] + 8);
  v459 = *MEMORY[0x1E695EFD0];
  v216 = *(MEMORY[0x1E695EFD0] + 16);
  v215 = *(MEMORY[0x1E695EFD0] + 24);
  v218 = *(MEMORY[0x1E695EFD0] + 32);
  v217 = *(MEMORY[0x1E695EFD0] + 40);
  y = *(MEMORY[0x1E695F058] + 8);
  x = *MEMORY[0x1E695F058];
  height = *(MEMORY[0x1E695F058] + 24);
  width = *(MEMORY[0x1E695F058] + 16);
  v497 = 0;
  __p = 0;
  v498 = 0;
  if (v442 && objc_msgSend_count(v442, v208, v209, v210, v211, v212))
  {
    v219 = objc_msgSend_objectAtIndex_(v442, v208, 0, v210, v211, v212);
    objc_msgSend_floatValue(v219, v220, v221, v222, v223, v224);
    v445 = v225;

    v226 = 0;
  }

  else
  {
    v226 = -1;
    v445 = INFINITY;
  }

  v227 = 0;
  LOBYTE(v228) = 0;
  v446 = 0;
  v229 = &off_1839CD000;
  v448 = 0x7FFFFFFFFFFFFFFFLL;
  while (v227 < objc_msgSend_count(obj, v208, v209, v210, v211, v212))
  {
    v470 = v213[2];
    v471 = v213[1];
    v468 = v213[4];
    v469 = v213[3];
    v466 = *v213;
    v467 = v213[5];
    v474 = *(32 * v227 + 8);
    v475 = *(32 * v227);
    v480 = *(32 * v227 + 0x10);
    rect = *(32 * v227 + 0x18);
    if (v497 != __p || v227 < objc_msgSend_count(obj, v208, v209, v210, v211, v212) - 1)
    {
      v231 = v480 < 9.0 && rect < 9.0;
      if (v231)
      {
        goto LABEL_74;
      }
    }

    if (v448 == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_objectAtIndexedSubscript_(v447, v208, v448, v210, v211, v212), v232 = objc_claimAutoreleasedReturnValue(), v237 = objc_msgSend_containsIndex_(v232, v233, v227, v234, v235, v236), v232, (v237 & 1) == 0))
    {
      v495[0] = MEMORY[0x1E69E9820];
      v495[1] = 3221225472;
      v495[2] = sub_18379C008;
      v495[3] = &unk_1E6DDE0C0;
      v495[4] = v227;
      v448 = objc_msgSend_indexOfObjectPassingTest_(v447, v208, v495, v210, v211, v212);
    }

    v238 = objc_msgSend_objectAtIndex_(v444, v208, v448, v210, v211, v212);
    v244 = objc_msgSend_string(v238, v239, v240, v241, v242, v243);
    v250 = objc_msgSend_countCharacters(v244, v245, v246, v247, v248, v249);

    y = v474;
    x = v475;
    height = rect;
    width = v480;
    v256 = (32 * v227 + 56);
    while (v227 < objc_msgSend_count(obj, v251, v252, v253, v254, v255) - 1)
    {
      v261 = *(v256 - 3);
      v262 = *(v256 - 2);
      v263 = *(v256 - 1);
      v264 = *v256;
      v265 = objc_msgSend_objectAtIndexedSubscript_(obj, v257, v227 + 1, v258, v259, v260);
      v271 = v265;
      v502 = 0u;
      memset(v501, 0, sizeof(v501));
      if (v265)
      {
        objc_msgSend_orientationTransform(v265, v266, v267, v268, v269, v270);
        v452 = *&v501[16];
        v453 = *v501;
        v455 = *&v501[24];
        v457 = *&v501[8];
        v460 = *(&v502 + 1);
        v454 = *&v502;
      }

      else
      {
        v457 = 0.0;
        v460 = 0.0;
        v454 = 0.0;
        v455 = 0.0;
        v452 = 0.0;
        v453 = 0.0;
      }

      v493.a = v466;
      v493.b = v471;
      v493.c = v470;
      v493.d = v469;
      v493.tx = v468;
      v493.ty = v467;
      CGAffineTransformInvert(&v494, &v493);
      a = v494.a;
      c = v494.c;
      d = v494.d;
      b = v494.b;
      tx = v494.tx;
      ty = v494.ty;
      v508.origin.x = v261;
      v508.origin.y = v262;
      v508.size.width = v263;
      v508.size.height = v264;
      MaxX = CGRectGetMaxX(v508);
      v509.origin.x = v261;
      v509.origin.y = v262;
      v509.size.width = v263;
      v509.size.height = v264;
      MaxY = CGRectGetMaxY(v509);
      v277 = v454 + v262 * v452 + v453 * v261;
      v278 = v460 + v262 * v455 + v457 * v261;
      v279 = tx + v278 * c + a * v277;
      v280 = *&v502 + MaxY * *&v501[16] + *v501 * MaxX;
      v493.a = v466;
      v493.b = v471;
      v281 = *(&v502 + 1) + MaxY * *&v501[24] + *&v501[8] * MaxX;
      v493.c = v470;
      v493.d = v469;
      v493.tx = v468;
      v493.ty = v467;
      CGAffineTransformInvert(&v494, &v493);
      v458 = v494.b;
      v461 = v494.d;
      v286 = v280;
      v456 = v494.ty;
      v287 = v494.tx + v281 * v494.c + v494.a * v280;
      if (v250 != 1 || (objc_msgSend_objectAtIndexedSubscript_(v447, v282, v448, v283, v284, v285), v288 = objc_claimAutoreleasedReturnValue(), v293 = objc_msgSend_containsIndex_(v288, v289, v227 + 1, v290, v291, v292), v288, (v293 & 1) == 0))
      {
        v510.origin.y = v474;
        v510.origin.x = v475;
        v510.size.width = v480;
        v510.size.height = rect;
        if (CGRectGetMinX(v510) > v279 || (v511.origin.y = v474, v511.origin.x = v475, v511.size.width = v480, v511.size.height = rect, v279 > CGRectGetMaxX(v511)))
        {
          v512.origin.y = v474;
          v512.origin.x = v475;
          v512.size.width = v480;
          v512.size.height = rect;
          if (v279 > CGRectGetMinX(v512))
          {
            goto LABEL_103;
          }

          v513.origin.y = v474;
          v513.origin.x = v475;
          v513.size.width = v480;
          v513.size.height = rect;
          if (CGRectGetMinX(v513) > v287)
          {
            goto LABEL_103;
          }
        }

        v514.origin.y = v474;
        v514.origin.x = v475;
        v514.size.width = v480;
        v514.size.height = rect;
        MinX = v279;
        if (CGRectGetMinX(v514) > v279)
        {
          v515.origin.y = v474;
          v515.origin.x = v475;
          v515.size.width = v480;
          v515.size.height = rect;
          MinX = CGRectGetMinX(v515);
        }

        v516.origin.y = v474;
        v516.origin.x = v475;
        v516.size.width = v480;
        v516.size.height = rect;
        v231 = CGRectGetMaxX(v516) < v287;
        v295 = v287;
        if (v231)
        {
          v517.origin.y = v474;
          v517.origin.x = v475;
          v517.size.width = v480;
          v517.size.height = rect;
          v295 = CGRectGetMaxX(v517);
        }

        if ((v295 - MinX) / v480 + (v295 - MinX) / (v287 - v279) < v229[230])
        {
LABEL_103:

          break;
        }
      }

      v532.origin.y = ty + v278 * d + b * v277;
      v532.origin.x = v279 + -1.0;
      v532.size.width = 1.0;
      v532.size.height = 1.0;
      v518.origin.y = y;
      v518.origin.x = x;
      v518.size.height = height;
      v518.size.width = width;
      v519 = CGRectUnion(v518, v532);
      v533.origin.y = v456 + v281 * v461 + v458 * v286;
      v533.origin.x = v287 + -1.0;
      v533.size.width = 1.0;
      v533.size.height = 1.0;
      v520 = CGRectUnion(v519, v533);
      y = v520.origin.y;
      x = v520.origin.x;
      height = v520.size.height;
      width = v520.size.width;

      v256 += 4;
      ++v227;
    }

    v521.origin.y = y;
    v521.origin.x = x;
    v521.size.height = height;
    v521.size.width = width;
    v296 = CGRectGetMaxY(v521);
    v228 = (v227 / objc_msgSend_count(obj, v297, v298, v299, v300, v301)) >= v445 && v226 >= 0;
    if (!v228)
    {
      goto LABEL_113;
    }

    v522.origin.y = y;
    v522.origin.x = x;
    v522.size.height = height;
    v522.size.width = width;
    MinY = CGRectGetMinY(v522);
    v523.origin.y = y;
    v523.origin.x = x;
    v523.size.height = height;
    v523.size.width = width;
    v296 = (MinY + CGRectGetMaxY(v523)) * 0.5;
    if (v226 < (objc_msgSend_count(v442, v309, v310, v311, v312, v313) - 1))
    {
      v314 = objc_msgSend_objectAtIndex_(v442, v302, ++v226, v304, v305, v306);
      objc_msgSend_floatValue(v314, v315, v316, v317, v318, v319);
      v445 = v320;

LABEL_113:
      v321 = v229;
      v322 = v296;
      if ((v446 & 1) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_134;
    }

    v226 = -1;
    v445 = INFINITY;
    v321 = v229;
    v322 = v296;
    if ((v446 & 1) == 0)
    {
LABEL_114:
      objc_msgSend_averageWritingOrientation(self, v302, v303, v304, v305, v306);
      if (v323 >= 0.0)
      {
        v525.origin.y = y;
        v525.origin.x = x;
        v525.size.height = height;
        v525.size.width = width;
        v324 = CGRectGetMinX(v525);
      }

      else
      {
        v524.origin.y = y;
        v524.origin.x = x;
        v524.size.height = height;
        v524.size.width = width;
        v324 = CGRectGetMaxX(v524);
      }

      v325 = v322 + 6.0;
      v326 = v468 + v470 * v325 + v466 * v324;
      v327 = v467 + v469 * v325 + v471 * v324;
      v328 = v497;
      if (v497 >= v498)
      {
        v330 = __p;
        v331 = v497 - __p;
        v332 = (v497 - __p) >> 4;
        v333 = v332 + 1;
        if ((v332 + 1) >> 60)
        {
          sub_18369761C();
        }

        v334 = v226;
        v335 = v498 - __p;
        if ((v498 - __p) >> 3 > v333)
        {
          v333 = v335 >> 3;
        }

        if (v335 >= 0x7FFFFFFFFFFFFFF0)
        {
          v336 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v336 = v333;
        }

        if (v336)
        {
          if (!(v336 >> 60))
          {
            operator new();
          }

          sub_183688F00();
        }

        v337 = (v497 - __p) >> 4;
        v338 = (16 * v332);
        *v338 = v326;
        v338[1] = v327;
        v329 = 16 * v332 + 16;
        v339 = &v338[-2 * v337];
        memcpy(v339, v330, v331);
        __p = v339;
        v497 = v329;
        v498 = 0;
        if (v330)
        {
          operator delete(v330);
        }

        v226 = v334;
      }

      else
      {
        *v497 = v326;
        v328[1] = v327;
        v329 = (v328 + 2);
      }

      v497 = v329;
    }

LABEL_134:
    v340 = v226;
    v526.origin.y = y;
    v526.origin.x = x;
    v526.size.height = height;
    v526.size.width = width;
    MidX = CGRectGetMidX(v526);
    v342 = v322 + 6.0;
    v343 = v468 + v470 * v342 + v466 * MidX;
    v344 = v467 + v469 * v342 + v471 * MidX;
    v345 = v497;
    if (v497 < v498)
    {
      *v497 = v343;
      v345[1] = v344;
      v230 = (v345 + 2);
    }

    else
    {
      v346 = __p;
      v347 = v497 - __p;
      v348 = (v497 - __p) >> 4;
      v349 = v348 + 1;
      if ((v348 + 1) >> 60)
      {
        sub_18369761C();
      }

      v350 = v498 - __p;
      if ((v498 - __p) >> 3 > v349)
      {
        v349 = v350 >> 3;
      }

      if (v350 >= 0x7FFFFFFFFFFFFFF0)
      {
        v351 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v351 = v349;
      }

      if (v351)
      {
        if (!(v351 >> 60))
        {
          operator new();
        }

        sub_183688F00();
      }

      v352 = (v497 - __p) >> 4;
      v353 = (16 * v348);
      *v353 = v343;
      v353[1] = v344;
      v230 = 16 * v348 + 16;
      v354 = &v353[-2 * v352];
      memcpy(v354, v346, v347);
      __p = v354;
      v497 = v230;
      v498 = 0;
      if (v346)
      {
        operator delete(v346);
      }
    }

    v226 = v340;
    v446 = 1;
    v217 = v467;
    v459 = v466;
    v497 = v230;
    v216 = v470;
    v214 = v471;
    v218 = v468;
    v215 = v469;
    v229 = v321;
LABEL_74:
    ++v227;
  }

  v527.origin.y = y;
  v527.origin.x = x;
  v527.size.height = height;
  v527.size.width = width;
  v360 = CGRectGetMaxY(v527);
  v361 = v228 || v445 <= 1.0 && v226 >= 0;
  if (!objc_msgSend_count(obj, v355, v356, v357, v358, v359))
  {
    v371 = v497;
    v372 = __p;
    if (v497 == __p)
    {
      goto LABEL_177;
    }

LABEL_160:
    if (v371 == v372)
    {
      goto LABEL_182;
    }

    goto LABEL_187;
  }

  if (v361)
  {
    v528.origin.y = y;
    v528.origin.x = x;
    v528.size.height = height;
    v528.size.width = width;
    v368 = CGRectGetMinY(v528);
    v529.origin.y = y;
    v529.origin.x = x;
    v529.size.height = height;
    v529.size.width = width;
    v360 = (v368 + CGRectGetMaxY(v529)) * 0.5;
  }

  objc_msgSend_averageWritingOrientation(self, v363, v364, v365, v366, v367);
  if (v369 >= 0.0)
  {
    v531.origin.y = y;
    v531.origin.x = x;
    v531.size.height = height;
    v531.size.width = width;
    v370 = CGRectGetMaxX(v531);
  }

  else
  {
    v530.origin.y = y;
    v530.origin.x = x;
    v530.size.height = height;
    v530.size.width = width;
    v370 = CGRectGetMinX(v530);
  }

  v373 = v360;
  v374 = v370 + 7.0;
  v375 = v373 + 6.0;
  v376 = v218 + v216 * v375 + v459 * v374;
  v377 = v217 + v215 * v375 + v214 * v374;
  v378 = v497;
  if (v497 >= v498)
  {
    v379 = __p;
    v380 = v497 - __p;
    v381 = (v497 - __p) >> 4;
    v382 = v381 + 1;
    if ((v381 + 1) >> 60)
    {
      sub_18369761C();
    }

    v383 = v498 - __p;
    if ((v498 - __p) >> 3 > v382)
    {
      v382 = v383 >> 3;
    }

    if (v383 >= 0x7FFFFFFFFFFFFFF0)
    {
      v384 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v384 = v382;
    }

    if (v384)
    {
      if (!(v384 >> 60))
      {
        operator new();
      }

      sub_183688F00();
    }

    v385 = (v497 - __p) >> 4;
    v386 = (16 * v381);
    *v386 = v376;
    v386[1] = v377;
    v371 = (16 * v381 + 16);
    v387 = &v386[-2 * v385];
    memcpy(v387, v379, v380);
    __p = v387;
    v497 = v371;
    v498 = 0;
    if (v379)
    {
      operator delete(v379);
    }
  }

  else
  {
    *v497 = v376;
    v378[1] = v377;
    v371 = v378 + 2;
  }

  v497 = v371;
  v372 = __p;
  if (v371 != __p)
  {
    goto LABEL_160;
  }

LABEL_177:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v388 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v388, OS_LOG_TYPE_ERROR))
  {
    *v501 = 0;
    _os_log_impl(&dword_18366B000, v388, OS_LOG_TYPE_ERROR, "The number of points in the raw baseline estimate must be > 0 at this point.", v501, 2u);
  }

  if (v497 == __p)
  {
LABEL_182:
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v389 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v389, OS_LOG_TYPE_FAULT))
    {
      *v501 = 0;
      _os_log_impl(&dword_18366B000, v389, OS_LOG_TYPE_FAULT, "The number of points in the raw baseline estimate must be > 0 at this point.", v501, 2u);
    }
  }

LABEL_187:
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v390 = qword_1EA84DC58;
  if (os_log_type_enabled(v390, OS_LOG_TYPE_DEBUG))
  {
    v392 = *__p;
    v391 = *(__p + 1);
    *v501 = 134218240;
    *&v501[4] = v392;
    *&v501[12] = 2048;
    *&v501[14] = v391;
    _os_log_impl(&dword_18366B000, v390, OS_LOG_TYPE_DEBUG, "Raw points[0] = %.2f, %.2f\n", v501, 0x16u);
  }

  v493.a = 0.0;
  v393 = objc_opt_class();
  if (v393)
  {
    objc_msgSend_regularizedPathFromPoints_delta_gamma_outError_(v393, v394, &__p, &v493, v395, v396, 1.0, 0.9);
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_193;
    }

LABEL_205:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v397 = qword_1EA84DC58;
    if (!os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_195;
    }

LABEL_194:
    v403 = v497;
    v404 = __p;
    v405 = v493.a;
    v406 = objc_msgSend_count(obj, v398, v399, v400, v401, v402);
    *v501 = 134218496;
    *&v501[4] = (v403 - v404) >> 4;
    *&v501[12] = 2048;
    *&v501[14] = v405;
    *&v501[22] = 2048;
    *&v501[24] = v406;
    _os_log_impl(&dword_18366B000, v397, OS_LOG_TYPE_DEFAULT, "Baseline Data detectors baseline approximation with %lu points, correction error = %.2f, number of substrokes %lu", v501, 0x20u);
    goto LABEL_195;
  }

  memset(&v494, 0, 24);
  if (qword_1EA84DC48 != -1)
  {
    goto LABEL_205;
  }

LABEL_193:
  v397 = qword_1EA84DC58;
  if (os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_194;
  }

LABEL_195:

  v407 = [CHQuadCurvePointFIFO alloc];
  v412 = objc_msgSend_initWithFIFO_(v407, v408, 0, v409, v410, v411);
  v413 = [CHBoxcarFilterPointFIFO alloc];
  LODWORD(v414) = 2.0;
  v418 = objc_msgSend_initWithFIFO_width_spacing_(v413, v415, v412, 2, v416, v417, v414);
  v419 = [CHPointFIFO alloc];
  v429 = objc_msgSend_initWithFIFO_(v419, v420, v418, v421, v422, v423);
  v430 = v494.a;
  if (*&v494.b != *&v494.a)
  {
    v431 = 0;
    do
    {
      objc_msgSend_addPoint_(v429, v424, v425, v426, v427, v428, COERCE_DOUBLE(vcvt_f32_f64(*(*&v430 + 16 * v431++))));
      v430 = v494.a;
    }

    while (v431 < (*&v494.b - *&v494.a) >> 4);
  }

  objc_msgSend_flush(v429, v424, v425, v426, v427, v428);
  v437 = objc_msgSend_path(v412, v432, v433, v434, v435, v436);
  v207 = CGPathRetain(v437);

  if (*&v494.a)
  {
    v494.b = v494.a;
    operator delete(*&v494.a);
  }

  if (__p)
  {
    v497 = __p;
    operator delete(__p);
  }

LABEL_202:

LABEL_203:
  return v207;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_ancestorIdentifier(self, v5, v6, v7, v8, v9);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v11, v10, @"ancestorIdentifier", v12, v13);
  v19 = objc_msgSend_uniqueIdentifier(self, v14, v15, v16, v17, v18);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v20, v19, @"uniqueIdentifier", v21, v22);
  v28 = objc_msgSend_strokeIdentifiers(self, v23, v24, v25, v26, v27);
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, v28, @"strokeIdentifiers", v30, v31);

  v37 = objc_msgSend_firstStrokeIdentifier(self, v32, v33, v34, v35, v36);
  objc_msgSend_encodeObject_forKey_(coderCopy, v38, v37, @"firstStrokeIdentifier", v39, v40);

  v46 = objc_msgSend_lastStrokeIdentifier(self, v41, v42, v43, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"lastStrokeIdentifier", v48, v49);

  objc_msgSend_bounds(self, v50, v51, v52, v53, v54);
  v154[0] = v55;
  v154[1] = v56;
  v154[2] = v57;
  v154[3] = v58;
  v62 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v59, v154, "{CGRect={CGPoint=dd}{CGSize=dd}}", v60, v61);
  objc_msgSend_encodeObject_forKey_(coderCopy, v63, v62, @"bounds", v64, v65);
  v71 = objc_msgSend_classification(self, v66, v67, v68, v69, v70);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v72, v71, @"classification", v73, v74);
  objc_msgSend_groupingConfidence(self, v75, v76, v77, v78, v79);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v80, @"groupingConfidence", v81, v82, v83);
  v89 = objc_msgSend_strategyIdentifier(self, v84, v85, v86, v87, v88);
  objc_msgSend_encodeObject_forKey_(coderCopy, v90, v89, @"strategyIdentifier", v91, v92);

  objc_msgSend_firstStrokeOrigin(self, v93, v94, v95, v96, v97);
  v153[0] = v98;
  v153[1] = v99;
  v103 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v100, v153, "{CGPoint=dd}", v101, v102);
  objc_msgSend_encodeObject_forKey_(coderCopy, v104, v103, @"firstStrokeOrigin", v105, v106);
  objc_msgSend_encodeObject_forKey_(coderCopy, v107, self->_writingDirectionSortedStrokeIdentifiers, @"writingDirectionSortedStrokeIdentifiers", v108, v109);
  objc_msgSend_encodeObject_forKey_(coderCopy, v110, self->_writingDirectionSortedSubstrokes, @"writingDirectionSortedSubstrokes", v111, v112);
  v116 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v113, &self->_averageStrokeDeviation, "{CGPoint=dd}", v114, v115);
  objc_msgSend_encodeObject_forKey_(coderCopy, v117, v116, @"averageStrokeDeviation", v118, v119);
  v123 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x1E696B098], v120, &self->_averageWritingOrientation, "{CGPoint=dd}", v121, v122);
  objc_msgSend_encodeObject_forKey_(coderCopy, v124, v123, @"averageWritingOrientation", v125, v126);
  v127 = MEMORY[0x1E695DEF0];
  v133 = *objc_msgSend_localStrokeWritingOrientations(self, v128, v129, v130, v131, v132);
  v139 = objc_msgSend_localStrokeWritingOrientations(self, v134, v135, v136, v137, v138);
  v143 = objc_msgSend_dataWithBytes_length_(v127, v140, v133, v139[1] - *v139, v141, v142);
  objc_msgSend_encodeObject_forKey_(coderCopy, v144, v143, @"localStrokeWritingOrientations", v145, v146);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v147, self->_lastSubstrokeIndexBeforeMerge, @"lastSubstrokeIndexBeforeMerge", v148, v149);
  objc_msgSend_encodeObject_forKey_(coderCopy, v150, self->_coalescedLastSubstrokes, @"coalescedLastSubstrokes", v151, v152);
}

- (CHTextLineStrokeGroup)initWithCoder:(id)coder
{
  v166[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  v9 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"ancestorIdentifier", v6, v7, v8);
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, @"uniqueIdentifier", v11, v12, v13);
  v15 = MEMORY[0x1E695DFD8];
  v166[0] = objc_opt_class();
  v166[1] = objc_opt_class();
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v166, 2, v17, v18);
  v24 = objc_msgSend_setWithArray_(v15, v20, v19, v21, v22, v23);
  v148 = v9;
  v154 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v25, v24, @"strokeIdentifiers", v26, v27);

  v28 = objc_opt_class();
  v153 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"firstStrokeIdentifier", v30, v31);
  v32 = objc_opt_class();
  v152 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"lastStrokeIdentifier", v34, v35);
  v36 = objc_opt_class();
  v40 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"bounds", v38, v39);
  v41 = *(MEMORY[0x1E695F050] + 16);
  v161 = *MEMORY[0x1E695F050];
  v162 = v41;
  v147 = v40;
  objc_msgSend_getValue_size_(v40, v42, &v161, 32, v43, v44);
  objc_msgSend_decodeDoubleForKey_(coderCopy, v45, @"groupingConfidence", v46, v47, v48);
  v50 = v49;
  v55 = objc_msgSend_decodeIntegerForKey_(coderCopy, v51, @"classification", v52, v53, v54);
  v56 = objc_opt_class();
  v151 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"strategyIdentifier", v58, v59);
  v60 = objc_opt_class();
  v146 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v61, v60, @"firstStrokeOrigin", v62, v63);
  objc_msgSend_getValue_size_(v146, v64, v160, 16, v65, v66);
  v67 = MEMORY[0x1E695DFD8];
  v165[0] = objc_opt_class();
  v165[1] = objc_opt_class();
  v71 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v68, v165, 2, v69, v70);
  v76 = objc_msgSend_setWithArray_(v67, v72, v71, v73, v74, v75);
  v77 = v55;
  v150 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v78, v76, @"writingDirectionSortedStrokeIdentifiers", v79, v80);

  v81 = MEMORY[0x1E695DFD8];
  v164[0] = objc_opt_class();
  v164[1] = objc_opt_class();
  v85 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, v164, 2, v83, v84);
  v90 = objc_msgSend_setWithArray_(v81, v86, v85, v87, v88, v89);
  v94 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v91, v90, @"writingDirectionSortedSubstrokes", v92, v93);

  v95 = objc_opt_class();
  v99 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v96, v95, @"averageStrokeDeviation", v97, v98);
  objc_msgSend_getValue_size_(v99, v100, v159, 16, v101, v102);
  v103 = objc_opt_class();
  v107 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v104, v103, @"averageWritingOrientation", v105, v106);
  objc_msgSend_getValue_size_(v107, v108, v158, 16, v109, v110);
  v111 = objc_opt_class();
  v115 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v112, v111, @"localStrokeWritingOrientations", v113, v114);
  v121 = objc_msgSend_length(v115, v116, v117, v118, v119, v120);
  v122 = v115;
  v128 = objc_msgSend_bytes(v115, v123, v124, v125, v126, v127);
  __p = 0;
  v156 = 0;
  v157 = 0;
  sub_1836FA644(&__p, v128, &v128[v121 & 0xFFFFFFFFFFFFFFF0], v121 >> 4);
  v129 = MEMORY[0x1E695DFD8];
  v163[0] = objc_opt_class();
  v163[1] = objc_opt_class();
  v133 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v130, v163, 2, v131, v132);
  v138 = objc_msgSend_setWithArray_(v129, v134, v133, v135, v136, v137);
  v142 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v139, v138, @"coalescedLastSubstrokes", v140, v141);

  v144 = objc_msgSend_initWithUniqueIdentifier_ancestorIdentifier_strokeIdentifiers_firstStrokeIdentifier_lastStrokeIdentifier_bounds_classification_strategyIdentifier_writingDirectionSortedSubstrokes_averageWritingOrientation_averageStrokeDeviation_writingDirectionSortedStrokeIdentifiers_localStrokeWritingOrientations_coalescedLastSubstrokes_groupingConfidence_firstStrokeOrigin_(selfCopy, v143, v14, v148, v154, v153, v152, v77, v161, v162, v158[0], v158[1], v159[0], v159[1], v151, v94, v150, &__p, v142, v50, v160[0], v160[1]);
  if (__p)
  {
    v156 = __p;
    operator delete(__p);
  }

  return v144;
}

- (id).cxx_construct
{
  *(self + 23) = 0;
  *(self + 24) = 0;
  *(self + 22) = 0;
  return self;
}

@end