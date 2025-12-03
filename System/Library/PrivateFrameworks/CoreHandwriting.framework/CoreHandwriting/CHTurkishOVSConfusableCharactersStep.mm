@interface CHTurkishOVSConfusableCharactersStep
- (CHTurkishOVSConfusableCharactersStep)initWithOVSStringChecker:(id)checker staticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon;
- (id)process:(id)process options:(id)options;
@end

@implementation CHTurkishOVSConfusableCharactersStep

- (CHTurkishOVSConfusableCharactersStep)initWithOVSStringChecker:(id)checker staticLexicon:(_LXLexicon *)lexicon customLexicon:(_LXLexicon *)customLexicon
{
  checkerCopy = checker;
  v13.receiver = self;
  v13.super_class = CHTurkishOVSConfusableCharactersStep;
  v10 = [(CHTurkishOVSConfusableCharactersStep *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_ovsStringChecker, checker);
    v11->_staticLexicon = lexicon;
    v11->_customLexicon = customLexicon;
  }

  return v11;
}

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHTurkishOVSConfusableCharactersStep is running", buf, 2u);
  }

  v12 = objc_msgSend_drawing(processCopy, v7, v8, v9, v10, v11);

  if (v12)
  {
    v126 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17, optionsCopy);
    v125 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19, v20, v21, v22);
    for (i = 0; ; ++i)
    {
      v29 = objc_msgSend_result(processCopy, v23, v24, v25, v26, v27);
      v35 = objc_msgSend_transcriptionPaths(v29, v30, v31, v32, v33, v34);
      v41 = objc_msgSend_count(v35, v36, v37, v38, v39, v40);

      if (i >= v41)
      {
        break;
      }

      v47 = objc_msgSend_result(processCopy, v42, v43, v44, v45, v46);
      v53 = objc_msgSend_transcriptionPaths(v47, v48, v49, v50, v51, v52);
      v58 = objc_msgSend_objectAtIndexedSubscript_(v53, v54, i, v55, v56, v57);

      v64 = objc_msgSend_array(MEMORY[0x1E695DF70], v59, v60, v61, v62, v63);
      v70 = objc_msgSend_result(processCopy, v65, v66, v67, v68, v69);
      v76 = objc_msgSend_result(processCopy, v71, v72, v73, v74, v75);
      v82 = objc_msgSend_tokenColumns(v76, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_count(v82, v83, v84, v85, v86, v87);
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = sub_1839B49BC;
      v127[3] = &unk_1E6DE0AD8;
      v127[4] = self;
      v89 = processCopy;
      v128 = v89;
      v90 = v64;
      v129 = v90;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v70, v91, v58, 0, v88, v127);

      objc_msgSend_addObject_(v126, v92, v90, v93, v94, v95);
      v101 = objc_msgSend_result(v89, v96, v97, v98, v99, v100);
      v107 = objc_msgSend_transcriptionPathScores(v101, v102, v103, v104, v105, v106);
      v112 = objc_msgSend_objectAtIndexedSubscript_(v107, v108, i, v109, v110, v111);
      objc_msgSend_addObject_(v125, v113, v112, v114, v115, v116);
    }

    v117 = objc_msgSend_result(processCopy, v42, v43, v44, v45, v46);
    v121 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v117, v118, v126, v125, v119, v120);
    if (processCopy)
    {
      objc_storeStrong(processCopy + 3, v121);
    }
  }

  return processCopy;
}

@end