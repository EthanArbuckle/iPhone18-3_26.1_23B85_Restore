@interface CHTransliterateHalfWidthPunctuationStep
- (CHTransliterateHalfWidthPunctuationStep)initWithShouldAddAlternatives:(BOOL)a3;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHTransliterateHalfWidthPunctuationStep

- (CHTransliterateHalfWidthPunctuationStep)initWithShouldAddAlternatives:(BOOL)a3
{
  v47.receiver = self;
  v47.super_class = CHTransliterateHalfWidthPunctuationStep;
  v4 = [(CHTransliterateHalfWidthPunctuationStep *)&v47 init];
  v9 = v4;
  if (v4)
  {
    v4->_shouldAddAlternatives = a3;
    v10 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v5, @"@#＠＃", v6, v7, v8);
    contextInvariantCharacterSet = v9->_contextInvariantCharacterSet;
    v9->_contextInvariantCharacterSet = v10;

    v16 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v12, @"|｜~～+=$＋＝＄([{<（［｛＜‘“＂＇'「｢『〈〔〘《【〖"), v13, v14, v15;
    forwardLookingCharacterSet = v9->_forwardLookingCharacterSet;
    v9->_forwardLookingCharacterSet = v16;

    v23 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AD48], v18, v19, v20, v21, v22);
    objc_msgSend_removeCharactersInString_(v23, v24, @"@#＠＃", v25, v26, v27);
    objc_msgSend_addCharactersInString_(v23, v28, @"|｜~～>＞", v29, v30, v31);
    v37 = objc_msgSend_copy(v23, v32, v33, v34, v35, v36);
    backwardLookingCharacterSet = v9->_backwardLookingCharacterSet;
    v9->_backwardLookingCharacterSet = v37;

    v44 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
    widthAlternativeCharacterSet = v9->_widthAlternativeCharacterSet;
    v9->_widthAlternativeCharacterSet = v44;
  }

  return v9;
}

- (id)process:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC58;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHTransliterateHalfWidthPunctuationStep is running", buf, 2u);
  }

  v8 = 0x1E695D000uLL;
  v211 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v210 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v209 = v6;
  v24 = objc_msgSend_leftContext(v5, v19, v20, v21, v22, v23);
  v30 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v25, v26, v27, v28, v29);
  v212 = objc_msgSend_stringByTrimmingCharactersInSet_(v24, v31, v30, v32, v33, v34);

  for (i = 0; ; ++i)
  {
    v41 = objc_msgSend_result(v5, v35, v36, v37, v38, v39);
    v47 = objc_msgSend_transcriptionPaths(v41, v42, v43, v44, v45, v46);
    v53 = objc_msgSend_count(v47, v48, v49, v50, v51, v52);

    if (i >= v53)
    {
      break;
    }

    *buf = 0;
    v225 = buf;
    v226 = 0x3032000000;
    v227 = sub_183996F80;
    v228 = sub_183996F90;
    v229 = &stru_1EF1C0318;
    if (objc_msgSend_length(v212, v54, v55, v56, v57, v58))
    {
      v64 = objc_msgSend_lastComposedCharacter(v212, v59, v60, v61, v62, v63);
      v65 = *(v225 + 5);
      *(v225 + 5) = v64;
    }

    v66 = *(v225 + 5);
    v67 = objc_msgSend_newlineCharacterSet(MEMORY[0x1E696AB08], v59, v60, v61, v62, v63);
    v72 = objc_msgSend_rangeOfCharacterFromSet_(v66, v68, v67, v69, v70, v71);

    if (v72 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v78 = *(v225 + 5);
      *(v225 + 5) = &stru_1EF1C0318;
    }

    v79 = objc_msgSend_result(v5, v73, v74, v75, v76, v77);
    v85 = objc_msgSend_transcriptionPaths(v79, v80, v81, v82, v83, v84);
    v90 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, i, v87, v88, v89);

    v215 = objc_msgSend_array(*(v8 + 3952), v91, v92, v93, v94, v95);
    v214 = objc_msgSend_array(*(v8 + 3952), v96, v97, v98, v99, v100);
    v213 = objc_msgSend_array(*(v8 + 3952), v101, v102, v103, v104, v105);
    v111 = objc_msgSend_result(v5, v106, v107, v108, v109, v110);
    v112 = v8;
    v118 = objc_msgSend_length(v90, v113, v114, v115, v116, v117);
    v217[0] = MEMORY[0x1E69E9820];
    v217[1] = 3221225472;
    v217[2] = sub_18399B960;
    v217[3] = &unk_1E6DE0858;
    v217[4] = self;
    v218 = @"#";
    v223 = buf;
    v219 = @"＃";
    v119 = v215;
    v220 = v119;
    v120 = v214;
    v221 = v120;
    v121 = v213;
    v222 = v121;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v111, v122, v90, 0, v118, v217);

    objc_msgSend_addObject_(v211, v123, v120, v124, v125, v126);
    v132 = objc_msgSend_result(v5, v127, v128, v129, v130, v131);
    v138 = objc_msgSend_transcriptionPathScores(v132, v133, v134, v135, v136, v137);
    v143 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, i, v140, v141, v142);
    objc_msgSend_addObject_(v210, v144, v143, v145, v146, v147);

    if ((objc_msgSend_modifiesOriginalTokens(self, v148, v149, v150, v151, v152) & 1) == 0 && (objc_msgSend_isEqualToArray_(v119, v153, v120, v154, v155, v156) & 1) == 0)
    {
      objc_msgSend_addObject_(v211, v153, v119, v154, v155, v156);
      v162 = objc_msgSend_result(v5, v157, v158, v159, v160, v161);
      v168 = objc_msgSend_transcriptionPathScores(v162, v163, v164, v165, v166, v167);
      v173 = objc_msgSend_objectAtIndexedSubscript_(v168, v169, i, v170, v171, v172);
      objc_msgSend_addObject_(v210, v174, v173, v175, v176, v177);
    }

    if (self && self->_shouldAddAlternatives && (objc_msgSend_isEqualToArray_(v121, v153, v120, v154, v155, v156) & 1) == 0)
    {
      objc_msgSend_addObject_(v211, v178, v121, v179, v180, v181);
      v187 = objc_msgSend_result(v5, v182, v183, v184, v185, v186);
      v193 = objc_msgSend_transcriptionPathScores(v187, v188, v189, v190, v191, v192);
      v198 = objc_msgSend_objectAtIndexedSubscript_(v193, v194, i, v195, v196, v197);
      objc_msgSend_addObject_(v210, v199, v198, v200, v201, v202);
    }

    _Block_object_dispose(buf, 8);
    v8 = v112;
  }

  v203 = objc_msgSend_result(v5, v54, v55, v56, v57, v58);
  v207 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v203, v204, v211, v210, v205, v206);
  if (v5)
  {
    objc_storeStrong(v5 + 3, v207);
  }

  return v5;
}

@end