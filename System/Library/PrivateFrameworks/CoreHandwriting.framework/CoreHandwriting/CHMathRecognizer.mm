@interface CHMathRecognizer
- (CGSize)minimumDrawingSize;
- (CHMathRecognizer)init;
- (CHRecognitionInsight)recordedInsightFromLastRequest;
- (NSArray)locales;
- (NSSet)declaredVariables;
- (id)mathRecognitionResultForDrawing:(id)a3 options:(id)a4 shouldCancel:(id)a5;
- (void)recordInsightWithRequest:(id)a3;
- (void)setDeclaredVariables:(id)a3;
- (void)setLocales:(id)a3;
@end

@implementation CHMathRecognizer

- (CHMathRecognizer)init
{
  v172.receiver = self;
  v172.super_class = CHMathRecognizer;
  v2 = [(CHMathRecognizer *)&v172 init];
  if (v2)
  {
    v3 = [CHEncoderDecoderNetwork alloc];
    v7 = objc_msgSend_initWithModelNames_decoderName_(v3, v4, @"math_encoder.bundle", @"math_decoder.bundle", v5, v6);
    recognitionModel = v2->_recognitionModel;
    v2->_recognitionModel = v7;

    v9 = objc_opt_class();
    v15 = objc_msgSend_definedMathFunctionNameSet(v9, v10, v11, v12, v13, v14);
    objc_msgSend_setDefinedMathFunctionNameSet_(v2->_recognitionModel, v16, v15, v17, v18, v19);

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.CoreHandwriting.mathRecognizerQueue", v20);
    recognitionQueue = v2->_recognitionQueue;
    v2->_recognitionQueue = v21;

    __asm { FMOV            V0.2D, #3.0 }

    v2->_minimumDrawingSize = _Q0;
    v2->_enableCachingIfAvailable = 0;
    v2->_maxRecognitionResultCount = 1;
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v171 = objc_alloc_init(CHMergeColumnsStep);
    v169 = objc_alloc_init(CHRemoveInvalidSegmentationCandidatesStep);
    objc_msgSend_addObject_(v28, v29, v169, v30, v31, v32);
    v168 = objc_alloc_init(CHPruneCandidatesComparingColumnScoresStep);
    objc_msgSend_addObject_(v28, v33, v168, v34, v35, v36);
    v167 = objc_alloc_init(CHPrimeTransliterationStep);
    objc_msgSend_addObject_(v28, v37, v167, v38, v39, v40);
    v166 = objc_alloc_init(CHTransliterateExponentsStep);
    objc_msgSend_addObject_(v28, v41, v166, v42, v43, v44);
    v45 = [CHBracketsMatchingStep alloc];
    v51 = objc_msgSend_codeMap(v2->_recognitionModel, v46, v47, v48, v49, v50);
    v56 = objc_msgSend_initWithCodemap_(v45, v52, v51, v53, v54, v55);

    v165 = v56;
    objc_msgSend_addObject_(v28, v57, v56, v58, v59, v60);
    v164 = objc_alloc_init(CHDecodeMathFunctionStep);
    objc_msgSend_addObject_(v28, v61, v164, v62, v63, v64);
    v163 = objc_alloc_init(CHRemoveVariableCasingAlternativesStep);
    objc_msgSend_addObject_(v28, v65, v163, v66, v67, v68);
    v162 = objc_alloc_init(CHRemoveSubscriptFromVariableStep);
    objc_msgSend_addObject_(v28, v69, v162, v70, v71, v72);
    v161 = objc_alloc_init(CHDotTransliterationStep);
    objc_msgSend_addObject_(v28, v73, v161, v74, v75, v76);
    v170 = objc_alloc_init(CHCombineAlternativesStep);
    objc_msgSend_addObject_(v28, v77, v171, v78, v79, v80);
    objc_msgSend_addObject_(v28, v81, v170, v82, v83, v84);
    v85 = objc_alloc_init(CHInsertPrecedingSpaceForUnitsStep);
    objc_msgSend_addObject_(v28, v86, v85, v87, v88, v89);
    v90 = objc_alloc_init(CHRemoveSpacingAlternativesStep);
    objc_msgSend_addObject_(v28, v91, v90, v92, v93, v94);
    v95 = [CHRemoveInvalidExpressionCandidatesStep alloc];
    v101 = objc_msgSend_codeMap(v2->_recognitionModel, v96, v97, v98, v99, v100);
    v106 = objc_msgSend_initWithCodemap_(v95, v102, v101, v103, v104, v105);

    objc_msgSend_addObject_(v28, v107, v106, v108, v109, v110);
    v111 = [CHTransliterateUnmatchedConfusablesStep alloc];
    v117 = objc_msgSend_codeMap(v2->_recognitionModel, v112, v113, v114, v115, v116);
    v122 = objc_msgSend_initWithCodemap_(v111, v118, v117, v119, v120, v121);

    objc_msgSend_addObject_(v28, v123, v122, v124, v125, v126);
    v127 = objc_alloc_init(CHRemoveInvalidStringCandidatesStep);
    objc_msgSend_addObject_(v28, v128, v127, v129, v130, v131);
    v132 = objc_alloc_init(CHDecorateSpecialSymbolsStep);
    objc_msgSend_addObject_(v28, v133, v132, v134, v135, v136);
    v137 = objc_alloc_init(CHRemoveIdenticalCandidatesStep);
    objc_msgSend_addObject_(v28, v138, v171, v139, v140, v141);
    objc_msgSend_addObject_(v28, v142, v137, v143, v144, v145);
    objc_msgSend_addObject_(v28, v146, v171, v147, v148, v149);
    v150 = [CHMathPostProcessingManager alloc];
    v155 = objc_msgSend_initWithSequence_(v150, v151, v28, v152, v153, v154);
    objc_msgSend_setPostProcessor_(v2, v156, v155, v157, v158, v159);
  }

  return v2;
}

- (id)mathRecognitionResultForDrawing:(id)a3 options:(id)a4 shouldCancel:(id)a5
{
  v234 = *MEMORY[0x1E69E9840];
  v213 = a3;
  v208 = a4;
  v209 = a5;
  if (self)
  {
    activeRecognitionInsight = self->_activeRecognitionInsight;
    self->_activeRecognitionInsight = 0;

    if (self->_nextRecognitionInsightRequest)
    {
      v9 = objc_alloc_init(CHRecognitionInsight);
      v10 = self->_activeRecognitionInsight;
      self->_activeRecognitionInsight = v9;

      objc_msgSend_recordInsightRequest_(self->_activeRecognitionInsight, v11, self->_nextRecognitionInsightRequest, v12, v13, v14);
      nextRecognitionInsightRequest = self->_nextRecognitionInsightRequest;
      self->_nextRecognitionInsightRequest = 0;
    }
  }

  v16 = self->_activeRecognitionInsight;
  v214 = v16;
  if (v16)
  {
    objc_msgSend_recordInputDrawing_(v16, v17, v213, v18, v19, v20);
  }

  v221 = 0;
  v222 = &v221;
  v223 = 0x3032000000;
  v224 = sub_18380DC48;
  v225 = sub_18380DC58;
  v226 = 0;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v21 = qword_1EA84DC88;
  spid = os_signpost_id_generate(v21);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v22 = qword_1EA84DC88;
  v23 = v22;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v23, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CHMathRecognition", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v24 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v24, OS_LOG_TYPE_DEFAULT, "BEGIN CHMathRecognition", buf, 2u);
  }

  recognitionQueue = self->_recognitionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18380DC60;
  block[3] = &unk_1E6DDEC10;
  v211 = v213;
  v216 = v211;
  v217 = self;
  v210 = v208;
  v218 = v210;
  v220 = &v221;
  v26 = v209;
  v219 = v26;
  dispatch_sync(recognitionQueue, block);
  v32 = v222[5];
  if (v32)
  {
    if (v26)
    {
      if (v26[2](v26))
      {
        v33 = 0;
        goto LABEL_48;
      }

      v32 = v222[5];
    }

    v35 = v32;
    v36 = v211;
    v42 = objc_msgSend_count(v35, v37, v38, v39, v40, v41);
    v48 = v35;
    v49 = v48;
    if (v42 >= 2)
    {
      v229 = 0;
      v228 = 0;
      v206 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v43, v44, v45, v46, v47);
      v55 = objc_msgSend_firstObject(v48, v50, v51, v52, v53, v54);
      sub_18380E378(v55, v36, &v229 + 1, &v229, &v228, v206);

      v61 = v206;
      v205 = v61;
      v49 = v48;
      if ((v228 & 1) == 0)
      {
        v49 = v48;
        if (v229 == 1)
        {
          v49 = objc_msgSend_array(MEMORY[0x1E695DF70], v56, v57, v58, v59, v60);
          v62 = MEMORY[0x1E695DF70];
          v68 = objc_msgSend_firstObject(v48, v63, v64, v65, v66, v67);
          v73 = objc_msgSend_arrayWithObject_(v62, v69, v68, v70, v71, v72);

          v207 = HIBYTE(v229);
          v79 = 1;
          v204 = v205;
          while (1)
          {
            if (v79 >= objc_msgSend_count(v48, v74, v75, v76, v77, v78))
            {
              objc_msgSend_addObjectsFromArray_(v49, v80, v73, v82, v83, v84);

              v61 = v204;
              goto LABEL_37;
            }

            buf[0] = 0;
            v227 = 0;
            v85 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v80, v81, v82, v83, v84);
            v90 = objc_msgSend_objectAtIndexedSubscript_(v48, v86, v79, v87, v88, v89);
            sub_18380E378(v90, v36, buf, &v227 + 1, &v227, v85);

            if (v227 & 0x100) == 0 || (v227 & 1) == 0 && ((v207 | buf[0] ^ 1))
            {
              break;
            }

            v100 = objc_msgSend_objectAtIndexedSubscript_(v48, v91, v79, v92, v93, v94);
            objc_msgSend_addObject_(v49, v101, v100, v102, v103, v104);

            if (objc_msgSend_count(v49, v105, v106, v107, v108, v109) == 1)
            {
              v95 = v204;
              v204 = v85;
              goto LABEL_32;
            }

LABEL_33:

            ++v79;
          }

          v95 = objc_msgSend_objectAtIndexedSubscript_(v48, v91, v79, v92, v93, v94);
          objc_msgSend_addObject_(v73, v96, v95, v97, v98, v99);
LABEL_32:

          goto LABEL_33;
        }
      }

LABEL_37:
      v110 = MEMORY[0x1E696AC90];
      v111 = objc_msgSend_strokeCount(v36, v56, v57, v58, v59, v60);
      v115 = objc_msgSend_indexSetWithIndexesInRange_(v110, v112, 0, v111, v113, v114);
      v116 = v61;
      isEqualToIndexSet = objc_msgSend_isEqualToIndexSet_(v61, v117, v115, v118, v119, v120);

      if ((isEqualToIndexSet & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v122 = qword_1EA84DC58;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          v128 = objc_msgSend_strokeCount(v36, v123, v124, v125, v126, v127);
          v134 = objc_msgSend_description(v116, v129, v130, v131, v132, v133);
          *buf = 134218242;
          v231 = v128;
          v232 = 2112;
          v233 = v134;
          _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_ERROR, "Math recognition result doesn't cover all the strokes. Strokes in drawing: %lu, Covergae: %@", buf, 0x16u);
        }
      }
    }

    v135 = v222[5];
    v222[5] = v49;

    v136 = [CHTokenizedMathResult alloc];
    v34 = objc_msgSend_initWithBestPathTokens_(v136, v137, v222[5], v138, v139, v140);
    v146 = objc_msgSend_declaredVariables(self, v141, v142, v143, v144, v145);
    objc_msgSend_setDeclaredVariablesWhileRecognized_(v34, v147, v146, v148, v149, v150);

    if (v214)
    {
      objc_msgSend_recordMathResult_(v214, v27, v34, v29, v30, v31);
    }
  }

  else
  {
    v34 = 0;
  }

  if (!v26)
  {
    v151 = 1;
    v33 = v34;
    goto LABEL_51;
  }

  v33 = v34;
