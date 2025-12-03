@interface CHNumberFieldResultReorderingStep
- (id)initForDigitFields;
- (id)initForPhoneNumberFields;
- (id)process:(id)process options:(id)options;
@end

@implementation CHNumberFieldResultReorderingStep

- (id)initForPhoneNumberFields
{
  v32.receiver = self;
  v32.super_class = CHNumberFieldResultReorderingStep;
  v7 = [(CHNumberFieldResultReorderingStep *)&v32 init];
  if (v7)
  {
    v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AD48], v2, v3, v4, v5, v6);
    v14 = objc_msgSend_letterCharacterSet(MEMORY[0x1E696AB08], v9, v10, v11, v12, v13);
    objc_msgSend_formUnionWithCharacterSet_(v8, v15, v14, v16, v17, v18);

    v23 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v19, @"+-#*',. ", v20, v21, v22);
    objc_msgSend_formUnionWithCharacterSet_(v8, v24, v23, v25, v26, v27);

    allowedCharacters = v7->_allowedCharacters;
    v7->_allowedCharacters = v8;
    v29 = v8;

    characterReplacements = v7->_characterReplacements;
    v7->_characterReplacements = &unk_1EF1EBC98;
  }

  return v7;
}

- (id)initForDigitFields
{
  v22.receiver = self;
  v22.super_class = CHNumberFieldResultReorderingStep;
  v7 = [(CHNumberFieldResultReorderingStep *)&v22 init];
  if (v7)
  {
    v8 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x1E696AD48], v2, v3, v4, v5, v6);
    v13 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v9, @",.-", v10, v11, v12);
    objc_msgSend_formUnionWithCharacterSet_(v8, v14, v13, v15, v16, v17);

    allowedCharacters = v7->_allowedCharacters;
    v7->_allowedCharacters = v8;
    v19 = v8;

    characterReplacements = v7->_characterReplacements;
    v7->_characterReplacements = &unk_1EF1EBCC0;
  }

  return v7;
}

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC58;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHNumberFieldResultReorderingStep is running", buf, 2u);
  }

  v246 = optionsCopy;

  v254[0] = MEMORY[0x1E69E9820];
  v254[1] = 3221225472;
  v254[2] = sub_1839AE9FC;
  v254[3] = &unk_1E6DE0B00;
  v254[4] = self;
  v8 = MEMORY[0x1865E6810](v254);
  v250 = processCopy;
  v14 = objc_msgSend_result(processCopy, v9, v10, v11, v12, v13);
  v15 = v8;
  v245 = v14;
  v249 = v14;
  objc_opt_self();
  v16 = MEMORY[0x1E695DF70];
  v22 = objc_msgSend_tokenColumns(v249, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_count(v22, v23, v24, v25, v26, v27);
  v247 = objc_msgSend_arrayWithCapacity_(v16, v29, v28, v30, v31, v32);

  for (i = 0; ; ++i)
  {
    v39 = objc_msgSend_tokenColumns(v249, v33, v34, v35, v36, v37);
    v45 = objc_msgSend_count(v39, v40, v41, v42, v43, v44);

    if (i >= v45)
    {
      break;
    }

    v51 = objc_msgSend_tokenColumns(v249, v46, v47, v48, v49, v50);
    v56 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, i, v53, v54, v55);

    v57 = MEMORY[0x1E695DF70];
    v252 = v56;
    v63 = objc_msgSend_textTokenRows(v56, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_count(v63, v64, v65, v66, v67, v68);
    v251 = objc_msgSend_arrayWithCapacity_(v57, v70, v69, v71, v72, v73);

    for (j = 0; ; ++j)
    {
      v80 = objc_msgSend_textTokenRows(v252, v74, v75, v76, v77, v78);
      v86 = objc_msgSend_count(v80, v81, v82, v83, v84, v85);

      if (j >= v86)
      {
        break;
      }

      v92 = objc_msgSend_textTokenRows(v252, v87, v88, v89, v90, v91);
      v97 = objc_msgSend_objectAtIndexedSubscript_(v92, v93, j, v94, v95, v96);

      v98 = MEMORY[0x1E695DF70];
      v104 = objc_msgSend_count(v97, v99, v100, v101, v102, v103);
      v114 = objc_msgSend_arrayWithCapacity_(v98, v105, v104, v106, v107, v108);
      for (k = 0; k < objc_msgSend_count(v97, v109, v110, v111, v112, v113); ++k)
      {
        v120 = objc_msgSend_objectAtIndexedSubscript_(v97, v116, k, v117, v118, v119);
        v126 = objc_msgSend_string(v120, v121, v122, v123, v124, v125);
        v132 = objc_msgSend_length(v126, v127, v128, v129, v130, v131);

        v141 = objc_msgSend_objectAtIndexedSubscript_(v97, v133, k, v134, v135, v136);
        if (v132)
        {
          *buf = i;
          v256 = j;
          v257 = k;
          v142 = v15[2](v15, v141, buf);
          objc_msgSend_addObject_(v114, v143, v142, v144, v145, v146);
        }

        else
        {
          objc_msgSend_addObject_(v114, v137, v141, v138, v139, v140);
        }
      }

      objc_msgSend_addObject_(v251, v116, v114, v117, v118, v119);
    }

    v147 = [CHTokenizedResultColumn alloc];
    v152 = objc_msgSend_initWithTokenRows_(v147, v148, v251, v149, v150, v151);
    objc_msgSend_addObject_(v247, v153, v152, v154, v155, v156);
  }

  objc_msgSend_setTokenColumns_(v249, v46, v247, v48, v49, v50);

  if (v250)
  {
    objc_storeStrong(v250 + 3, v245);
  }

  v157 = MEMORY[0x1E695DF70];
  v163 = objc_msgSend_result(v250, v158, v159, v160, v161, v162);
  v169 = objc_msgSend_tokenColumns(v163, v164, v165, v166, v167, v168);
  v175 = objc_msgSend_count(v169, v170, v171, v172, v173, v174);
  v180 = objc_msgSend_arrayWithCapacity_(v157, v176, v175, v177, v178, v179);

  for (m = 0; ; ++m)
  {
    v187 = objc_msgSend_result(v250, v181, v182, v183, v184, v185);
    v193 = objc_msgSend_tokenColumns(v187, v188, v189, v190, v191, v192);
    v199 = objc_msgSend_count(v193, v194, v195, v196, v197, v198);

    if (m >= v199)
    {
      break;
    }

    v205 = objc_msgSend_result(v250, v200, v201, v202, v203, v204);
    v211 = objc_msgSend_tokenColumns(v205, v206, v207, v208, v209, v210);
    v216 = objc_msgSend_objectAtIndexedSubscript_(v211, v212, m, v213, v214, v215);

    v222 = objc_msgSend_textTokenRows(v216, v217, v218, v219, v220, v221);
    v253[0] = MEMORY[0x1E69E9820];
    v253[1] = 3221225472;
    v253[2] = sub_1839AED94;
    v253[3] = &unk_1E6DE0B28;
    v253[4] = self;
    v227 = objc_msgSend_sortedArrayUsingComparator_(v222, v223, v253, v224, v225, v226);

    v228 = [CHTokenizedResultColumn alloc];
    v233 = objc_msgSend_initWithTokenRows_(v228, v229, v227, v230, v231, v232);
    objc_msgSend_addObject_(v180, v234, v233, v235, v236, v237);
  }

  v238 = objc_msgSend_result(v250, v200, v201, v202, v203, v204);
  objc_msgSend_setTokenColumns_(v238, v239, v180, v240, v241, v242);

  v243 = v250;
  return v250;
}

@end