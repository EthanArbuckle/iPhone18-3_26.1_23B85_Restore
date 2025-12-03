@interface CHOpeningClosingCharacterMatchingStep
- (CHOpeningClosingCharacterMatchingStep)init;
- (id)process:(id)process options:(id)options;
@end

@implementation CHOpeningClosingCharacterMatchingStep

- (CHOpeningClosingCharacterMatchingStep)init
{
  v34.receiver = self;
  v34.super_class = CHOpeningClosingCharacterMatchingStep;
  v6 = [(CHOpeningClosingCharacterMatchingStep *)&v34 init];
  if (v6)
  {
    v7 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v2, @"<([{＜（［｛"), v3, v4, v5;
    openingBracketCharacters = v6->_openingBracketCharacters;
    v6->_openingBracketCharacters = v7;

    v13 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v9, @">]}＞）］｝"), v10, v11, v12);
    closingBracketCharacters = v6->_closingBracketCharacters;
    v6->_closingBracketCharacters = v13;

    v19 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v15, @"‘“「｢", v16, v17, v18);
    openingQuoteCharacters = v6->_openingQuoteCharacters;
    v6->_openingQuoteCharacters = v19;

    v25 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v21, @"’”」｣", v22, v23, v24);
    closingQuoteCharacters = v6->_closingQuoteCharacters;
    v6->_closingQuoteCharacters = v25;

    v31 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v27, @"＂＇'", v28, v29, v30);
    symmetricQuoteCharacters = v6->_symmetricQuoteCharacters;
    v6->_symmetricQuoteCharacters = v31;
  }

  return v6;
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
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHOpeningClosingCharacterMatchingStep is running", buf, 2u);
  }

  v182 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10, v11);
  v181 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13, v14, v15, v16);
  v22 = 0;
  while (1)
  {
    v23 = objc_msgSend_result(processCopy, v17, v18, v19, v20, v21);
    v29 = objc_msgSend_transcriptionPaths(v23, v24, v25, v26, v27, v28);
    v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

    if (v22 >= v35)
    {
      break;
    }

    v41 = objc_msgSend_result(processCopy, v36, v37, v38, v39, v40);
    v47 = objc_msgSend_transcriptionPaths(v41, v42, v43, v44, v45, v46);
    v48 = v22;
    v53 = objc_msgSend_objectAtIndexedSubscript_(v47, v49, v22, v50, v51, v52);

    v59 = objc_msgSend_array(MEMORY[0x1E695DF70], v54, v55, v56, v57, v58);
    v184 = objc_msgSend_array(MEMORY[0x1E695DF70], v60, v61, v62, v63, v64);
    v70 = objc_msgSend_leftContext(processCopy, v65, v66, v67, v68, v69);
    v185 = v53;
    v76 = objc_msgSend_leftContext(processCopy, v71, v72, v73, v74, v75);
    v82 = objc_msgSend_length(v76, v77, v78, v79, v80, v81);
    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = sub_18399C884;
    v192[3] = &unk_1E6DE0880;
    v192[4] = self;
    v83 = v59;
    v193 = v83;
    v84 = v184;
    v194 = v84;
    objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v70, v85, 0, v82, 2, v192);

    v183 = objc_msgSend_array(MEMORY[0x1E695DF70], v86, v87, v88, v89, v90);
    v96 = objc_msgSend_array(MEMORY[0x1E695DF70], v91, v92, v93, v94, v95);
    v97 = processCopy;
    v103 = objc_msgSend_result(processCopy, v98, v99, v100, v101, v102);
    v109 = objc_msgSend_length(v185, v104, v105, v106, v107, v108);
    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = sub_18399CA90;
    v187[3] = &unk_1E6DDF0C0;
    v187[4] = self;
    v110 = v83;
    v188 = v110;
    v111 = v84;
    v189 = v111;
    v112 = v183;
    v190 = v112;
    v113 = v96;
    v191 = v113;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v103, v114, v185, 0, v109, v187);

    objc_msgSend_addObject_(v182, v115, v113, v116, v117, v118);
    v124 = objc_msgSend_result(processCopy, v119, v120, v121, v122, v123);
    v130 = objc_msgSend_transcriptionPathScores(v124, v125, v126, v127, v128, v129);
    v135 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, v48, v132, v133, v134);
    objc_msgSend_addObject_(v181, v136, v135, v137, v138, v139);

    if ((objc_msgSend_modifiesOriginalTokens(self, v140, v141, v142, v143, v144) & 1) == 0 && (objc_msgSend_isEqualToArray_(v112, v145, v113, v146, v147, v148) & 1) == 0)
    {
      objc_msgSend_addObject_(v182, v149, v112, v150, v151, v152);
      v158 = objc_msgSend_result(v97, v153, v154, v155, v156, v157);
      v164 = objc_msgSend_transcriptionPathScores(v158, v159, v160, v161, v162, v163);
      v169 = objc_msgSend_objectAtIndexedSubscript_(v164, v165, v48, v166, v167, v168);
      objc_msgSend_addObject_(v181, v170, v169, v171, v172, v173);
    }

    v22 = v48 + 1;
    processCopy = v97;
  }

  v174 = objc_msgSend_result(processCopy, v36, v37, v38, v39, v40);
  v178 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v174, v175, v182, v181, v176, v177);
  if (processCopy)
  {
    objc_storeStrong(processCopy + 3, v178);
  }

  return processCopy;
}

@end