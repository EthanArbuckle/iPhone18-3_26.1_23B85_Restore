@interface CHTransliterateChineseJapaneseStep
- (CHTransliterateChineseJapaneseStep)initWithTransliterateSentences:(BOOL)sentences;
- (id)process:(id)process options:(id)options;
- (void)dealloc;
@end

@implementation CHTransliterateChineseJapaneseStep

- (CHTransliterateChineseJapaneseStep)initWithTransliterateSentences:(BOOL)sentences
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CHTransliterateChineseJapaneseStep;
  result = [(CHTransliterateChineseJapaneseStep *)&v7 init];
  if (result)
  {
    v5 = result;
    v8 = *"S";
    v9[0] = *L"ed-Traditional";
    *(v9 + 14) = *L"itional";
    v6 = utrans_openU();
    result = v5;
    v5->_icuTransliterator = v6;
    v5->_transliterateSentences = sentences;
  }

  return result;
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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHTransliterateChineseJapaneseStep is running", buf, 2u);
  }

  v7 = 0x1E695D000uLL;
  v171 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v170 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15, v16, v17);
  for (i = 0; ; ++i)
  {
    v24 = objc_msgSend_result(processCopy, v18, v19, v20, v21, v22);
    v30 = objc_msgSend_transcriptionPaths(v24, v25, v26, v27, v28, v29);
    v36 = objc_msgSend_count(v30, v31, v32, v33, v34, v35);

    if (i >= v36)
    {
      break;
    }

    v42 = objc_msgSend_result(processCopy, v37, v38, v39, v40, v41);
    v48 = objc_msgSend_transcriptionPaths(v42, v43, v44, v45, v46, v47);
    v176 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, i, v50, v51, v52);

    v175 = objc_msgSend_array(*(v7 + 3952), v53, v54, v55, v56, v57);
    v174 = objc_msgSend_array(*(v7 + 3952), v58, v59, v60, v61, v62);
    v173 = objc_msgSend_array(*(v7 + 3952), v63, v64, v65, v66, v67);
    v172 = objc_msgSend_array(*(v7 + 3952), v68, v69, v70, v71, v72);
    v78 = objc_msgSend_result(processCopy, v73, v74, v75, v76, v77);
    v84 = objc_msgSend_result(processCopy, v79, v80, v81, v82, v83);
    v85 = v7;
    v91 = objc_msgSend_tokenColumnCount(v84, v86, v87, v88, v89, v90);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = sub_1839A424C;
    v177[3] = &unk_1E6DDF0C0;
    v92 = v173;
    v178 = v92;
    v93 = v172;
    v179 = v93;
    v94 = v175;
    v180 = v94;
    v95 = v174;
    v181 = v95;
    selfCopy = self;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v78, v96, v176, 0, v91, v177);

    if (objc_msgSend_count(v92, v97, v98, v99, v100, v101))
    {
      sub_183992A0C(CHPostprocessingStep, v92, v93, v94, v95);
    }

    if (objc_msgSend_count(v94, v102, v103, v104, v105, v106))
    {
      objc_msgSend_addObject_(v171, v107, v94, v109, v110, v111);
      v117 = objc_msgSend_result(processCopy, v112, v113, v114, v115, v116);
      v123 = objc_msgSend_transcriptionPathScores(v117, v118, v119, v120, v121, v122);
      v128 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, i, v125, v126, v127);
      objc_msgSend_addObject_(v170, v129, v128, v130, v131, v132);
    }

    if (objc_msgSend_count(v95, v107, v108, v109, v110, v111))
    {
      if ((objc_msgSend_isEqual_(v95, v133, v94, v134, v135, v136) & 1) == 0)
      {
        objc_msgSend_addObject_(v171, v137, v95, v138, v139, v140);
        v146 = objc_msgSend_result(processCopy, v141, v142, v143, v144, v145);
        v152 = objc_msgSend_transcriptionPathScores(v146, v147, v148, v149, v150, v151);
        v157 = objc_msgSend_objectAtIndexedSubscript_(v152, v153, i, v154, v155, v156);
        objc_msgSend_addObject_(v170, v158, v157, v159, v160, v161);
      }
    }

    v7 = v85;
  }

  v162 = objc_msgSend_result(processCopy, v37, v38, v39, v40, v41);
  v166 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v162, v163, v171, v170, v164, v165);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v166);
  }

  return processCopy;
}

- (void)dealloc
{
  if (self->_icuTransliterator)
  {
    utrans_close();
    self->_icuTransliterator = 0;
  }

  v3.receiver = self;
  v3.super_class = CHTransliterateChineseJapaneseStep;
  [(CHTransliterateChineseJapaneseStep *)&v3 dealloc];
}

@end