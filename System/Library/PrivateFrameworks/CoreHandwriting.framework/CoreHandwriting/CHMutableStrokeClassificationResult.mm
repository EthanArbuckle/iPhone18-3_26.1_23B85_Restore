@interface CHMutableStrokeClassificationResult
- (CHMutableStrokeClassificationResult)init;
- (CHMutableStrokeClassificationResult)initWithStrokeClassificationsByStrokeIdentifier:(id)identifier scriptClassificationsByStrokeIdentifier:(id)strokeIdentifier scriptClassificationRawResultsByStrokeIdentifier:(id)byStrokeIdentifier substrokesByStrokeIdentifier:(id)substrokesByStrokeIdentifier midYPositionByStrokeIdentifier:(id)positionByStrokeIdentifier nontextCandidates:(id)candidates;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateByAddingClutterStroke:(id)stroke;
- (void)updateByAddingNonClutterStroke:(id)stroke withAllStrokes:(id)strokes forceClass:(int64_t)class;
- (void)updateByRemovingStrokeIdentifier:(id)identifier withRemovedAndClutterStrokeIDs:(id)ds;
- (void)updateByTransitionedClutterStrokeIdentifier:(id)identifier withRemovedAndClutterStrokeIDs:(id)ds;
- (void)updateNonTextCandidatesByRemovingSupportFromStrokeIdentifier:(id)identifier skippingCandidatesWithStrokeIdentifier:(id)strokeIdentifier;
- (void)updateNonTextCandidatesSupportFromStroke:(id)stroke;
- (void)updateScriptByAddingNonClutterStroke:(id)stroke withClassification:(int64_t)classification classificationRawResult:(id)result;
- (void)updateStrokeIdentifier:(id)identifier withClassificationRawResult:(id)result;
@end

@implementation CHMutableStrokeClassificationResult

- (CHMutableStrokeClassificationResult)init
{
  v16.receiver = self;
  v16.super_class = CHMutableStrokeClassificationResult;
  v2 = [(CHStrokeClassificationResult *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    strokeClassificationsByStrokeIdentifier = v2->_strokeClassificationsByStrokeIdentifier;
    v2->_strokeClassificationsByStrokeIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scriptClassificationsByStrokeIdentifier = v2->_scriptClassificationsByStrokeIdentifier;
    v2->_scriptClassificationsByStrokeIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    scriptClassificationRawResultsByStrokeIdentifier = v2->_scriptClassificationRawResultsByStrokeIdentifier;
    v2->_scriptClassificationRawResultsByStrokeIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    substrokesByStrokeIdentifier = v2->_substrokesByStrokeIdentifier;
    v2->_substrokesByStrokeIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    midYPositionByStrokeIdentifier = v2->_midYPositionByStrokeIdentifier;
    v2->_midYPositionByStrokeIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    nontextCandidates = v2->_nontextCandidates;
    v2->_nontextCandidates = v13;
  }

  return v2;
}

- (CHMutableStrokeClassificationResult)initWithStrokeClassificationsByStrokeIdentifier:(id)identifier scriptClassificationsByStrokeIdentifier:(id)strokeIdentifier scriptClassificationRawResultsByStrokeIdentifier:(id)byStrokeIdentifier substrokesByStrokeIdentifier:(id)substrokesByStrokeIdentifier midYPositionByStrokeIdentifier:(id)positionByStrokeIdentifier nontextCandidates:(id)candidates
{
  v93 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  strokeIdentifierCopy = strokeIdentifier;
  byStrokeIdentifierCopy = byStrokeIdentifier;
  substrokesByStrokeIdentifierCopy = substrokesByStrokeIdentifier;
  positionByStrokeIdentifierCopy = positionByStrokeIdentifier;
  candidatesCopy = candidates;
  v91.receiver = self;
  v91.super_class = CHMutableStrokeClassificationResult;
  v21 = [(CHStrokeClassificationResult *)&v91 init];
  if (v21)
  {
    v22 = objc_msgSend_mutableCopy(identifierCopy, v16, v17, v18, v19, v20);
    strokeClassificationsByStrokeIdentifier = v21->_strokeClassificationsByStrokeIdentifier;
    v21->_strokeClassificationsByStrokeIdentifier = v22;

    v29 = objc_msgSend_mutableCopy(strokeIdentifierCopy, v24, v25, v26, v27, v28);
    scriptClassificationsByStrokeIdentifier = v21->_scriptClassificationsByStrokeIdentifier;
    v21->_scriptClassificationsByStrokeIdentifier = v29;

    v36 = objc_msgSend_mutableCopy(byStrokeIdentifierCopy, v31, v32, v33, v34, v35);
    scriptClassificationRawResultsByStrokeIdentifier = v21->_scriptClassificationRawResultsByStrokeIdentifier;
    v21->_scriptClassificationRawResultsByStrokeIdentifier = v36;

    v43 = objc_msgSend_mutableCopy(substrokesByStrokeIdentifierCopy, v38, v39, v40, v41, v42);
    substrokesByStrokeIdentifier = v21->_substrokesByStrokeIdentifier;
    v21->_substrokesByStrokeIdentifier = v43;

    v50 = objc_msgSend_mutableCopy(positionByStrokeIdentifierCopy, v45, v46, v47, v48, v49);
    midYPositionByStrokeIdentifier = v21->_midYPositionByStrokeIdentifier;
    v21->_midYPositionByStrokeIdentifier = v50;

    v52 = objc_alloc(MEMORY[0x1E695DFA8]);
    v58 = objc_msgSend_count(candidatesCopy, v53, v54, v55, v56, v57);
    v63 = objc_msgSend_initWithCapacity_(v52, v59, v58, v60, v61, v62);
    nontextCandidates = v21->_nontextCandidates;
    v21->_nontextCandidates = v63;

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v65 = candidatesCopy;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v87, v92, 16, v67);
    if (v73)
    {
      v74 = *v88;
      do
      {
        v75 = 0;
        do
        {
          if (*v88 != v74)
          {
            objc_enumerationMutation(v65);
          }

          v76 = v21->_nontextCandidates;
          v77 = objc_msgSend_mutableCopy(*(*(&v87 + 1) + 8 * v75), v68, v69, v70, v71, v72, identifierCopy);
          objc_msgSend_addObject_(v76, v78, v77, v79, v80, v81);

          ++v75;
        }

        while (v73 != v75);
        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v68, &v87, v92, 16, v72);
      }

      while (v73);
    }
  }

  return v21;
}

