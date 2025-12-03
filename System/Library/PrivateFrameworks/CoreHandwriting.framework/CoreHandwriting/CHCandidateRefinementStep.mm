@interface CHCandidateRefinementStep
- (CHCandidateRefinementStep)initWithShouldKeepOutOfPatternCandidates:(BOOL)candidates shouldKeepDuplicateTokenIDs:(BOOL)ds shouldKeepOutOfLexiconAlternatives:(BOOL)alternatives shouldKeepAlternativeLengths:(BOOL)lengths shouldKeepSubstrings:(BOOL)substrings shouldKeepOriginalSpelling:(BOOL)spelling;
- (id)process:(id)process options:(id)options;
@end

@implementation CHCandidateRefinementStep

- (CHCandidateRefinementStep)initWithShouldKeepOutOfPatternCandidates:(BOOL)candidates shouldKeepDuplicateTokenIDs:(BOOL)ds shouldKeepOutOfLexiconAlternatives:(BOOL)alternatives shouldKeepAlternativeLengths:(BOOL)lengths shouldKeepSubstrings:(BOOL)substrings shouldKeepOriginalSpelling:(BOOL)spelling
{
  v15.receiver = self;
  v15.super_class = CHCandidateRefinementStep;
  result = [(CHCandidateRefinementStep *)&v15 init];
  if (result)
  {
    result->_shouldKeepOutOfPatternCandidates = candidates;
    result->_shouldKeepDuplicateTokenIDs = ds;
    result->_shouldKeepOutOfLexiconAlternatives = alternatives;
    result->_shouldKeepAlternativeLengths = lengths;
    result->_shouldKeepSubstrings = substrings;
    result->_shouldKeepOriginalSpelling = spelling;
  }

  return result;
}

- (id)process:(id)process options:(id)options
{
  v89 = *MEMORY[0x1E69E9840];
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v8 = qword_1EA84DC58;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v8, OS_LOG_TYPE_DEBUG, "CHCandidateRefinementStep is running", buf, 2u);
  }

  v14 = objc_msgSend_result(processCopy, v9, v10, v11, v12, v13);
  objc_msgSend_filterCandidatesWithOutOfPattern_duplicateTokenIDs_keepOutOfLexiconAlternatives_keepAlternativeLengths_keepSubstrings_shouldKeepOriginalSpelling_(v14, v15, self->_shouldKeepOutOfPatternCandidates, self->_shouldKeepDuplicateTokenIDs, self->_shouldKeepOutOfLexiconAlternatives, self->_shouldKeepAlternativeLengths, self->_shouldKeepSubstrings, self->_shouldKeepOriginalSpelling);

  v16 = objc_opt_class();
  if (objc_msgSend_shouldAdjustColumnsFromPostprocessingStepOptions_(v16, v17, optionsCopy, v18, v19, v20))
  {
    v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v21, v22, v23, v24, v25);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v32 = objc_msgSend_result(processCopy, v27, v28, v29, v30, v31, 0);
    v38 = objc_msgSend_transcriptionPaths(v32, v33, v34, v35, v36, v37);

    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v83, v88, 16, v40);
    if (v46)
    {
      v47 = *v84;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v84 != v47)
          {
            objc_enumerationMutation(v38);
          }

          v49 = *(*(&v83 + 1) + 8 * i);
          v50 = objc_msgSend_result(processCopy, v41, v42, v43, v44, v45);
          v55 = objc_msgSend_tokensFromTranscriptionPath_(v50, v51, v49, v52, v53, v54);

          objc_msgSend_addObject_(v26, v56, v55, v57, v58, v59);
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v83, v88, 16, v45);
      }

      while (v46);
    }

    v65 = objc_msgSend_result(processCopy, v60, v61, v62, v63, v64);
    v71 = objc_msgSend_result(processCopy, v66, v67, v68, v69, v70);
    v77 = objc_msgSend_transcriptionPathScores(v71, v72, v73, v74, v75, v76);
    v81 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v65, v78, v26, v77, v79, v80);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, v81);
    }
  }

  return processCopy;
}

@end