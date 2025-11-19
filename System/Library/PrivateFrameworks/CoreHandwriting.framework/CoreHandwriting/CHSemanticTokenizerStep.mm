@interface CHSemanticTokenizerStep
- (CHSemanticTokenizerStep)initWithWordLanguageModel:(void *)a3 ovsStringChecker:(id)a4;
- (id)process:(id)a3 options:(id)a4;
@end

@implementation CHSemanticTokenizerStep

- (CHSemanticTokenizerStep)initWithWordLanguageModel:(void *)a3 ovsStringChecker:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CHSemanticTokenizerStep;
  v8 = [(CHSemanticTokenizerStep *)&v11 init];
  if (v8)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    mCFObject = v8->_wordLanguageModel.mCFObject;
    v8->_wordLanguageModel.mCFObject = a3;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    objc_storeStrong(&v8->_ovsStringChecker, a4);
  }

  return v8;
}

- (id)process:(id)a3 options:(id)a4
{
  v305 = *MEMORY[0x1E69E9840];
  v263 = a3;
  v261 = a4;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v6 = qword_1EA84DC58;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "CHSemanticTokenizerStep is running", buf, 2u);
  }

  v12 = objc_msgSend_result(v263, v7, v8, v9, v10, v11);
  v266 = objc_msgSend_topTranscription(v12, v13, v14, v15, v16, v17);
  v18 = objc_opt_class();
  v298 = 0;
  v267 = objc_msgSend_tokensRangesForString_outTokenIDs_wordLanguageModel_(v18, v19, v266, &v298, self->_wordLanguageModel.mCFObject, v20);
  v21 = v298;
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
  if (v27 != objc_msgSend_count(v267, v28, v29, v30, v31, v32))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v38 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v44 = objc_msgSend_count(v21, v39, v40, v41, v42, v43);
      v50 = objc_msgSend_count(v267, v45, v46, v47, v48, v49);
      *buf = 134218240;
      *&buf[4] = v44;
      *&buf[12] = 2048;
      *&buf[14] = v50;
      _os_log_impl(&dword_18366B000, v38, OS_LOG_TYPE_ERROR, "wordID count %lu should match wordRangesInString count %lu", buf, 0x16u);
    }
  }

  v51 = objc_msgSend_count(v21, v33, v34, v35, v36, v37);
  if (v51 != objc_msgSend_count(v267, v52, v53, v54, v55, v56))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v62 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      v68 = objc_msgSend_count(v21, v63, v64, v65, v66, v67);
      v74 = objc_msgSend_count(v267, v69, v70, v71, v72, v73);
      *buf = 134218240;
      *&buf[4] = v68;
      *&buf[12] = 2048;
      *&buf[14] = v74;
      _os_log_impl(&dword_18366B000, v62, OS_LOG_TYPE_FAULT, "wordID count %lu should match wordRangesInString count %lu", buf, 0x16u);
    }
  }

  v75 = MEMORY[0x1E695DF90];
  v76 = objc_msgSend_count(v21, v57, v58, v59, v60, v61);
  v268 = objc_msgSend_dictionaryWithCapacity_(v75, v77, v76, v78, v79, v80);
  for (i = 0; i < objc_msgSend_count(v21, v81, v82, v83, v84, v85); ++i)
  {
    v92 = objc_msgSend_objectAtIndex_(v267, v87, i, v89, v90, v91);
    v98 = objc_msgSend_rangeValue(v92, v93, v94, v95, v96, v97);
    v102 = objc_msgSend_substringWithRange_(v266, v99, v98, v99, v100, v101);

    v107 = objc_msgSend_objectAtIndex_(v21, v103, i, v104, v105, v106);
    objc_msgSend_setValue_forKey_(v268, v108, v107, v102, v109, v110);
  }

  if (objc_msgSend_count(v267, v87, v88, v89, v90, v91))
  {
    v265 = objc_msgSend_array(MEMORY[0x1E695DF70], v111, v112, v113, v114, v115);
    v264 = objc_msgSend_array(MEMORY[0x1E695DF70], v116, v117, v118, v119, v120);
    v260 = objc_msgSend_array(MEMORY[0x1E695DF70], v121, v122, v123, v124, v125);
    v297[0] = 0;
    v297[1] = v297;
    v297[2] = 0x2020000000;
    v297[3] = 0;
    v293 = 0;
    v294 = &v293;
    v295 = 0x2020000000;
    v296 = 0;
    v291[0] = 0;
    v291[1] = v291;
    v291[2] = 0x3032000000;
    v291[3] = sub_183996F80;
    v291[4] = sub_183996F90;
    v292 = objc_msgSend_objectAtIndex_(v21, v126, 0, v127, v128, v129);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v300 = sub_18399DEEC;
    v301 = nullsub_77;
    v302 = &unk_183A5AC72;
    v303 = 0;
    v304 = 0;
    v134 = objc_msgSend_objectAtIndex_(v267, v130, v294[3], v131, v132, v133);
    v303 = objc_msgSend_rangeValue(v134, v135, v136, v137, v138, v139);
    v304 = v140;

    v289[0] = 0;
    v289[1] = v289;
    v289[2] = 0x4012000000;
    v289[3] = sub_18399DEEC;
    v289[4] = nullsub_77;
    v289[5] = &unk_183A5AC72;
    v290 = xmmword_1839D0630;
    v283 = 0;
    v284 = &v283;
    v285 = 0x3032000000;
    v286 = sub_183996F80;
    v287 = sub_183996F90;
    v288 = 0;
    v146 = objc_msgSend_transcriptionPaths(v12, v141, v142, v143, v144, v145);
    v152 = objc_msgSend_firstObject(v146, v147, v148, v149, v150, v151);
    v158 = objc_msgSend_tokenColumns(v12, v153, v154, v155, v156, v157);
    v164 = objc_msgSend_count(v158, v159, v160, v161, v162, v163);
    v272[0] = MEMORY[0x1E69E9820];
    v272[1] = 3221225472;
    v272[2] = sub_18399DEFC;
    v272[3] = &unk_1E6DE08D0;
    v277 = v297;
    v278 = buf;
    v279 = &v293;
    v273 = v267;
    v280 = &v283;
    v281 = v291;
    v274 = v21;
    v275 = self;
    v262 = v260;
    v276 = v262;
    v282 = v289;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v12, v165, v152, 0, v164, v272);

    sub_18399D2F8(self, v284[5]);
    objc_msgSend_addObject_(v262, v166, v284[5], v167, v168, v169);
    objc_msgSend_addObject_(v265, v170, v262, v171, v172, v173);
    v179 = objc_msgSend_transcriptionPathScores(v12, v174, v175, v176, v177, v178);
    v185 = objc_msgSend_firstObject(v179, v180, v181, v182, v183, v184);
    objc_msgSend_addObject_(v264, v186, v185, v187, v188, v189);

    for (j = 1; ; ++j)
    {
      v196 = objc_msgSend_transcriptionPaths(v12, v190, v191, v192, v193, v194);
      v202 = j < objc_msgSend_count(v196, v197, v198, v199, v200, v201);

      if (!v202)
      {
        break;
      }

      v208 = objc_msgSend_transcriptionPaths(v12, v203, v204, v205, v206, v207);
      v213 = objc_msgSend_objectAtIndex_(v208, v209, j, v210, v211, v212);

      v219 = objc_msgSend_array(MEMORY[0x1E695DF70], v214, v215, v216, v217, v218);
      v225 = objc_msgSend_tokenColumns(v12, v220, v221, v222, v223, v224);
      v231 = objc_msgSend_count(v225, v226, v227, v228, v229, v230);
      v269[0] = MEMORY[0x1E69E9820];
      v269[1] = 3221225472;
      v269[2] = sub_18399E274;
      v269[3] = &unk_1E6DDEEC0;
      v270 = v268;
      v232 = v219;
      v271 = v232;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v12, v233, v213, 0, v231, v269);

      objc_msgSend_addObject_(v265, v234, v232, v235, v236, v237);
      v243 = objc_msgSend_transcriptionPathScores(v12, v238, v239, v240, v241, v242);
      v248 = objc_msgSend_objectAtIndex_(v243, v244, j, v245, v246, v247);
      objc_msgSend_addObject_(v264, v249, v248, v250, v251, v252);
    }

    v253 = objc_msgSend_result(v263, v203, v204, v205, v206, v207);
    v257 = objc_msgSend_modifiedResultWithBestPathTokens_pathProbabilities_(v253, v254, v265, v264, v255, v256);
    if (v263)
    {
      objc_storeStrong(v263 + 3, v257);
    }

    _Block_object_dispose(&v283, 8);
    _Block_object_dispose(v289, 8);
    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v291, 8);

    _Block_object_dispose(&v293, 8);
    _Block_object_dispose(v297, 8);
  }

  v258 = v263;

  return v263;
}

@end