- (void)updateNonTextCandidatesByRemovingSupportFromStrokeIdentifier:(id)identifier skippingCandidatesWithStrokeIdentifier:(id)strokeIdentifier
{
  v56 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  strokeIdentifierCopy = strokeIdentifier;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v49 = 104;
  selfCopy = self;
  v8 = self->_nontextCandidates;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v51, v55, 16, v10);
  if (!v11)
  {

    v12 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  v13 = *v52;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v52 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v51 + 1) + 8 * i);
      if (v18)
      {
        v19 = *(v18 + 88);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      isEqual = objc_msgSend_isEqual_(v20, v21, identifierCopy, v22, v23, v24);

      if (isEqual)
      {
        v15 = v12;
        v12 = v18;
LABEL_5:

        continue;
      }

      if (v18)
      {
        v26 = *(v18 + 88);
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      v32 = objc_msgSend_containsObject_(strokeIdentifierCopy, v28, v27, v29, v30, v31);

      if ((v32 & 1) == 0 && objc_msgSend_adjustSupportByRemovingStrokeIdentifier_(v18, v16, identifierCopy, v33, v34, v17))
      {
        if (v18)
        {
          v37 = *(v18 + 40);
          v38 = 0.7;
          if (v37 != 6)
          {
            v38 = 0.22;
          }

          if (*(v18 + 24) < v38)
          {
            v37 = *(v18 + 32);
          }
        }

        else
        {
          v37 = 0;
        }

        strokeClassificationsByStrokeIdentifier = selfCopy->_strokeClassificationsByStrokeIdentifier;
        v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v16, v37, v35, v36, v17, v49);
        if (v18)
        {
          v40 = *(v18 + 88);
        }

        else
        {
          v40 = 0;
        }

        v41 = v40;
        objc_msgSend_setObject_forKey_(strokeClassificationsByStrokeIdentifier, v42, v15, v41, v43, v44);

        goto LABEL_5;
      }
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v51, v55, 16, v17);
  }

  while (v11);

  if (v12)
  {
    objc_msgSend_removeObject_(*(&selfCopy->super.super.isa + v49), v45, v12, v46, v47, v48);
  }