LABEL_48:
  v151 = 0;
  if ((v26[2](v26) & 1) == 0)
  {
LABEL_51:
    objc_msgSend_transformNotationToInternal(v33, v27, v28, v29, v30, v31);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v152 = qword_1EA84DC88;
  v153 = v152;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v152))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v153, OS_SIGNPOST_INTERVAL_END, spid, "CHMathRecognition", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v154 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v154, OS_LOG_TYPE_DEFAULT, "END CHMathRecognition", buf, 2u);
  }

  if (!self->_postProcessor || !v33 || (v151 & 1) == 0 && (v26[2](v26) & 1) != 0)
  {
    v155 = v33;
    goto LABEL_86;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v156 = qword_1EA84DC88;
  v157 = os_signpost_id_generate(v156);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v158 = qword_1EA84DC88;
  v159 = v158;
  v160 = v157 - 1;
  if (v157 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v158))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v159, OS_SIGNPOST_INTERVAL_BEGIN, v157, "CHMathRecognizerPostProcessingBlock", "", buf, 2u);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v161 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v161, OS_LOG_TYPE_DEFAULT, "BEGIN CHMathRecognizerPostProcessingBlock", buf, 2u);
  }

  v162 = [CHMathResultWithContext alloc];
  v168 = objc_msgSend_declaredVariables(self, v163, v164, v165, v166, v167);
  v172 = objc_msgSend_initWithResult_declaredVariables_(v162, v169, v33, v168, v170, v171);

  v178 = objc_msgSend_mutableCopy(v210, v173, v174, v175, v176, v177);
  objc_msgSend_setObject_forKeyedSubscript_(v178, v179, self->_locales, qword_1EA84BB50, v180, v181);
  v185 = objc_msgSend_process_options_(self->_postProcessor, v182, v172, v178, v183, v184);
  v155 = objc_msgSend_result(v185, v186, v187, v188, v189, v190);

  v196 = objc_msgSend_declaredVariables(self, v191, v192, v193, v194, v195);
  objc_msgSend_setDeclaredVariablesWhileRecognized_(v155, v197, v196, v198, v199, v200);

  if (qword_1EA84DC48 == -1)
  {
    v201 = qword_1EA84DC88;
    if (v160 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_79;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v201 = qword_1EA84DC88;
    if (v160 <= 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_79:
      if (os_signpost_enabled(v201))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v201, OS_SIGNPOST_INTERVAL_END, v157, "CHMathRecognizerPostProcessingBlock", "", buf, 2u);
      }
    }
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v202 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v202, OS_LOG_TYPE_DEFAULT, "END CHMathRecognizerPostProcessingBlock", buf, 2u);
  }

LABEL_86:
  _Block_object_dispose(&v221, 8);

  return v155;
}

- (NSSet)declaredVariables
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18380DC48;
  v9 = sub_18380DC58;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18380E980;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18380E77C(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setDeclaredVariables:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18380EA40;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_18380E77C(self, v6);
}

- (NSArray)locales
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18380DC48;
  v9 = sub_18380DC58;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18380EB68;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18380E77C(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setLocales:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18380EC28;
  v6[3] = &unk_1E6DDC818;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_18380E77C(self, v6);
}

- (CGSize)minimumDrawingSize
{
  width = self->_minimumDrawingSize.width;
  height = self->_minimumDrawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)recordInsightWithRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_18380EDB0;
  v6[3] = &unk_1E6DDC818;
  v7 = v4;
  v8 = self;
  v5 = v4;
  sub_18380E77C(self, v6);
}

- (CHRecognitionInsight)recordedInsightFromLastRequest
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_18380DC48;
  v9 = sub_18380DC58;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_18380EED0;
  v4[3] = &unk_1E6DDC7F0;
  v4[4] = self;
  v4[5] = &v5;
  sub_18380E77C(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end