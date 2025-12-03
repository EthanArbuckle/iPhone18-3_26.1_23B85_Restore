@interface CHRecognitionSessionAutoRefineResult
- (CHRecognitionSessionAutoRefineResult)initWithStrokeGroupResult:(id)result strokeGroup:(id)group textResult:(id)textResult refinedColumns:(id)columns strokeProvider:(id)provider;
- (id)orderedStrokesDrawingForToken:(id)token;
@end

@implementation CHRecognitionSessionAutoRefineResult

- (CHRecognitionSessionAutoRefineResult)initWithStrokeGroupResult:(id)result strokeGroup:(id)group textResult:(id)textResult refinedColumns:(id)columns strokeProvider:(id)provider
{
  v162 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  groupCopy = group;
  textResultCopy = textResult;
  columnsCopy = columns;
  providerCopy = provider;
  v159.receiver = self;
  v159.super_class = CHRecognitionSessionAutoRefineResult;
  v15 = [(CHRecognitionSessionAutoRefineResult *)&v159 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v15->_strokeGroup, group);
  objc_storeStrong(&v16->_strokeGroupResult, result);
  objc_storeStrong(&v16->_textResult, textResult);
  v22 = objc_msgSend_inputStrokeIdentifiers(v16->_strokeGroupResult, v17, v18, v19, v20, v21);
  v26 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v23, v22, providerCopy, v24, v25);
  strokeIdentifiers = v16->_strokeIdentifiers;
  v16->_strokeIdentifiers = v26;

  obj = objc_msgSend_array(MEMORY[0x1E695DF70], v28, v29, v30, v31, v32);
  v38 = objc_msgSend_inputStrokeIdentifiers(v16->_strokeGroupResult, v33, v34, v35, v36, v37);
  v42 = objc_msgSend_strokesForIdentifiers_inStrokeProvider_(CHStrokeUtilities, v39, v38, providerCopy, v40, v41);

  v48 = objc_msgSend_count(v42, v43, v44, v45, v46, v47);
  v54 = objc_msgSend_inputStrokeIdentifiers(v16->_strokeGroupResult, v49, v50, v51, v52, v53);
  LOBYTE(v48) = v48 == objc_msgSend_count(v54, v55, v56, v57, v58, v59);

  if ((v48 & 1) == 0)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v124 = qword_1EA84DC60;
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      v130 = objc_msgSend_count(v42, v125, v126, v127, v128, v129);
      v136 = objc_msgSend_inputStrokeIdentifiers(v16->_strokeGroupResult, v131, v132, v133, v134, v135);
      v142 = objc_msgSend_count(v136, v137, v138, v139, v140, v141);
      *buf = 134218240;
      *&buf[4] = v130;
      *&buf[12] = 2048;
      *&buf[14] = v142;
      _os_log_impl(&dword_18366B000, v124, OS_LOG_TYPE_ERROR, "AutoRefine result not created: Unable to access all strokes from the previous stroke group result from the last stroke provider: %ld strokes recovered out of %ld", buf, 0x16u);
    }

    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v161 = 1;
  textResult = v16->_textResult;
  v155[0] = MEMORY[0x1E69E9820];
  v155[1] = 3221225472;
  v155[2] = sub_18374CFB0;
  v155[3] = &unk_1E6DDD3B8;
  v61 = v42;
  v156 = v61;
  v62 = obj;
  v157 = v62;
  v158 = buf;
  objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(textResult, v63, v155, v64, v65, v66);
  if ((*(*&buf[8] + 24) & 1) == 0)
  {

    _Block_object_dispose(buf, 8);
LABEL_12:
    v123 = 0;
    goto LABEL_13;
  }

  objc_storeStrong(&v16->_tokenOriginalBounds, obj);
  v72 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v67, v68, v69, v70, v71);
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = sub_18374D1F4;
  v153[3] = &unk_1E6DDD3E0;
  v73 = v72;
  v154 = v73;
  v144 = v73;
  objc_msgSend_enumerateObjectsUsingBlock_(v61, v74, v153, v75, v76, v77);
  v83 = objc_msgSend_copy(v73, v78, v79, v80, v81, v82);
  syntheticStrokeIndexes = v16->_syntheticStrokeIndexes;
  v16->_syntheticStrokeIndexes = v83;

  objc_storeStrong(&v16->_refinedTokenColumns, columns);
  v85 = MEMORY[0x1E695DF90];
  v91 = objc_msgSend_count(v16->_strokeIdentifiers, v86, v87, v88, v89, v90);
  v96 = objc_msgSend_dictionaryWithCapacity_(v85, v92, v91, v93, v94, v95);
  v97 = v16->_strokeIdentifiers;
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = sub_18374D264;
  v151[3] = &unk_1E6DDD408;
  v98 = v96;
  v152 = v98;
  objc_msgSend_enumerateObjectsUsingBlock_(v97, v99, v151, v100, v101, v102);
  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = sub_18374D304;
  v149[3] = &unk_1E6DDD430;
  v103 = providerCopy;
  v150 = v103;
  v108 = objc_msgSend_keysSortedByValueUsingComparator_(v98, v104, v149, v105, v106, v107);
  recognitionIndexesToOrderedIndexes = v16->_recognitionIndexesToOrderedIndexes;
  v16->_recognitionIndexesToOrderedIndexes = v108;

  v110 = [CHStrokeGroupingManager alloc];
  v116 = objc_msgSend_orderedLocales(resultCopy, v111, v112, v113, v114, v115);
  isInlineContinuousMode_inlineContinuousModeTargets = objc_msgSend_initWithStrokeProvider_locales_isInlineContinuousMode_inlineContinuousModeTargets_(v110, v117, v103, v116, 0, 0);

  v121 = objc_msgSend_simpleDrawingForStrokeGroup_originalDrawing_orderedStrokesIDs_(isInlineContinuousMode_inlineContinuousModeTargets, v119, groupCopy, 0, 0, v120);
  drawing = v16->_drawing;
  v16->_drawing = v121;

  _Block_object_dispose(buf, 8);
LABEL_5:
  v123 = v16;
LABEL_13:

  return v123;
}

- (id)orderedStrokesDrawingForToken:(id)token
{
  recognitionIndexesToOrderedIndexes = self->_recognitionIndexesToOrderedIndexes;
  v8 = objc_msgSend_strokeIndexes(token, a2, token, v3, v4, v5);
  v13 = objc_msgSend_objectsAtIndexes_(recognitionIndexesToOrderedIndexes, v9, v8, v10, v11, v12);

  v18 = objc_msgSend_sortedArrayUsingSelector_(v13, v14, sel_compare_, v15, v16, v17);
  v24 = objc_msgSend_drawing(self, v19, v20, v21, v22, v23);
  v29 = objc_msgSend_drawingWithStrokesFromIndexArray_(v24, v25, v18, v26, v27, v28);

  return v29;
}

@end