LABEL_32:
}

- (void)updateByRemovingStrokeIdentifier:(id)identifier withRemovedAndClutterStrokeIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  objc_msgSend_removeObjectForKey_(self->_strokeClassificationsByStrokeIdentifier, v7, identifierCopy, v8, v9, v10);
  objc_msgSend_removeObjectForKey_(self->_scriptClassificationsByStrokeIdentifier, v11, identifierCopy, v12, v13, v14);
  objc_msgSend_removeObjectForKey_(self->_scriptClassificationRawResultsByStrokeIdentifier, v15, identifierCopy, v16, v17, v18);
  objc_msgSend_removeObjectForKey_(self->_substrokesByStrokeIdentifier, v19, identifierCopy, v20, v21, v22);
  objc_msgSend_removeObjectForKey_(self->_midYPositionByStrokeIdentifier, v23, identifierCopy, v24, v25, v26);
  objc_msgSend_updateNonTextCandidatesByRemovingSupportFromStrokeIdentifier_skippingCandidatesWithStrokeIdentifier_(self, v27, identifierCopy, dsCopy, v28, v29);
}

- (void)updateByTransitionedClutterStrokeIdentifier:(id)identifier withRemovedAndClutterStrokeIDs:(id)ds
{
  identifierCopy = identifier;
  dsCopy = ds;
  objc_msgSend_removeObjectForKey_(self->_substrokesByStrokeIdentifier, v7, identifierCopy, v8, v9, v10);
  objc_msgSend_updateNonTextCandidatesByRemovingSupportFromStrokeIdentifier_skippingCandidatesWithStrokeIdentifier_(self, v11, identifierCopy, dsCopy, v12, v13);
  objc_msgSend_setObject_forKey_(self->_strokeClassificationsByStrokeIdentifier, v14, &unk_1EF1EDB10, identifierCopy, v15, v16);
}

- (void)updateByAddingNonClutterStroke:(id)stroke withAllStrokes:(id)strokes forceClass:(int64_t)class
{
  v100 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  strokesCopy = strokes;
  v93 = strokeCopy;
  v9 = objc_opt_class();
  v92 = objc_msgSend_substrokesForStroke_(v9, v10, strokeCopy, v11, v12, v13);
  substrokesByStrokeIdentifier = self->_substrokesByStrokeIdentifier;
  v20 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v15, v16, v17, v18, v19);
  objc_msgSend_setObject_forKey_(substrokesByStrokeIdentifier, v21, v92, v20, v22, v23);

  v29 = &OBJC_IVAR___CHTransformedTextLine__segments;
  if (!class)
  {
    if ((objc_msgSend_strokeAttributes(strokeCopy, v24, v25, v26, v27, v28) & 2) != 0)
    {
      class = 5;
    }

    else
    {
      v30 = objc_opt_class();
      v38 = objc_msgSend_nonTextCandidateForStroke_withSubstrokes_(v30, v31, strokeCopy, v92, v32, v33);
      if (v38)
      {
        objc_msgSend_addObject_(self->_nontextCandidates, v34, v38, v35, v36, v37);
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        obj = strokesCopy;
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v95, v99, 16, v40);
        if (v46)
        {
          v47 = *v96;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v96 != v47)
              {
                objc_enumerationMutation(obj);
              }

              v49 = *(*(&v95 + 1) + 8 * i);
              v50 = objc_msgSend_encodedStrokeIdentifier(v49, v41, v42, v43, v44, v45);
              v55 = objc_msgSend_objectForKey_(self->_strokeClassificationsByStrokeIdentifier, v51, v50, v52, v53, v54);
              v61 = objc_msgSend_unsignedIntegerValue(v55, v56, v57, v58, v59, v60);

              v62 = *(v38 + 88);
              isEqual = objc_msgSend_isEqual_(v50, v63, v62, v64, v65, v66);

              if ((isEqual & 1) == 0)
              {
                v74 = objc_msgSend_objectForKey_(self->_substrokesByStrokeIdentifier, v68, v50, v69, v70, v71);
                if (v74)
                {
                  objc_msgSend_adjustSupportByAddingStroke_consistingOfSubstrokes_strokeClassification_(v38, v72, v49, v74, v61, v73);
                }
              }
            }

            v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v95, v99, 16, v45);
          }

          while (v46);
        }

        class = *(v38 + 40);
        v75 = 0.22;
        if (class == 6)
        {
          v75 = 0.7;
        }

        if (*(v38 + 24) < v75)
        {
          class = *(v38 + 32);
        }
      }

      else
      {
        class = 1;
      }
    }

    v29 = &OBJC_IVAR___CHTransformedTextLine__segments;
  }

  v76 = *(&self->super.super.isa + v29[496]);
  v77 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, class, v26, v27, v28);
  v83 = objc_msgSend_encodedStrokeIdentifier(v93, v78, v79, v80, v81, v82);
  objc_msgSend_setObject_forKey_(v76, v84, v77, v83, v85, v86);

  objc_msgSend_updateNonTextCandidatesSupportFromStroke_(self, v87, v93, v88, v89, v90);
}

- (void)updateNonTextCandidatesSupportFromStroke:(id)stroke
{
  v97 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  selfCopy = self;
  strokeClassificationsByStrokeIdentifier = self->_strokeClassificationsByStrokeIdentifier;
  v11 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v6, v7, v8, v9, v10);
  v16 = objc_msgSend_objectForKey_(strokeClassificationsByStrokeIdentifier, v12, v11, v13, v14, v15);
  v89 = objc_msgSend_unsignedIntegerValue(v16, v17, v18, v19, v20, v21);

  midYPositionByStrokeIdentifier = selfCopy->_midYPositionByStrokeIdentifier;
  v28 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v23, v24, v25, v26, v27);
  v33 = objc_msgSend_objectForKeyedSubscript_(midYPositionByStrokeIdentifier, v29, v28, v30, v31, v32);

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = selfCopy->_nontextCandidates;
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v92, v96, 16, v35);
  if (v41)
  {
    v42 = *v93;
    do
    {
      v43 = 0;
      do
      {
        if (*v93 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v92 + 1) + 8 * v43);
        v45 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v36, v37, v38, v39, v40);
        if (v44)
        {
          v46 = *(v44 + 88);
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;
        isEqual = objc_msgSend_isEqual_(v45, v48, v47, v49, v50, v51);

        if ((isEqual & 1) == 0)
        {
          if (!v33 || (objc_msgSend_floatValue(v33, v53, v54, v55, v56, v57), (objc_msgSend_canBeSupportedByStrokeAtYPosition_(v44, v59, v60, v61, v62, v63, v58) & 1) != 0))
          {
            v66 = objc_msgSend_objectForKey_(selfCopy->_substrokesByStrokeIdentifier, v53, v45, v55, v56, v57);
            if (!v66)
            {
              v67 = objc_opt_class();
              v66 = objc_msgSend_substrokesForStroke_(v67, v68, strokeCopy, v69, v70, v71);
              objc_msgSend_setObject_forKey_(selfCopy->_substrokesByStrokeIdentifier, v72, v66, v45, v73, v74);
            }

            if (objc_msgSend_adjustSupportByAddingStroke_consistingOfSubstrokes_strokeClassification_(v44, v64, strokeCopy, v66, v89, v65))
            {
              if (v44)
              {
                v79 = *(v44 + 40);
                v80 = 0.7;
                if (v79 != 6)
                {
                  v80 = 0.22;
                }

                if (*(v44 + 24) < v80)
                {
                  v79 = *(v44 + 32);
                }
              }

              else
              {
                v79 = 0;
              }

              v81 = selfCopy->_strokeClassificationsByStrokeIdentifier;
              v82 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v75, v79, v76, v77, v78);
              if (v44)
              {
                v83 = *(v44 + 88);
              }

              else
              {
                v83 = 0;
              }

              v84 = v83;
              objc_msgSend_setObject_forKey_(v81, v85, v82, v84, v86, v87);
            }
          }
        }

        ++v43;
      }

      while (v41 != v43);
      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v92, v96, 16, v40);
      v41 = v88;
    }

    while (v88);
  }
}

- (void)updateScriptByAddingNonClutterStroke:(id)stroke withClassification:(int64_t)classification classificationRawResult:(id)result
{
  v51 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  resultCopy = result;
  if (resultCopy)
  {
    v15 = objc_msgSend_encodedStrokeIdentifier(strokeCopy, v9, v10, v11, v12, v13);
    v20 = objc_msgSend_objectForKey_(self->_substrokesByStrokeIdentifier, v16, v15, v17, v18, v19);

    if (!v20)
    {
      v25 = objc_opt_class();
      v30 = objc_msgSend_substrokesForStroke_(v25, v26, strokeCopy, v27, v28, v29);
      objc_msgSend_setObject_forKey_(self->_substrokesByStrokeIdentifier, v31, v30, v15, v32, v33);
    }

    scriptClassificationsByStrokeIdentifier = self->_scriptClassificationsByStrokeIdentifier;
    v35 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, classification, v22, v23, v24);
    objc_msgSend_setObject_forKey_(scriptClassificationsByStrokeIdentifier, v36, v35, v15, v37, v38);

    objc_msgSend_setObject_forKey_(self->_scriptClassificationRawResultsByStrokeIdentifier, v39, resultCopy, v15, v40, v41);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v42 = qword_1EA84DCB0;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_msgSend_description(strokeCopy, v43, v44, v45, v46, v47);
      v49 = 138412290;
      v50 = v48;
      _os_log_impl(&dword_18366B000, v42, OS_LOG_TYPE_ERROR, "Error: trying to set a nil object as scriptClassificationRawResult for added stroke %@", &v49, 0xCu);
    }
  }
}

- (void)updateByAddingClutterStroke:(id)stroke
{
  v28 = objc_msgSend_encodedStrokeIdentifier(stroke, a2, stroke, v3, v4, v5);
  objc_msgSend_setObject_forKey_(self->_strokeClassificationsByStrokeIdentifier, v7, &unk_1EF1EDB10, v28, v8, v9);
  objc_msgSend_setObject_forKey_(self->_scriptClassificationsByStrokeIdentifier, v10, &unk_1EF1EDB10, v28, v11, v12);
  v18 = objc_msgSend_defaultScriptClassificationDictionary(CHStrokeUtilities, v13, v14, v15, v16, v17);
  v19 = [CHScriptClassificationRawResult alloc];
  v24 = objc_msgSend_initWithProbabilityByScriptClassifications_(v19, v20, v18, v21, v22, v23);
  objc_msgSend_setObject_forKey_(self->_scriptClassificationRawResultsByStrokeIdentifier, v25, v24, v28, v26, v27);
}

- (void)updateStrokeIdentifier:(id)identifier withClassificationRawResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  resultCopy = result;
  if (resultCopy)
  {
    objc_msgSend_setObject_forKey_(self->_scriptClassificationRawResultsByStrokeIdentifier, v7, resultCopy, identifierCopy, v8, v9);
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v11 = qword_1EA84DCB0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_msgSend_description(identifierCopy, v12, v13, v14, v15, v16);
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&dword_18366B000, v11, OS_LOG_TYPE_ERROR, "Error: trying to set a nil object as scriptClassificationRawResult for stroke identifier %@", &v18, 0xCu);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHStrokeClassificationResult alloc];
  strokeClassificationsByStrokeIdentifier = self->_strokeClassificationsByStrokeIdentifier;
  scriptClassificationsByStrokeIdentifier = self->_scriptClassificationsByStrokeIdentifier;
  scriptClassificationRawResultsByStrokeIdentifier = self->_scriptClassificationRawResultsByStrokeIdentifier;
  substrokesByStrokeIdentifier = self->_substrokesByStrokeIdentifier;
  midYPositionByStrokeIdentifier = self->_midYPositionByStrokeIdentifier;
  nontextCandidates = self->_nontextCandidates;

  return objc_msgSend_initWithStrokeClassificationsByStrokeIdentifier_scriptClassificationsByStrokeIdentifier_scriptClassificationRawResultsByStrokeIdentifier_substrokesByStrokeIdentifier_midYPositionByStrokeIdentifier_nontextCandidates_(v4, v5, strokeClassificationsByStrokeIdentifier, scriptClassificationsByStrokeIdentifier, scriptClassificationRawResultsByStrokeIdentifier, substrokesByStrokeIdentifier, midYPositionByStrokeIdentifier, nontextCandidates);
}

@end